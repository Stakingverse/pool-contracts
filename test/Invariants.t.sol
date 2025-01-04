// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ITransparentUpgradeableProxy as IProxy} from
    "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
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

        assertEq(name, "Stakingverse Staked LYX (sLYX)");
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
        _depositAndClaimAllAsSLYXTokens({user: to, depositAmount: amount, optionalData: ""});

        uint256 postSupply = sLyxToken.totalSupply();
        uint256 toBalance = sLyxToken.balanceOf(to);

        assertEq(postSupply, preSupply + amount, "Total supply did not increase correctly after minting");
        assertEq(postSupply, preSupply + amount, "Total supply did not increase correctly after minting");

        assertEq(toBalance, amount, "Recipient balance incorrect after minting");
        assertEq(toBalance, amount, "Recipient balance incorrect after minting");
    }

    function invariant_sharesShouldAlwaysBeLowerThanStakedLYXandSLYX() public {
        uint256 amount = 100 ether;
        address alice = makeAddr("alice");
        hoax(alice, amount);
        vault.deposit{value: amount}(alice);

        assertEq(vault.sharesOf(alice), amount - _MINIMUM_REQUIRED_SHARES);
        assertEq(vault.balanceOf(alice), amount - _MINIMUM_REQUIRED_SHARES);
        assertEq(vault.balanceOf(alice), vault.sharesOf(alice));

        // issue rewards to change ratio of shares to staked tokens
        uint256 rewards = 100 ether;
        vm.deal(address(vault), address(vault).balance + rewards);

        vm.prank(vaultOracle);
        vault.rebalance();

        // shares should remain the same
        assertEq(vault.sharesOf(alice), amount - _MINIMUM_REQUIRED_SHARES);

        // shares should be lower than the balance
        assertLt(vault.sharesOf(alice), vault.balanceOf(alice));

        uint256 aliceBalance = vault.balanceOf(alice);
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), aliceBalance, "");
        assertEq(vault.balanceOf(address(sLyxToken)), aliceBalance);
        assertEq(sLyxToken.balanceOf(alice), aliceBalance);

        // sLYX supply = alice balance of sLYX
        assertEq(sLyxToken.totalSupply(), sLyxToken.balanceOf(alice));

        // sLYX supply != sLYX Token contract shares in vault
        // The total number of sLYX minted should be greater than the number of shares
        assertLt(vault.sharesOf(address(sLyxToken)), sLyxToken.totalSupply());

        // Should pass, and not revert (due to incorrect accounting due to rewards shares != staked tokens)
        vm.prank(alice);
        sLyxToken.burn(alice, aliceBalance, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(sLyxToken.totalSupply(), 0);
        assertEq(vault.sharesOf(address(sLyxToken)), 0);
        assertEq(vault.balanceOf(alice), aliceBalance);
        assertEq(vault.sharesOf(alice), amount - _MINIMUM_REQUIRED_SHARES);
    }

    function test_OnlyFirstUserSLYXValueHasIncreasedIf2ndUserHasDepositedAfterRewards() public makeInitialDeposit {
        // First user deposits 100 LYX + mints its shares as sLYX (= 100 sLYX)
        address alice = makeAddr("alice");
        uint256 aliceSLyxBalance = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");
        assertEq(aliceSLyxBalance, 100 ether);
        assertEq(vault.balanceOf(address(sLyxToken)), 100 ether);

        assertEq(sLyxToken.getNativeTokenValue(aliceSLyxBalance), 100 ether);
        assertEq(sLyxToken.getSLYXTokenValue(100 ether), aliceSLyxBalance);

        // simulate distributing rewards (fee is set 10%)
        vm.deal(address(vault), address(vault).balance + 10 ether);
        vm.prank(vaultOracle);
        vault.rebalance();

        assertEq(address(vault).balance, 110 ether + _VAULT_INITIAL_DEPOSIT);
        assertEq(
            vault.balanceOf(address(sLyxToken)),
            109 ether - 90 // TODO: would be good to clarify this calculation (108999999999999999910)
        );

        uint256 aliceSLYXValueInLYX = sLyxToken.getNativeTokenValue(aliceSLyxBalance);

        assertEq(aliceSLYXValueInLYX, 109 ether - 90);
        assertEq(sLyxToken.getSLYXTokenValue(aliceSLYXValueInLYX), aliceSLyxBalance);

        // 2nd user deposits 100 LYX + mints its shares as sLYX
        address bob = makeAddr("bob");
        uint256 bobSlyxBalance = _depositAndClaimAllAsSLYXTokens(bob, 100 ether, "");
        uint256 expectedBobShares = SLYXTokenBaseTest._toShares(100 ether);
        assertEq(bobSlyxBalance, expectedBobShares); // TODO: we need a `toShares()` function in the Vault
        assertEq(
            vault.balanceOf(address(sLyxToken)),
            200 ether + 9 ether - 90 - 2 wei // TODO: clarify this calculation
        );

        uint256 bobSLYXValueInLYX = sLyxToken.getNativeTokenValue(bobSlyxBalance);
        assertEq(bobSLYXValueInLYX, 100 ether - 2 wei); // TODO: clarify this rounding error
        assertEq(sLyxToken.getSLYXTokenValue(bobSLYXValueInLYX), bobSlyxBalance - 1 wei);
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
