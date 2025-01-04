// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ITransparentUpgradeableProxy as IProxy} from
    "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

// Testing
import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";

// Constants
import {
    _LSP4_TOKEN_TYPE_TOKEN,
    _LSP4_TOKEN_NAME_KEY,
    _LSP4_TOKEN_SYMBOL_KEY,
    _LSP4_TOKEN_TYPE_KEY
} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

/// @title Foundry invariant tests
// -----------------------------------------------------
contract Invariants is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken({setDepositExtension: false});
    }

    function invariant_metadataIsConstant() public view {
        // We need to re-encode in memory, as in the ERC725Y storage, strings are not stored as [string.length][string]
        bytes memory encodedName = abi.encode(sLyxToken.getData(_LSP4_TOKEN_NAME_KEY));
        string memory name = abi.decode(encodedName, (string));

        bytes memory encodedSymbol = abi.encode(sLyxToken.getData(_LSP4_TOKEN_SYMBOL_KEY));
        string memory symbol = abi.decode(encodedSymbol, (string));

        uint256 tokenType = abi.decode(sLyxToken.getData(_LSP4_TOKEN_TYPE_KEY), (uint256));
        uint256 decimals = sLyxToken.decimals();

        assertEq(name, "Staked LYX");
        assertEq(symbol, "sLYX");
        assertEq(tokenType, _LSP4_TOKEN_TYPE_TOKEN);
        assertEq(decimals, 18);
    }

    function testInvariant_mintingAffectsTotalSupplyAndBalance(address to, uint256 amount)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        vm.assume(amount <= 1_000_000 ether - _VAULT_INITIAL_DEPOSIT);

        assumeNotPrecompile(to);
        vm.assume(to != address(0));
        vm.assume(to != address(sLyxToken));
        vm.assume(to != address(sLyxToken.stakingVault()));
        vm.assume(to != address(vaultImplementation));

        uint256 preSupply = sLyxToken.totalSupply();

        _depositAndClaimAllAsSLYXTokens({user: to, depositAmount: amount, optionalData: ""});

        uint256 postSupply = sLyxToken.totalSupply();
        uint256 toBalance = sLyxToken.balanceOf(to);

        assertEq(postSupply, preSupply + amount, "Total supply did not increase correctly after minting");

        assertEq(toBalance, amount, "Recipient balance incorrect after minting");
    }

    function test_sharesOfSLYXTokenContractIsEqualToTotalSLYXMinted() public makeInitialDeposit {
        // deposit 70 LYX
        address depositor1 = makeAddr("depositor1");
        hoax(depositor1, 70 ether);
        vault.deposit{value: 70 ether}(depositor1);

        // deposit other 2 LYX
        address depositor2 = makeAddr("depositor2");
        hoax(depositor2, 2 ether);
        vault.deposit{value: 2 ether}(depositor2);

        // depositor1 transfers 20 LYX to LST contract to mint sLYX
        vm.prank(depositor1);
        vault.transferStake(address(sLyxToken), 20 ether, "");

        // the invariant `sharesOf LST contract == totalsLYXMinted` is still valid
        assertEq(vault.sharesOf(address(sLyxToken)), sLyxToken.totalSupply());

        // malicious user force sending few LYX to the Vault using selfdestruct
        // not triggering receive() and no triggering deposit() to try to break the invariant
        vm.deal(address(vault), address(vault).balance + 200000 gwei);

        vm.prank(vaultOracle);
        vault.rebalance();

        // depositor2 transfers 1 LYX to LST contract
        vm.prank(depositor2);
        vault.transferStake(address(sLyxToken), 1 ether, "");

        // Invariant still holds
        assertEq(vault.sharesOf(address(sLyxToken)), sLyxToken.totalSupply());
    }
}
