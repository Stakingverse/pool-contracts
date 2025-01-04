// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

// Testing
import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";

// Helpers
import {IVault} from "../src/Vault.sol";

// Mocks
import {MockDepositContract} from "./mocks/MockDepositContract.sol";

/// @title Testing sLYX / LYX rate after accrued rewards
// -----------------------------------------------------
contract Rewards is SLYXTokenBaseTest {
    uint256 constant _VALIDATOR_REWARDS = 10 ether;

    function _calculateProportionRewards(uint256 stake, uint256 totalStake, uint256 rewardsAfterFees)
        internal
        pure
        returns (uint256)
    {
        uint256 percentage = Math.mulDiv(stake, 1e18, totalStake);

        uint256 proportionRewards = Math.mulDiv(percentage, rewardsAfterFees, 1e18);

        return proportionRewards;
    }

    function setUp() public {
        _setUpSLYXToken({setDepositExtension: false});
    }

    function test_shouldRetrieveMoreLYXWhenBurningSLYXTokensAndRewardsAccruedStake() public beforeTest(100 ether) {
        address alice = makeAddr("alice");
        hoax(alice);
        vault.deposit{value: 32 ether}(alice);

        assertEq(vault.totalStaked(), 0);
        assertEq(vault.totalUnstaked(), 32 ether);
        assertEq(vault.totalAssets(), 32 ether);
        assertEq(vault.balanceOf(alice), 32 ether - vault.balanceOf(address(0)));
        assertEq(vault.totalValidatorsRegistered(), 0);
        assertEq(address(vault).balance, 32 ether);

        vm.prank(vaultOracle);
        vault.registerValidator(hex"1234", hex"5678", bytes32(0));

        assertEq(vault.totalStaked(), 32 ether);
        assertEq(vault.totalUnstaked(), 0);
        assertEq(vault.totalAssets(), 32 ether);
        assertEq(vault.totalFees(), 0);
        assertEq(vault.totalValidatorsRegistered(), 1);
        assertEq(address(vault).balance, 0);

        // alice converts its stake in Liquid Staking tokens
        uint256 aliceBalance = vault.balanceOf(alice);
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), aliceBalance, "");

        // simulate rewards +10 ethers
        vm.deal(address(vault), 10 ether);

        vm.prank(vaultOracle);
        vm.expectEmit(address(vault));
        emit IVault.RewardsDistributed({balance: 32 ether, rewards: 10 ether, fee: 1 ether});
        vm.expectEmit(address(vault));
        emit IVault.Rebalanced({
            previousTotalStaked: 32 ether,
            previousTotalUnstaked: 0 ether,
            totalStaked: 32 ether,
            totalUnstaked: 9 ether
        });
        vault.rebalance();

        assertEq(address(vault).balance, 10 ether);
        assertEq(vault.totalFees(), 1 ether);

        uint256 sLyxTokenContractBalance = vault.balanceOf(address(sLyxToken));

        // Burn the sLYX tokens and see if the balance increased
        vm.prank(alice);
        sLyxToken.burn(alice, aliceBalance, "");

        /// @dev There is a remainder / difference of 1 wei accepted as rounding error
        assertEq(vault.balanceOf(address(sLyxToken)), VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.balanceOf(alice), sLyxTokenContractBalance - VAULT_ROUNDING_ERROR_LOSS);
    }

    function test_TwoUsersDepositAndBurnSLYXTokensAfterAccruedReward()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        hoax(alice, 40 ether);
        vault.deposit{value: 40 ether}(alice);

        address bob = makeAddr("bob");
        hoax(bob, 60 ether);
        vault.deposit{value: 60 ether}(bob);

        uint256 zeroAddressBalance = vault.balanceOf(address(0));

        assertEq(vault.totalStaked(), 0);
        assertEq(vault.totalUnstaked(), 100 ether + zeroAddressBalance);
        assertEq(vault.totalAssets(), 100 ether + zeroAddressBalance);
        assertEq(vault.balanceOf(alice), 40 ether);
        assertEq(vault.balanceOf(bob), 60 ether);
        assertEq(vault.totalValidatorsRegistered(), 0);
        assertEq(address(vault).balance, 100 ether + zeroAddressBalance);

        vm.startPrank(vaultOracle);
        vault.registerValidator(hex"1111", hex"1111", bytes32(0));
        vault.registerValidator(hex"2222", hex"2222", bytes32(0));
        vault.registerValidator(hex"3333", hex"3333", bytes32(0));
        vm.stopPrank();

        uint256 aliceStake = vault.balanceOf(alice);
        uint256 bobStake = vault.balanceOf(bob);

        assertEq(vault.totalStaked(), 96 ether);
        assertEq(vault.totalUnstaked(), 4 ether + zeroAddressBalance);
        assertEq(vault.totalAssets(), 100 ether + zeroAddressBalance);
        assertEq(aliceStake, 40 ether);
        assertEq(bobStake, 60 ether);
        assertEq(vault.totalValidatorsRegistered(), 3);
        assertEq(address(vault).balance, 4 ether + zeroAddressBalance);

        // users convert their shares into Liquid Staking tokens
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), aliceStake, "");
        assertEq(sLyxToken.balanceOf(alice), aliceStake);
        assertEq(vault.balanceOf(alice), 0);

        vm.prank(bob);
        vault.transferStake(address(sLyxToken), bobStake, "");
        assertEq(sLyxToken.balanceOf(bob), bobStake);
        assertEq(vault.balanceOf(bob), 0);

        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake + bobStake);

        // Simulate +10 LYX rewards
        vm.deal(address(vault), _VALIDATOR_REWARDS + vault.totalUnstaked());

        uint256 expectedFeeAmount = Math.mulDiv( // vault.fee() % of 10 LYX
        _VALIDATOR_REWARDS, vault.fee(), _VAULT_FEE_BASIS);
        assertEq(expectedFeeAmount, 1 ether);
        uint256 rewardsAfterFees = _VALIDATOR_REWARDS - expectedFeeAmount; // 10 LYX rewards - 1 LYX fee

        vm.prank(vaultOracle);
        vm.expectEmit(address(vault));
        emit IVault.RewardsDistributed({
            balance: 100 ether + zeroAddressBalance,
            rewards: _VALIDATOR_REWARDS,
            fee: expectedFeeAmount
        });
        vm.expectEmit(address(vault));
        emit IVault.Rebalanced({
            previousTotalStaked: 96 ether,
            previousTotalUnstaked: 4 ether + zeroAddressBalance,
            totalStaked: 96 ether,
            totalUnstaked: 4 ether + rewardsAfterFees + zeroAddressBalance // 4 LYX + 9 LYX + 1,000 wei (initial deposit)
        });
        vault.rebalance();

        assertEq(address(vault).balance, _VALIDATOR_REWARDS + 4 ether + zeroAddressBalance);
        assertEq(vault.totalFees(), expectedFeeAmount);

        // Calculate proportion of rewards owned by the SLYX Token contract
        // meaning all the combined users that made their stake liquid by minting sLYX tokens.
        uint256 proportionRewardsForSLYXTokenContract = _calculateProportionRewards({
            stake: aliceStake + bobStake,
            totalStake: aliceStake + bobStake + 1_000 wei,
            rewardsAfterFees: rewardsAfterFees
        });

        // We then calculate below from this proportion how much rewards Alice and Bob
        // are allocated to Alice and Bob, if they would burn their sLYX tokens.

        // block scope to clear the stack and avoid stack too deep errors
        {
            uint256 expectedSLYXTokenContractBalanceAfterRewards =
                aliceStake + bobStake + proportionRewardsForSLYXTokenContract;
            assertEq(vault.balanceOf(address(sLyxToken)), expectedSLYXTokenContractBalanceAfterRewards);

            // Keep a minimum number of variables on the stack using a block scope (prevents stack too deep error)
            {
                uint256 proportionRewardsForZeroAddress = rewardsAfterFees - proportionRewardsForSLYXTokenContract;

                assertEq(
                    vault.balanceOf(address(0)), 1_000 wei + proportionRewardsForZeroAddress - VAULT_ROUNDING_ERROR_LOSS
                );
            }
        }

        // Both users burn their sLYX tokens. Calculate that the stake given back includes rewards

        // Calculate exactly how much rewards were given to Alice and Bob.
        // To make sure both logics work in the Vault and the Liquid Staking Token,
        // we compare the result against:
        // - the conversion function before burning the sLYX tokens -> via `sLyxToken.getNativeTokenValue(...)`
        // - alice's stake after burning its sLYX tokens -> via `vault.balanceOf(...)`)
        // This result should be the same for both functions.
        // The conversion function should work to include the accrued rewards.
        {
            uint256 aliceNativeTokenValueBeforeBurning = sLyxToken.getNativeTokenValue(aliceStake);

            vm.prank(alice);
            sLyxToken.burn(alice, aliceStake, "");
            assertEq(sLyxToken.balanceOf(alice), 0);

            uint256 proportionRewardsForAlice = _calculateProportionRewards({
                stake: aliceStake,
                totalStake: aliceStake + bobStake,
                rewardsAfterFees: proportionRewardsForSLYXTokenContract
            });

            assertEq(
                vault.balanceOf(alice) + VAULT_ROUNDING_ERROR_LOSS,
                aliceStake + proportionRewardsForAlice - VAULT_ROUNDING_ERROR_LOSS
            );

            assertEq(
                vault.balanceOf(alice) + VAULT_ROUNDING_ERROR_LOSS,
                aliceNativeTokenValueBeforeBurning - VAULT_ROUNDING_ERROR_LOSS
            );
        }
    }

    function test_depositOnBehalfOfSLYXTokenContractAddressAndInflateProportionOfRewards()
        public
        beforeTest(5_000 ether)
        makeInitialDeposit
    {
        // Test with two users who deposited the same amount (50 LYX each)
        uint256 depositAmount = 50 ether;

        address alice = makeAddr("alice");
        address bob = makeAddr("bob");

        // 1. both deposit 50 LYX each
        // 2. both convert as sLYX
        uint256 aliceStake = _depositAndClaimAllAsSLYXTokens(alice, depositAmount, "");
        uint256 bobStake = _depositAndClaimAllAsSLYXTokens(bob, depositAmount, "");

        vm.startPrank(vaultOracle);
        vault.registerValidator(hex"1111", hex"1111", bytes32(0));
        vault.registerValidator(hex"2222", hex"2222", bytes32(0));
        vault.registerValidator(hex"3333", hex"3333", bytes32(0));
        vm.stopPrank();

        uint256 zeroAddressBalance = vault.balanceOf(address(0));

        // 3. 10 LYX of rewards are distributed.
        // Simulate +10 LYX rewards
        uint256 validatorRewards = 10 ether;
        vm.deal(address(vault), validatorRewards + vault.totalUnstaked());

        uint256 expectedFeeAmount = Math.mulDiv( // vault.fee() % of 10 LYX
        validatorRewards, vault.fee(), _VAULT_FEE_BASIS);
        assertEq(expectedFeeAmount, 1 ether);
        uint256 rewardsAfterFees = validatorRewards - expectedFeeAmount; // 10 LYX rewards - 1 LYX fee

        vm.prank(vaultOracle);
        vm.expectEmit(address(vault));
        emit IVault.RewardsDistributed({
            balance: 100 ether + zeroAddressBalance,
            rewards: validatorRewards,
            fee: expectedFeeAmount
        });
        vm.expectEmit(address(vault));
        emit IVault.Rebalanced({
            previousTotalStaked: 96 ether,
            previousTotalUnstaked: 4 ether + zeroAddressBalance,
            totalStaked: 96 ether,
            totalUnstaked: 4 ether + rewardsAfterFees + zeroAddressBalance // 4 LYX + 9 LYX + 1,000 wei (initial deposit)
        });
        vault.rebalance();

        // 4. a first user burn. How many LYX should he receive?
        vm.prank(alice);
        sLyxToken.burn(alice, aliceStake, "");
        assertEq(sLyxToken.balanceOf(alice), 0);

        uint256 rewardsForAliceAndBob = _calculateProportionRewards({
            stake: aliceStake,
            totalStake: aliceStake + bobStake + 1_000 wei,
            rewardsAfterFees: rewardsAfterFees
        });
        assertEq(vault.balanceOf(alice), aliceStake + rewardsForAliceAndBob - 2 wei);

        // CHECK that we prevent inflation attack by depositing with the sLYX Token address as beneficiary.
        // This would increase the value of the sLYX token backing staked LYX (when user burn the sLYX token to get the underlying asset back)
        // This protects against a malicious user "donating" LYX as stake to the sLYX Token address (via `deposit(sLYXToken)`)
        // and allow other users to claim more back as stake when burning the sLYX token.

        // TLDR: amount of underlying assets (staked LYX) changes without the amount of sLYX shares reflecting that.
        // This inflation makes all the sLYX token in circulation more valuable, meaning someone buying sLYX token "will get less than they would have expected".
        // TODO: improve this test with assertions that reflect that better

        // 5. someone else deposit 10 LYX on behalf of the SLYXToken contract address.
        hoax(bob, 10 ether);
        vault.deposit{value: 10 ether}(address(sLyxToken));

        assertEq(sLyxToken.balanceOf(bob), bobStake + _toShares(10 ether) + VAULT_ROUNDING_ERROR_LOSS);

        vm.prank(vaultOracle);
        vault.rebalance();

        vm.prank(bob);
        sLyxToken.burn(bob, bobStake, "");

        // 6. second user burn its sLYX. How much does he receive? Probably receive more than 55 LYX

        // CHECK user has some sLYX left minted in step 5
        assertEq(sLyxToken.balanceOf(bob), _toShares(10 ether) + VAULT_ROUNDING_ERROR_LOSS);

        assertEq(vault.balanceOf(bob), bobStake + rewardsForAliceAndBob - VAULT_ROUNDING_ERROR_LOSS);
    }

    function test_roundingErrorRemainsOneWeiEvenWithBigDeposits() public beforeTest(600_000 ether) {
        address alice = makeAddr("alice");
        uint256 amount = 500_000 ether;

        hoax(alice, amount);
        vault.deposit{value: amount}(alice);

        assertEq(0 ether, vault.totalStaked());
        assertEq(amount, vault.totalUnstaked());
        assertEq(amount, vault.totalAssets());
        // the balance of the zero address has to do with the minimum required share
        // since it is the first deposit
        assertEq(vault.balanceOf(alice), amount - vault.balanceOf(address(0)));
        assertEq(vault.totalValidatorsRegistered(), 0);
        assertEq(address(vault).balance, amount);

        for (uint256 ii = 0; ii < (500_000 / 32); ii++) {
            vm.prank(vaultOracle);
            vault.registerValidator(abi.encodePacked(ii), abi.encodePacked(ii), bytes32(0));
        }

        assertEq(vault.totalStaked(), amount);
        assertEq(vault.totalUnstaked(), 0 ether);
        assertEq(vault.totalAssets(), amount);
        assertEq(vault.totalFees(), 0 ether);
        assertEq(vault.totalValidatorsRegistered(), 15625);
        assertEq(address(vault).balance, 0 ether);

        // user converts its stake in Liquid Staking tokens
        uint256 userBalance = vault.balanceOf(alice);
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), userBalance, "");

        // simulate rewards +10000 ethers
        vm.deal(address(vault), 10000 ether);

        vm.prank(vaultOracle);
        vm.expectEmit(address(vault));
        emit IVault.RewardsDistributed({balance: amount, rewards: 10000 ether, fee: 1000 ether});
        vm.expectEmit(address(vault));
        emit IVault.Rebalanced({
            previousTotalStaked: amount,
            previousTotalUnstaked: 0 ether,
            totalStaked: amount,
            totalUnstaked: 9000 ether
        });
        vault.rebalance();

        uint256 sLyxTokenContractBalanceInVault = vault.balanceOf(address(sLyxToken));
        assertEq(address(vault).balance, 10000 ether);
        assertEq(vault.totalFees(), 1000 ether);

        // Burn the sLYX tokens and see if the balance increased
        vm.prank(alice);
        sLyxToken.burn(alice, userBalance, "");

        /// @dev There is usually a remainder / difference of 1 wei accepted as rounding error in the Vault
        /// (see previous test above), but I don't know why in this test, it is 0
        assertEq(vault.balanceOf(address(sLyxToken)), 0);
        assertEq(vault.balanceOf(alice), sLyxTokenContractBalanceInVault);
    }

    function test_shouldMintMoreTokensWhenTransferStakeAfterAccumulatedRewards() public beforeTest(600_000 ether) {
        address alice = makeAddr("alice");
        uint256 amount = 100 ether;

        assertEq(vault.totalStaked(), 0);
        assertEq(vault.totalUnstaked(), 0);
        assertEq(vault.totalAssets(), 0);

        hoax(alice, amount); // prank + deal
        vault.deposit{value: amount}(alice);

        assertEq(vault.totalStaked(), 0);
        assertEq(vault.totalUnstaked(), amount);
        assertEq(vault.totalAssets(), amount);

        assertEq(address(vault).balance, amount);
        // the balance of the zero address has to do with the minimum required share
        // since it is the first deposit
        assertEq(vault.balanceOf(alice), amount - vault.balanceOf(address(0)));
        assertEq(vault.totalValidatorsRegistered(), 0);

        vm.startPrank(vaultOracle);
        vault.registerValidator(hex"aaaa", hex"1111", bytes32(0));
        vault.registerValidator(hex"bbbb", hex"2222", bytes32(0));
        vault.registerValidator(hex"cccc", hex"3333", bytes32(0));
        vm.stopPrank();

        uint256 expectedTotalStaked = 3 * DEPOSIT_AMOUNT;
        uint256 expectedTotalUnstaked = amount - expectedTotalStaked;
        assertEq(vault.totalValidatorsRegistered(), 3);
        assertEq(address(vault).balance, expectedTotalUnstaked); // whatever is left

        // Current shares, assets and balances
        assertEq(vault.totalStaked(), 96 ether);
        assertEq(vault.totalUnstaked(), expectedTotalUnstaked);
        assertEq(vault.totalAssets(), amount);
        assertEq(vault.totalFees(), 0 ether);

        assertEq(vault.balanceOf(alice), amount - vault.balanceOf(address(0)));
        assertEq(vault.sharesOf(alice), amount - vault.sharesOf(address(0)));

        // simulate rewards +10 ethers
        uint256 validatorRewards = 10 ether;
        vm.deal(address(vault), validatorRewards + vault.totalUnstaked());

        // periodical update
        vm.prank(vaultOracle);
        vault.rebalance();

        // vault.fee() % of 10 LYX
        // Set to 10 % in this test, so should be 1 LYX of fee
        uint256 expectedFeeAmount = Math.mulDiv(validatorRewards, vault.fee(), _VAULT_FEE_BASIS);
        assertEq(expectedFeeAmount, 1 ether);
        assertEq(vault.totalStaked(), expectedTotalStaked); // Shouldn't have changed

        expectedTotalUnstaked += validatorRewards - expectedFeeAmount; // 9 LYX
        assertEq(vault.totalUnstaked(), expectedTotalUnstaked);

        assertEq(vault.totalAssets(), expectedTotalStaked + expectedTotalUnstaked);
        assertEq(vault.totalFees(), expectedFeeAmount);

        assertEq(vault.balanceOf(alice), amount - vault.balanceOf(address(0)) + (validatorRewards - expectedFeeAmount));
        assertEq(vault.sharesOf(alice), amount - vault.sharesOf(address(0)));

        // alice converts its stake in Liquid Staking tokens
        uint256 userBalance = vault.balanceOf(alice);
        vm.prank(alice);
        vault.transferStake(address(sLyxToken), userBalance, "");

        // Check that the accumulated rewards were also minted as sLYX
        assertEq(
            sLyxToken.balanceOf(alice), amount - vault.balanceOf(address(0)) + (validatorRewards - expectedFeeAmount)
        );
    }

    function test_getNativeTokenValueShouldAlwaysIncreaseAfterRewards()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        // test that the ratio sLYX / LYX should always increase and be above 1]
        address alice = makeAddr("alice");
        uint256 amount = 100 ether;

        uint256 sLyxTokenContractBalanceInVault = _depositAndClaimAllAsSLYXTokens(alice, amount, "");

        vm.startPrank(vaultOracle);
        vault.registerValidator(hex"aaaa", hex"1111", bytes32(0));
        vault.registerValidator(hex"bbbb", hex"2222", bytes32(0));
        vault.registerValidator(hex"cccc", hex"3333", bytes32(0));
        vm.stopPrank();

        // 1:1 peg initially
        assertEq(sLyxToken.getNativeTokenValue(sLyxTokenContractBalanceInVault), amount);
        assertEq(sLyxToken.getSLYXTokenValue(amount), sLyxTokenContractBalanceInVault);

        // simulate rewards +10 ethers
        uint256 validatorRewards = 10 ether;
        vm.deal(address(vault), validatorRewards + vault.totalUnstaked());

        // periodical update
        vm.prank(vaultOracle);
        vault.rebalance();

        // check that rebalance now is always greater than 1
        assertGt(sLyxToken.getNativeTokenValue(sLyxTokenContractBalanceInVault), amount);
        assertLt(sLyxToken.getSLYXTokenValue(amount), sLyxTokenContractBalanceInVault);
    }
}
