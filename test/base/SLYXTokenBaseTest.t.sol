// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Test Helpers
import {Test, console} from "forge-std/Test.sol";

// Testing + Setups
import {IVault, Vault} from "UniversalPage-contracts/src/pool/Vault.sol";
import {MockDepositContract} from "../mocks/MockDepositContract.sol";
import {TransparentUpgradeableProxy, ITransparentUpgradeableProxy as IProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

// Libraries
import {LSP2Utils} from "@lukso/lsp2-contracts/contracts/LSP2Utils.sol";

// Constants
import {_LSP17_EXTENSION_PREFIX} from "@lukso/lsp17contractextension-contracts/contracts/LSP17Constants.sol";

// Contracts to test
import {SLYXToken} from "../../src/SLYXToken.sol";
import {SLYXTokenAutoMintExtension} from "../../src/SLYXTokenAutoMintExtension.sol";

abstract contract SLYXTokenBaseTest is Test /*, FoundryRandom */ {
    /// @dev There is a rounding error of 1 Wei accepted as loss in Universal.Page vault contract.
    /// https://github.com/Universal-Page/contracts/blob/af4e4f9ea90620226c1aea2d225e73a7800782fc/src/pool/Vault.sol#L278-L280
    uint256 internal constant VAULT_ROUNDING_ERROR_LOSS = 1 wei;

    // from the vault
    uint256 internal constant _MINIMUM_REQUIRED_SHARES = 1e3;
    uint256 internal constant _VAULT_INITIAL_DEPOSIT = 1_000 wei;
    uint32 internal constant _VAULT_FEE_BASIS = 100_000;
    uint256 internal constant _MAX_VALIDATORS_SUPPORTED = 1_000_000;

    uint256 internal constant DEPOSIT_AMOUNT = 32 ether;

    MockDepositContract depositContract;

    address proxyAdmin;

    address vaultOwner;
    address vaultOperator;
    address vaultOracle;
    address vaultFeeRecipient;
    address tokenContractOwner;

    // implementation + proxy
    Vault vaultImplementation;
    Vault vault;

    // SLYXToken implementation + proxy
    SLYXToken sLyxTokenImplementation;
    SLYXToken sLyxToken;

    address autoMintExtension;

    modifier beforeTest(uint256 depositLimit) {
        vm.assume(depositLimit < _MAX_VALIDATORS_SUPPORTED * 32 ether);

        vm.startPrank(vaultOwner);

        vault.setDepositLimit(depositLimit);
        vault.setFee(10_000);
        vault.setFeeRecipient(vaultFeeRecipient);

        vault.enableOracle(vaultOracle, true);

        vm.stopPrank();

        // run the test
        _;
    }

    /// @dev Make a first deposit to prevent test from failing as
    /// as the vault burns the minimum required shares for the first depositor
    /// https://github.com/Universal-Page/contracts/blob/af4e4f9ea90620226c1aea2d225e73a7800782fc/src/pool/Vault.sol#L311-L319
    ///
    /// @dev This case will never happen in production, as the Vault already accepted some deposits
    modifier makeInitialDeposit() {
        address initialDepositor = makeAddr("initialDepositor");
        vm.deal(initialDepositor, _VAULT_INITIAL_DEPOSIT);
        vm.prank(initialDepositor);
        vault.deposit{value: _VAULT_INITIAL_DEPOSIT}(initialDepositor);
        _;
    }

    function _setUpSLYXToken(bool setDepositExtension) internal {
        depositContract = new MockDepositContract();

        proxyAdmin = address(1);

        vaultOwner = address(2);
        vaultOperator = address(3);
        vaultOracle = address(4);
        vaultFeeRecipient = address(5);
        tokenContractOwner = address(6);

        // Vault contracts (proxy and implementation) are already deployed on mainnet
        // but we cannot mock these addresses in Foundry tests.
        // The cheatcode vm.etch(...) set the bytecode, but does not initialize the state variables of the vault proxy,
        // (logic contract, admin, etc...) so any call to the proxy will fail.
        // Therefore, we need to deploy the new Vault contracts in the test suite.
        vaultImplementation = new Vault();

        bytes memory initializeCalldata = abi.encodeCall(
            Vault.initialize,
            (vaultOwner, vaultOperator, depositContract)
        );

        vault = Vault(
            payable(
                new TransparentUpgradeableProxy(
                    address(vaultImplementation),
                    proxyAdmin,
                    initializeCalldata
                )
            )
        );

        vm.mockCall(
            address(vault),
            abi.encodeWithSelector(IProxy.implementation.selector),
            abi.encode(vaultImplementation)
        );

        vm.startPrank(vaultOperator);
        vault.enableOracle(vaultOracle, true);
        vault.setFee(10_000);
        vault.setFeeRecipient(vaultFeeRecipient);
        vault.setDepositLimit(320 ether);
        vm.stopPrank();

        sLyxTokenImplementation = new SLYXToken();

        sLyxToken = SLYXToken(
            payable(
                new TransparentUpgradeableProxy(
                    address(sLyxTokenImplementation),
                    proxyAdmin,
                    ""
                )
            )
        );

        sLyxToken.initialize(tokenContractOwner, vault);

        if (setDepositExtension) {
            autoMintExtension = address(
                new SLYXTokenAutoMintExtension(vault, sLyxToken)
            );

            bytes32 extensionDataKeyForDeposit = LSP2Utils.generateMappingKey(
                _LSP17_EXTENSION_PREFIX,
                IVault.deposit.selector
            );

            // set extension for `deposit(address)` selector, to allow minting sLYX tokens immediately while staking
            vm.prank(tokenContractOwner);
            sLyxToken.setData(
                extensionDataKeyForDeposit,
                abi.encodePacked(autoMintExtension)
            );
        }
    }

    function _depositAndClaimAllAsSLYXTokens(
        address user,
        uint256 depositAmount,
        bytes memory optionalData
    ) internal returns (uint256 sLyxTokenContractBalanceInVault) {
        // prevent `_toShare` in the Vault to return 0
        vm.assume(depositAmount >= 1_000 wei);

        hoax(user, depositAmount);
        vault.deposit{value: depositAmount}(user);

        uint256 shares = vault.balanceOf(user);
        vm.prank(user);
        vault.transferStake(address(sLyxToken), shares, optionalData);

        return sLyxToken.balanceOf(user);
    }
}
