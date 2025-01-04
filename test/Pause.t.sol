// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";
import {OwnableCallerNotTheOwner} from "@erc725/smart-contracts/contracts/errors.sol";

/// @title Testing Pausable functionalities
// ------------------------
contract Pausable is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken();
    }

    function test_onlyContractOwnerCanPause(address anyAddress) public {
        vm.assume(anyAddress != tokenContractOwner);
        vm.assume(anyAddress != proxyAdmin);

        vm.expectRevert(abi.encodeWithSelector(OwnableCallerNotTheOwner.selector, anyAddress));
        vm.prank(anyAddress);
        sLyxToken.pause();
    }

    function test_shouldPauseContractWhenOwnerCallPause() public {
        assertEq(sLyxToken.paused(), false);

        vm.prank(tokenContractOwner);
        sLyxToken.pause();

        assertEq(sLyxToken.paused(), true);
    }

    function test_cannotCallPauseAgainWhenContractIsAlreadyPaused() public {
        assertEq(sLyxToken.paused(), false);

        vm.prank(tokenContractOwner);
        sLyxToken.pause();
        assertEq(sLyxToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(tokenContractOwner);
        sLyxToken.pause();
    }

    function test_onlyOwnerCanUnpauseContract(address anyAddress) public {
        vm.assume(anyAddress != tokenContractOwner);
        vm.assume(anyAddress != proxyAdmin);

        assertEq(sLyxToken.paused(), false);

        vm.prank(tokenContractOwner);
        sLyxToken.pause();

        assertEq(sLyxToken.paused(), true);

        vm.expectRevert(abi.encodeWithSelector(OwnableCallerNotTheOwner.selector, anyAddress));
        vm.prank(anyAddress);
        sLyxToken.unpause();
    }

    function test_shouldUnpauseContractWhenOwnerCallUnpause() public {
        assertEq(sLyxToken.paused(), false);

        vm.prank(tokenContractOwner);
        sLyxToken.pause();

        assertEq(sLyxToken.paused(), true);

        vm.prank(tokenContractOwner);
        sLyxToken.unpause();
        assertEq(sLyxToken.paused(), false);
    }

    function test_cannotCallUnpauseIfContractIsAlreadyUnpause() public {
        assertEq(sLyxToken.paused(), false);

        vm.expectRevert("Pausable: not paused");
        vm.prank(tokenContractOwner);
        sLyxToken.unpause();
    }

    function test_cannotMintSLYXTokensIfContractIsPaused() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 depositAmount = 100 ether;

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        assertEq(sLyxToken.paused(), false);
        vm.prank(tokenContractOwner);
        sLyxToken.pause();
        assertEq(sLyxToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), depositAmount, "");
    }

    function test_cannotBurnSLYXokensIfContractIsPaused() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 depositAmount = 100 ether;

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.prank(alice);
        vault.transferStake(address(sLyxToken), depositAmount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), depositAmount);

        assertEq(sLyxToken.balanceOf(alice), depositAmount);

        assertEq(sLyxToken.paused(), false);
        vm.prank(tokenContractOwner);
        sLyxToken.pause();
        assertEq(sLyxToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(alice);
        sLyxToken.burn(alice, depositAmount, "");
    }
}
