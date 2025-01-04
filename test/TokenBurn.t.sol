// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";

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
contract TokenBurn is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken({setDepositExtension: false});
    }

    function test_cannotBurnIfNoTokensWereMintedForUser(uint256 amount, address user) public {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        vm.assume(user != alice);
        vm.assume(user != address(0));
        vm.assume(amount > 0);

        vm.prank(user);
        vm.expectRevert();
        sLyxToken.burn(user, amount, "");
    }

    function test_cannotBurnZeroSLYXTokens() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        vm.prank(alice);
        vm.expectRevert();
        sLyxToken.burn(alice, 0, "");
    }

    function test_emitRightEventsAfterBurningTokens() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");
        bytes memory burnData = "Burning sLYX Tokens!";

        // Emit the events we expect to see.
        vm.expectEmit(true, true, true, true, address(sLyxToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: alice,
            from: alice,
            to: address(0),
            amount: shares,
            force: false, // not used when burning
            data: burnData
        });

        vm.expectEmit(true, true, false, false, address(vault));
        emit IVault.StakeTransferred({from: address(sLyxToken), to: alice, amount: shares, data: burnData});

        vm.prank(alice);
        sLyxToken.burn(alice, shares, burnData);
    }

    function test_shouldReTransferStakeToUserAfterBurningAllTokens() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceBalance = vault.balanceOf(alice);

        assertEq(aliceBalance, 100 ether - _MINIMUM_REQUIRED_SHARES);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vault.transferStake(address(sLyxToken), aliceBalance, "");

        uint256 sLyxTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        assertEq(sLyxTokenContractSharesAmount, aliceBalance);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(alice), aliceBalance);

        sLyxToken.burn(alice, aliceBalance, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(alice), aliceBalance);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.stopPrank();
    }

    function test_MintAllSLYXTokensAndReTransferStakePartiallyAfterBurningSomeTokens()
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
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vault.transferStake(address(sLyxToken), aliceStake, "");

        uint256 sLyxTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        assertEq(sLyxTokenContractSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(alice), aliceStake);

        uint256 burnAmount = 30 ether;
        sLyxToken.burn(alice, burnAmount, "");

        assertEq(sLyxToken.balanceOf(alice), aliceStake - burnAmount);
        assertEq(vault.balanceOf(alice), burnAmount);
        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake - burnAmount);
    }

    function test_Stake100SLYXMint50LYXBurn30LYX() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address user = makeAddr("user");

        vm.deal(user, 100 ether);
        vm.startPrank(user);

        vault.deposit{value: 100 ether}(user);

        uint256 userStakeBefore = vault.balanceOf(user);

        assertGt(userStakeBefore, 0);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);
        assertEq(sLyxToken.totalSupply(), 0);

        uint256 amountToMakeLiquid = 50 ether;

        vault.transferStake(address(sLyxToken), amountToMakeLiquid, "");
        assertEq(sLyxToken.totalSupply(), amountToMakeLiquid);

        uint256 sLyxTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));
        uint256 userStakeAfterMinting = vault.balanceOf(user);

        assertEq(sLyxTokenContractSharesAmount, amountToMakeLiquid);
        assertEq(userStakeAfterMinting, userStakeBefore - amountToMakeLiquid);
        assertEq(sLyxToken.balanceOf(user), amountToMakeLiquid);

        uint256 burnAmount = 30 ether;
        uint256 expectedLyxTransferred = sLyxToken.getNativeTokenValue(burnAmount);
        sLyxToken.burn(user, burnAmount, "");

        assertEq(sLyxToken.totalSupply(), amountToMakeLiquid - burnAmount);
        assertEq(sLyxToken.balanceOf(user), amountToMakeLiquid - burnAmount);

        uint256 userStakeAfterBurningSLYXTokens = vault.balanceOf(user);
        assertEq(userStakeAfterBurningSLYXTokens, userStakeAfterMinting + burnAmount);
        // since no rewards were distributed, it should be the equivalent
        assertEq(userStakeAfterBurningSLYXTokens, userStakeAfterMinting + expectedLyxTransferred);
        assertEq(vault.balanceOf(address(sLyxToken)), userStakeAfterMinting - burnAmount);
    }

    /// forge-config: default.fuzz.runs = 5000
    function test_cannotConvertBackSLYXToLyxMoreThanTokenBalance(uint256 depositAmount, uint256 sLyxAmount)
        public
        makeInitialDeposit
        beforeTest(1_000_000 ether)
    {
        vm.assume(depositAmount >= _VAULT_INITIAL_DEPOSIT);
        vm.assume(depositAmount <= 1_000 ether);
        vm.assume(sLyxAmount > depositAmount);

        address alice = makeAddr("alice");

        uint256 stake = _depositAndClaimAllAsSLYXTokens(alice, depositAmount, "");
        vm.assume(sLyxAmount > stake);

        bytes memory expectedRevertError =
            abi.encodeWithSelector(LSP7AmountExceedsBalance.selector, stake, alice, sLyxAmount);

        vm.prank(alice);
        vm.expectRevert(expectedRevertError);
        sLyxToken.burn(alice, sLyxAmount, "");
    }

    function test_canBurnAllSLYXTokensAsAnOperator() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address operator = makeAddr("operator");

        uint256 stake = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), stake);

        vm.prank(alice);
        sLyxToken.authorizeOperator(operator, stake, "");
        assertEq(sLyxToken.authorizedAmountFor(operator, alice), stake);

        vm.prank(operator);
        sLyxToken.burn(alice, stake, "");

        assertEq(sLyxToken.authorizedAmountFor(operator, alice), 0);
        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(alice), stake);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);
    }

    function test_cannotBurnMoreThanAllowanceAsOperator(uint256 authorisedAmount, uint256 amountTransferredByOperator)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        address operator = makeAddr("operator");

        uint256 stake = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), stake);

        bound(authorisedAmount, 1, 100 ether - 1);
        vm.assume(amountTransferredByOperator > authorisedAmount);

        vm.prank(alice);
        sLyxToken.authorizeOperator(operator, authorisedAmount, "");

        assertEq(sLyxToken.authorizedAmountFor(operator, alice), authorisedAmount);

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
        sLyxToken.burn(alice, amountTransferredByOperator, "");
    }

    function test_cannotBurnSLYXTokensIfNotAnOperator() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address notOperator = makeAddr("notOperator");

        uint256 stake = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), stake);

        bytes memory expectedRevertError = abi.encodeWithSelector(
            LSP7AmountExceedsAuthorizedAmount.selector,
            alice, // tokenOwner,
            0, // authorizedAmount,
            notOperator, // operator,
            stake // amountToSpend
        );

        vm.prank(notOperator);
        vm.expectRevert(expectedRevertError);
        sLyxToken.burn(alice, stake, "");
    }

    function test_burnOneSingleToken() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceStake = vault.balanceOf(alice);

        assertGt(aliceStake, 0);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vault.transferStake(address(sLyxToken), aliceStake, "");

        uint256 sLyxTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        assertEq(sLyxTokenContractSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(alice), aliceStake);

        sLyxToken.burn(alice, 1 ether, "");
        vm.stopPrank();

        assertEq(sLyxToken.balanceOf(alice), aliceStake - 1 ether);
        assertEq(vault.balanceOf(alice), 1 ether);
        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake - 1 ether);
    }

    function test_burnVerySmallAmountOfToken1Wei() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        vm.deal(alice, 100 ether);
        vm.startPrank(alice);

        vault.deposit{value: 100 ether}(alice);

        uint256 aliceStake = vault.balanceOf(alice);

        assertGt(aliceStake, 0);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vault.transferStake(address(sLyxToken), aliceStake, "");

        uint256 sLyxTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        assertEq(sLyxTokenContractSharesAmount, aliceStake);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(alice), aliceStake);

        sLyxToken.burn(alice, 1 wei, "");

        assertEq(sLyxToken.balanceOf(alice), aliceStake - 1 wei);
        assertEq(vault.balanceOf(alice), 1 wei);
        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake - 1 wei);
    }

    function test_shouldRevertWhenBurningZeroToken() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 depositAmount = 1 ether;

        vm.deal(alice, depositAmount);
        vm.prank(alice);
        vault.deposit{value: depositAmount}(alice);

        assertEq(alice.balance, 0);
        assertEq(vault.balanceOf(alice), depositAmount);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.prank(alice);
        vault.transferStake(address(sLyxToken), depositAmount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), depositAmount);
        assertEq(sLyxToken.balanceOf(alice), depositAmount);

        vm.expectRevert(abi.encodeWithSelector(Vault.InvalidAmount.selector, 0));
        vm.prank(alice);
        sLyxToken.burn(alice, 0, "");
    }
}
