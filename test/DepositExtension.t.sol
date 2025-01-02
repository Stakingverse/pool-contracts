// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Vault, IVault} from "../src/Vault.sol";
import {ILSP7DigitalAsset} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";
import {LSP7CannotSendWithAddressZero} from "@lukso/lsp7-contracts/contracts/LSP7Errors.sol";
import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";
import {InvalidRecipientForLSTTokensTransfer} from "../src/LiquidStakingToken.sol";

// errors
import {
    OnlyCallableByLiquidStakingTokenContract,
    LSP17AutoMintExtensionCannotHoldVaultStake
} from "../src/LiquidStakingTokenAutoMintExtension.sol";

/// @title Testing deposit extension (replace by the group of functionalities you are testing in this file)
// ---------------------------------
contract DepositExtension is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: true});
    }

    function test_shouldAllowDepositDirectlyToLSTContract() public beforeTest(10_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 amount = 100 ether;
        vm.deal(alice, amount);

        assertEq(vault.totalUnstaked(), _VAULT_INITIAL_DEPOSIT);
        assertEq(liquidStakingToken.totalSupply(), 0);
        assertEq(liquidStakingToken.balanceOf(alice), 0);

        bytes memory depositCalldata = abi.encodeWithSelector(vault.deposit.selector, alice);

        vm.prank(alice);
        (bool success,) = address(liquidStakingToken).call{value: amount}(depositCalldata);
        assertTrue(success);

        assertEq(vault.totalUnstaked(), _VAULT_INITIAL_DEPOSIT + amount);
        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(liquidStakingToken)), amount);
        assertEq(vault.sharesOf(address(liquidStakingToken)), amount);

        assertEq(liquidStakingToken.totalSupply(), vault.sharesOf(address(liquidStakingToken)));
        assertEq(liquidStakingToken.balanceOf(alice), vault.sharesOf(address(liquidStakingToken)));

        assertEq(autoMintExtension.balance, 0);
    }

    function test_shouldEmitTheRightEvents() public beforeTest(10_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 amount = 100 ether;
        hoax(alice, amount);

        // Emit the events we expect to see.

        // 1. LYX forwarded to the extension contract
        // and `Deposited` by the extension contract itself
        vm.expectEmit(true, true, false, false, address(vault));
        emit IVault.Deposited({
            account: address(autoMintExtension),
            beneficiary: address(autoMintExtension),
            amount: amount
        });

        // 2. `StakeTransferred` to the Liquid Staking Token contract
        vm.expectEmit(true, true, false, false, address(vault));
        emit IVault.StakeTransferred({
            from: address(autoMintExtension),
            to: address(liquidStakingToken),
            amount: amount,
            data: ""
        });

        // 3. LST Tokens minted (`Transfer` with `from = address(0)`) to the extension
        vm.expectEmit(true, true, true, true, address(liquidStakingToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: address(vault),
            from: address(0),
            to: address(autoMintExtension),
            amount: amount,
            force: true,
            data: ""
        });

        // 4. Extension `Transfer` the minted LST tokens to user
        vm.expectEmit(true, true, true, true, address(liquidStakingToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: address(autoMintExtension),
            from: address(autoMintExtension),
            to: alice,
            amount: amount,
            force: true,
            data: ""
        });

        IVault(address(liquidStakingToken)).deposit{value: amount}(alice);
    }

    /// @dev Fuzz alice address to find exceptions
    function test_onlyLSTTokenContractCanCallExtension(address anyAddress)
        public
        beforeTest(10_000 ether)
        makeInitialDeposit
    {
        vm.assume(anyAddress != address(liquidStakingToken));

        uint256 amount = 100 ether;
        vm.deal(anyAddress, amount);

        bytes memory depositCalldata = abi.encodeWithSelector(vault.deposit.selector, anyAddress);

        // Test revert with function call
        vm.prank(anyAddress);
        vm.expectRevert(abi.encodeWithSelector(OnlyCallableByLiquidStakingTokenContract.selector, anyAddress));
        IVault(address(autoMintExtension)).deposit{value: amount}(anyAddress);

        // Test as low level call
        vm.prank(anyAddress);
        (bool success, bytes memory revertData) = address(autoMintExtension).call{value: amount}(depositCalldata);
        assertFalse(success);

        bytes memory expectedRevertData =
            abi.encodeWithSelector(OnlyCallableByLiquidStakingTokenContract.selector, anyAddress);
        assertEq(revertData, expectedRevertData);
    }

    function test_cannotDepositDirectlyOnLSTContractWithLSTContractAddressAsParameter()
        public
        beforeTest(10_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 amount = 100 ether;
        vm.deal(alice, amount);

        bytes memory depositCalldata = abi.encodeWithSelector(vault.deposit.selector, address(liquidStakingToken));

        bytes memory expectedRevertData =
            abi.encodeWithSelector(InvalidRecipientForLSTTokensTransfer.selector, address(liquidStakingToken));

        // Test revert with function call
        vm.prank(alice);
        vm.expectRevert(expectedRevertData);
        IVault(address(liquidStakingToken)).deposit{value: amount}(address(liquidStakingToken));

        // Test as low level call
        vm.prank(alice);
        (bool success, bytes memory revertData) = address(liquidStakingToken).call{value: amount}(depositCalldata);
        assertFalse(success);
        assertEq(revertData, expectedRevertData);
    }

    function test_shouldRevertWhenPassingZeroAmountViaExtension()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        vm.deal(alice, 10 ether); // still fund the account even if it will not deposit any

        bytes memory expectedRevertData = abi.encodeWithSelector(Vault.InvalidAmount.selector, 0);

        vm.prank(alice);
        vm.expectRevert(expectedRevertData);
        IVault(address(liquidStakingToken)).deposit{value: 0}(alice);
    }

    function test_cannotMintLSTTokensViaExtensionToZeroAddress()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 amount = 10 ether;

        bytes memory expectedRevertData = abi.encodePacked(LSP7CannotSendWithAddressZero.selector);

        hoax(alice, amount);
        vm.expectRevert(expectedRevertData);
        IVault(address(liquidStakingToken)).deposit{value: amount}(address(0));
    }

    function test_cannotMintLSTTokensViaExtensionIfAmountIsOverDepositLimit(uint256 amount)
        public
        beforeTest(1_000_000 ether)
    {
        vm.assume(amount > 1_000_000 ether);
        address alice = makeAddr("alice");

        bytes memory expectedRevertData =
            abi.encodeWithSelector(Vault.DepositLimitExceeded.selector, amount, 1_000_000 ether);

        hoax(alice, amount);
        vm.expectRevert(expectedRevertData);
        IVault(address(liquidStakingToken)).deposit{value: amount}(address(0));
    }

    function test_cannotDepositAndTransferStakeToExtensionAddress()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 amount = 10 ether;
        vm.deal(alice, amount);

        vm.prank(alice);
        vault.deposit{value: amount}(alice);

        uint256 stake = vault.balanceOf(alice);

        vm.prank(alice);
        vm.expectRevert(LSP17AutoMintExtensionCannotHoldVaultStake.selector);
        vault.transferStake(address(autoMintExtension), stake, "");
    }
}
