// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";
import {Vault} from "../src/Vault.sol";
import {LSP7TokenContractCannotHoldValue} from "@lukso/lsp7-contracts/contracts/LSP7Errors.sol";

/// @title Testing Withdraw related to burning
// --------------------------------------
contract Withdraw is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function test_depositConvertTransferBurnWithdraw() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address bob = makeAddr("bob");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 shareBalance = vault.balanceOf(alice);
        vault.transferStake(address(liquidStakingToken), shareBalance, "");
        liquidStakingToken.transfer(alice, bob, shareBalance, true, "");

        vm.stopPrank();

        vm.startPrank(bob);
        liquidStakingToken.burn(bob, shareBalance, "");

        uint256 bobSharesBalance = vault.balanceOf(bob);
        assertEq(bobSharesBalance, shareBalance);

        uint256 bobLyxBalanceBefore = bob.balance;
        vault.withdraw(bobSharesBalance, bob);

        uint256 bobLyxBalanceAfter = bob.balance;
        assertEq(bobLyxBalanceAfter, bobLyxBalanceBefore + bobSharesBalance);

        vm.stopPrank();
    }

    function test_cannotWithdrawIfHavingLST() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 aliceStake = vault.balanceOf(alice);

        vault.transferStake(address(liquidStakingToken), aliceStake, "");

        bytes memory expectedRevertError = abi.encodeWithSelector(Vault.InsufficientBalance.selector, 0, aliceStake);

        vm.expectRevert(expectedRevertError);
        vault.withdraw(aliceStake, alice);
    }

    function test_cannotWithdrawWithLSTContractAddressAsBeneficiary() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 aliceStake = vault.balanceOf(alice);

        bytes memory expectedRevertError =
            abi.encodeWithSelector(Vault.WithdrawalFailed.selector, alice, address(liquidStakingToken), aliceStake);

        vm.expectRevert(expectedRevertError);
        vault.withdraw(aliceStake, address(liquidStakingToken));
    }
}
