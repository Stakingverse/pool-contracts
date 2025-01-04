// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";
import {Vault} from "UniversalPage-contracts/src/pool/Vault.sol";
import {LSP7TokenContractCannotHoldValue} from "@lukso/lsp7-contracts/contracts/LSP7Errors.sol";

/// @title Testing Withdraw related to burning
// --------------------------------------
contract Withdraw is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken({setDepositExtension: false});
    }

    function test_depositConvertTransferBurnWithdraw()
        public
        beforeTest(1_000_000 ether)
    {
        address alice = makeAddr("alice");
        address bob = makeAddr("bob");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 shareBalance = vault.balanceOf(alice);
        vault.transferStake(address(sLyxToken), shareBalance, "");
        sLyxToken.transfer(alice, bob, shareBalance, true, "");

        vm.stopPrank();

        vm.startPrank(bob);
        sLyxToken.burn(bob, shareBalance, "");

        uint256 bobSharesBalance = vault.balanceOf(bob);
        assertEq(bobSharesBalance, shareBalance);

        uint256 bobLyxBalanceBefore = bob.balance;
        vault.withdraw(bobSharesBalance, bob);

        uint256 bobLyxBalanceAfter = bob.balance;
        assertEq(bobLyxBalanceAfter, bobLyxBalanceBefore + bobSharesBalance);

        vm.stopPrank();
    }

    function test_cannotWithdrawIfHoldingSLYXTokens()
        public
        beforeTest(1_000_000 ether)
    {
        address alice = makeAddr("alice");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 aliceStake = vault.balanceOf(alice);

        vault.transferStake(address(sLyxToken), aliceStake, "");

        bytes memory expectedRevertError = abi.encodeWithSelector(
            Vault.InsufficientBalance.selector,
            0,
            aliceStake
        );

        vm.expectRevert(expectedRevertError);
        vault.withdraw(aliceStake, alice);
    }

    function test_cannotWithdrawWithSLYXTokenContractAddressAsBeneficiary()
        public
        beforeTest(1_000_000 ether)
    {
        address alice = makeAddr("alice");

        startHoax(alice, 100 ether);

        vault.deposit{value: 100 ether}(alice);
        uint256 aliceStake = vault.balanceOf(alice);

        bytes memory expectedRevertError = abi.encodeWithSelector(
            Vault.WithdrawalFailed.selector,
            alice,
            address(sLyxToken),
            aliceStake
        );

        vm.expectRevert(expectedRevertError);
        vault.withdraw(aliceStake, address(sLyxToken));
    }
}
