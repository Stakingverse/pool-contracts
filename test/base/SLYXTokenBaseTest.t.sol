// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Test helpers
import {Test, console} from "forge-std/Test.sol";

// Testing + Setups
import {IVault, StakingverseVault} from "../../src/StakingverseVault.sol";
import {MockDepositContract} from "../mocks/MockDepositContract.sol";
import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

// Libraries
import {LSP2Utils} from "@lukso/lsp2-contracts/contracts/LSP2Utils.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

// Constants
import {_LSP17_EXTENSION_PREFIX} from "@lukso/lsp17contractextension-contracts/contracts/LSP17Constants.sol";

// Contracts to test
import {SLYXToken} from "../../src/SLYXToken.sol";

abstract contract SLYXTokenBaseTest is Test /*, FoundryRandom */ {
    /// @dev There is a rounding error of 1 Wei accepted as loss.
    /// https://github.com/Stakingverse/pool-contracts/blob/main/src/StakingverseVault.sol#L283
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
    StakingverseVault vaultImplementation;
    StakingverseVault vault;

    // SLYXToken implementation + proxy
    SLYXToken sLyxTokenImplementation;
    SLYXToken sLyxToken;

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

    function _setUpSLYXToken() internal {
        depositContract = new MockDepositContract();

        proxyAdmin = address(11);

        vaultOwner = address(12);
        vaultOperator = address(13);
        vaultOracle = address(14);
        vaultFeeRecipient = address(15);
        tokenContractOwner = address(16);

        // Vault contracts (proxy and implementation) are already deployed on mainnet
        // but we cannot mock these addresses in Foundry tests.
        // The cheatcode vm.etch(...) set the bytecode, but does not initialize the state variables of the vault proxy,
        // (logic contract, admin, etc...) so any call to the proxy will fail.
        vaultImplementation = new StakingverseVault();

        bytes memory initializeCalldata =
            abi.encodeCall(StakingverseVault.initialize, (vaultOwner, vaultOperator, depositContract));

        // Therefore, we need to deploy the new Vault contracts in the test suite...
        vault = StakingverseVault(
            payable(new TransparentUpgradeableProxy(address(vaultImplementation), proxyAdmin, initializeCalldata))
        );

        // ...and mock the `implementation()` function to force returning the address of the implementation this proxy is linked to.
        vm.mockCall(
            address(vault), abi.encodeWithSelector(IProxy.implementation.selector), abi.encode(vaultImplementation)
        );

        // configure the vault

        vm.startPrank(vaultOperator);
        vault.enableOracle(vaultOracle, true);
        vault.setFee(10_000);
        vault.setFeeRecipient(vaultFeeRecipient);
        vault.setDepositLimit(320 ether);
        vm.stopPrank();

        sLyxTokenImplementation = new SLYXToken();

        sLyxToken =
            SLYXToken(payable(new TransparentUpgradeableProxy(address(sLyxTokenImplementation), proxyAdmin, "")));

        sLyxToken.initialize(tokenContractOwner, vault);
    }

    function _depositAndClaimAllAsSLYXTokens(address user, uint256 depositAmount, bytes memory optionalData)
        internal
        returns (uint256 userSLyxBalance)
    {
        // prevent `_toShare` in the Vault to return 0
        vm.assume(depositAmount >= 1_000 wei);

        hoax(user, depositAmount);
        vault.deposit{value: depositAmount}(user);

        uint256 stakedAmount = vault.balanceOf(user);
        vm.prank(user);
        vault.transferStake(address(sLyxToken), stakedAmount, optionalData);

        return sLyxToken.balanceOf(user);
    }

    function _toShares(uint256 amount) internal view returns (uint256) {
        return Math.mulDiv(amount, vault.totalShares(), vault.totalAssets()) - VAULT_ROUNDING_ERROR_LOSS;
    }
}
