// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";

// Helpers
import {ILSP7DigitalAsset} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";
import {IVault} from "../src/Vault.sol";

// Errors to tests
import {
    LSP7AmountExceedsBalance, LSP7AmountExceedsAuthorizedAmount
} from "@lukso/lsp7-contracts/contracts/LSP7Errors.sol";
import {Vault} from "../src/Vault.sol";

/// @title Testing Token `burn(address,uint256,bytes) function
// -----------------------------------------------------------
contract TokenBurn is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function test_cannotBurnIfNoTokensWereMintedForUser(uint256 amount, address user) public {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), shares);

        vm.assume(user != alice);
        vm.assume(user != address(0));
        vm.assume(amount > 0);

        vm.prank(user);
        vm.expectRevert();
        liquidStakingToken.burn(user, amount, "");
    }

    function test_cannotBurnZeroLST() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), shares);

        vm.prank(alice);
        vm.expectRevert();
        liquidStakingToken.burn(alice, 0, "");
    }

    function test_emitRightEventsAfterBurningTokens() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");
        bytes memory burnData = "Burning LST Tokens!";

        // Emit the events we expect to see.
        vm.expectEmit(true, true, true, true, address(liquidStakingToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: alice,
            from: alice,
            to: address(0),
            amount: shares,
            force: false, // not used when burning
            data: burnData
        });

        vm.expectEmit(true, true, false, false, address(vault));
        emit IVault.StakeTransferred({from: address(liquidStakingToken), to: alice, amount: shares, data: burnData});

        vm.prank(alice);
        liquidStakingToken.burn(alice, shares, burnData);
    }

    function test_shouldReTransferStakeToUserAfterBurningAllTokens() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceBalance = vault.balanceOf(alice);

        assertEq(aliceBalance, 100 ether - _MINIMUM_REQUIRED_SHARES);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vault.transferStake(address(liquidStakingToken), aliceBalance, "");

        uint256 lstSharesAmount = vault.balanceOf(address(liquidStakingToken));

        assertEq(lstSharesAmount, aliceBalance);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(liquidStakingToken.balanceOf(alice), aliceBalance);

        liquidStakingToken.burn(alice, aliceBalance, "");

        assertEq(liquidStakingToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(alice), aliceBalance);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vm.stopPrank();
    }

    function test_MintAllLSTAndReTransferStakePartiallyAfterBurningSomeTokens()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceStake = vault.balanceOf(alice);

        assertEq(aliceStake, 100 ether);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vault.transferStake(address(liquidStakingToken), aliceStake, "");

        uint256 lstSharesAmount = vault.balanceOf(address(liquidStakingToken));

        assertEq(lstSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(liquidStakingToken.balanceOf(alice), aliceStake);

        uint256 burnAmount = 30 ether;
        liquidStakingToken.burn(alice, burnAmount, "");

        assertEq(liquidStakingToken.balanceOf(alice), aliceStake - burnAmount);
        assertEq(vault.balanceOf(alice), burnAmount);
        assertEq(vault.balanceOf(address(liquidStakingToken)), aliceStake - burnAmount);
    }

    function test_Stake100LYXMint50LYXBurn30LYX() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address user = makeAddr("user");

        vm.deal(user, 100 ether);
        vm.startPrank(user);

        vault.deposit{value: 100 ether}(user);

        uint256 userStakeBefore = vault.balanceOf(user);

        assertGt(userStakeBefore, 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);
        assertEq(liquidStakingToken.totalSupply(), 0);

        uint256 amountToMakeLiquid = 50 ether;

        vault.transferStake(address(liquidStakingToken), amountToMakeLiquid, "");
        assertEq(liquidStakingToken.totalSupply(), amountToMakeLiquid);

        uint256 lstSharesAmount = vault.balanceOf(address(liquidStakingToken));
        uint256 userStakeAfterMinting = vault.balanceOf(user);

        assertEq(lstSharesAmount, amountToMakeLiquid);
        assertEq(userStakeAfterMinting, userStakeBefore - amountToMakeLiquid);
        assertEq(liquidStakingToken.balanceOf(user), amountToMakeLiquid);

        uint256 burnAmount = 30 ether;
        uint256 expectedLyxTransferred = liquidStakingToken.getNativeTokenValue(burnAmount);
        liquidStakingToken.burn(user, burnAmount, "");

        assertEq(liquidStakingToken.totalSupply(), amountToMakeLiquid - burnAmount);
        assertEq(liquidStakingToken.balanceOf(user), amountToMakeLiquid - burnAmount);

        uint256 userStakeAfterBurningLST = vault.balanceOf(user);
        assertEq(userStakeAfterBurningLST, userStakeAfterMinting + burnAmount);
        // since no rewards were distributed, it should be the equivalent
        assertEq(userStakeAfterBurningLST, userStakeAfterMinting + expectedLyxTransferred);
        assertEq(vault.balanceOf(address(liquidStakingToken)), userStakeAfterMinting - burnAmount);
    }

    /// forge-config: default.fuzz.runs = 5000
    function test_cannotConvertBackLSTToLyxMoreThanTokenBalance(uint256 depositAmount, uint256 sLyxAmount)
        public
        makeInitialDeposit
        beforeTest(1_000_000 ether)
    {
        vm.assume(depositAmount >= _VAULT_INITIAL_DEPOSIT);
        vm.assume(depositAmount <= 1_000 ether);
        vm.assume(sLyxAmount > depositAmount);

        address alice = makeAddr("alice");

        uint256 stake = _depositAndClaimAllAsLiquidStakingTokens(alice, depositAmount, "");
        vm.assume(sLyxAmount > stake);

        bytes memory expectedRevertError =
            abi.encodeWithSelector(LSP7AmountExceedsBalance.selector, stake, alice, sLyxAmount);

        vm.prank(alice);
        vm.expectRevert(expectedRevertError);
        liquidStakingToken.burn(alice, sLyxAmount, "");
    }

    function test_canBurnAllLSTAsAnOperator() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address operator = makeAddr("operator");

        uint256 stake = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), stake);

        vm.prank(alice);
        liquidStakingToken.authorizeOperator(operator, stake, "");
        assertEq(liquidStakingToken.authorizedAmountFor(operator, alice), stake);

        vm.prank(operator);
        liquidStakingToken.burn(alice, stake, "");

        assertEq(liquidStakingToken.authorizedAmountFor(operator, alice), 0);
        assertEq(liquidStakingToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(alice), stake);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);
    }

    function test_cannotBurnMoreThanAllowanceAsOperator(uint256 authorisedAmount, uint256 amountTransferredByOperator)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        address operator = makeAddr("operator");

        uint256 stake = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), stake);

        bound(authorisedAmount, 1, 100 ether - 1);
        vm.assume(amountTransferredByOperator > authorisedAmount);

        vm.prank(alice);
        liquidStakingToken.authorizeOperator(operator, authorisedAmount, "");

        assertEq(liquidStakingToken.authorizedAmountFor(operator, alice), authorisedAmount);

        vm.prank(operator);
        vm.expectRevert(
            abi.encodeWithSelector(
                LSP7AmountExceedsAuthorizedAmount.selector,
                alice, // tokenOwner,
                authorisedAmount, // authorizedAmount,
                operator, // operator,
                amountTransferredByOperator // amountToSpend
            )
        );
        liquidStakingToken.burn(alice, amountTransferredByOperator, "");
    }

    function test_cannotBurnLSTsIfNotAnOperator() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address notOperator = makeAddr("notOperator");

        uint256 stake = _depositAndClaimAllAsLiquidStakingTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), stake);

        bytes memory expectedRevertError = abi.encodeWithSelector(
            LSP7AmountExceedsAuthorizedAmount.selector,
            alice, // tokenOwner,
            0, // authorizedAmount,
            notOperator, // operator,
            stake // amountToSpend
        );

        vm.prank(notOperator);
        vm.expectRevert(expectedRevertError);
        liquidStakingToken.burn(alice, stake, "");
    }

    function test_burnOneSingleToken() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceStake = vault.balanceOf(alice);

        assertGt(aliceStake, 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vault.transferStake(address(liquidStakingToken), aliceStake, "");

        uint256 lstSharesAmount = vault.balanceOf(address(liquidStakingToken));

        assertEq(lstSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(liquidStakingToken.balanceOf(alice), aliceStake);

        liquidStakingToken.burn(alice, 1 ether, "");
        vm.stopPrank();

        assertEq(liquidStakingToken.balanceOf(alice), aliceStake - 1 ether);
        assertEq(vault.balanceOf(alice), 1 ether);
        assertEq(vault.balanceOf(address(liquidStakingToken)), aliceStake - 1 ether);
    }

    function test_burnVerySmallAmountOfToken1Wei() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceStake = vault.balanceOf(alice);

        assertGt(aliceStake, 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vault.transferStake(address(liquidStakingToken), aliceStake, "");

        uint256 lstSharesAmount = vault.balanceOf(address(liquidStakingToken));

        assertEq(lstSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(liquidStakingToken.balanceOf(alice), aliceStake);

        liquidStakingToken.burn(alice, 1 wei, "");

        assertEq(liquidStakingToken.balanceOf(alice), aliceStake - 1 wei);
        assertEq(vault.balanceOf(alice), 1 wei);
        assertEq(vault.balanceOf(address(liquidStakingToken)), aliceStake - 1 wei);
    }

    function test_shouldRevertWhenBurningZeroToken() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 depositAmount = 1 ether;

        vm.deal(alice, depositAmount);
        vm.prank(alice);
        vault.deposit{value: depositAmount}(alice);

        assertEq(alice.balance, 0);
        assertEq(vault.balanceOf(alice), depositAmount);
        assertEq(vault.balanceOf(address(liquidStakingToken)), 0);

        vm.prank(alice);
        vault.transferStake(address(liquidStakingToken), depositAmount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), depositAmount);
        assertEq(liquidStakingToken.balanceOf(alice), depositAmount);

        vm.expectRevert(abi.encodeWithSelector(Vault.InvalidAmount.selector, 0));
        vm.prank(alice);
        liquidStakingToken.burn(alice, 0, "");
    }
}
