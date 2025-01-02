// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";
import {OwnableCallerNotTheOwner} from "@erc725/smart-contracts/contracts/errors.sol";

/// @title Testing Pausable functionalities
// ------------------------
contract Pausable is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function test_onlyContractOwnerCanPause(address anyAddress) public {
        vm.assume(anyAddress != tokenContractOwner);
        vm.assume(anyAddress != proxyAdmin);

        vm.expectRevert(
            abi.encodeWithSelector(
                OwnableCallerNotTheOwner.selector,
                anyAddress
            )
        );
        vm.prank(anyAddress);
        liquidStakingToken.pause();
    }

    function test_shouldPauseContractWhenOwnerCallPause() public {
        assertEq(liquidStakingToken.paused(), false);

        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();

        assertEq(liquidStakingToken.paused(), true);
    }

    function test_cannotCallPauseAgainWhenContractIsAlreadyPaused() public {
        assertEq(liquidStakingToken.paused(), false);

        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();
        assertEq(liquidStakingToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();
    }

    function test_onlyOwnerCanUnpauseContract(address anyAddress) public {
        vm.assume(anyAddress != tokenContractOwner);
        vm.assume(anyAddress != proxyAdmin);

        assertEq(liquidStakingToken.paused(), false);

        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();

        assertEq(liquidStakingToken.paused(), true);

        vm.expectRevert(
            abi.encodeWithSelector(
                OwnableCallerNotTheOwner.selector,
                anyAddress
            )
        );
        vm.prank(anyAddress);
        liquidStakingToken.unpause();
    }

    function test_shouldUnpauseContractWhenOwnerCallUnpause() public {
        assertEq(liquidStakingToken.paused(), false);

        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();

        assertEq(liquidStakingToken.paused(), true);

        vm.prank(tokenContractOwner);
        liquidStakingToken.unpause();
        assertEq(liquidStakingToken.paused(), false);
    }

    function test_cannotCallUnpauseIfContractIsAlreadyUnpause() public {
        assertEq(liquidStakingToken.paused(), false);

        vm.expectRevert("Pausable: not paused");
        vm.prank(tokenContractOwner);
        liquidStakingToken.unpause();
    }

    function test_cannotMintLSTTokensIfContractIsPaused()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 depositAmount = 100 ether;

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        assertEq(liquidStakingToken.paused(), false);
        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();
        assertEq(liquidStakingToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(alice);
        vault.transferStake(address(liquidStakingToken), depositAmount, "");
    }

    function test_cannotBurnLSTokensIfContractIsPaused()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 depositAmount = 100 ether;

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vm.prank(alice);
        vault.transferStake(address(liquidStakingToken), depositAmount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), depositAmount);

        assertEq(liquidStakingToken.balanceOf(alice), depositAmount);

        assertEq(liquidStakingToken.paused(), false);
        vm.prank(tokenContractOwner);
        liquidStakingToken.pause();
        assertEq(liquidStakingToken.paused(), true);

        vm.expectRevert("Pausable: paused");
        vm.prank(alice);
        liquidStakingToken.burn(alice, depositAmount, "");
    }
}
