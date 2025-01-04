// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Test helpers
import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";
import {UniversalProfileTestHelpers, UniversalProfile} from "./base/UniversalProfileTestHelpers.t.sol";

// interfaces

import {ILSP7DigitalAsset} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";

// modules
import {Vault} from "UniversalPage-contracts/src/pool/Vault.sol";

// libraries
import {LSP2Utils} from "@lukso/lsp2-contracts/contracts/LSP2Utils.sol";

// constants
import {
    _LSP5_RECEIVED_ASSETS_ARRAY_KEY,
    _LSP5_RECEIVED_ASSETS_MAP_KEY_PREFIX
} from "@lukso/lsp5-contracts/contracts/LSP5Constants.sol";

import {_INTERFACEID_LSP7} from "@lukso/lsp7-contracts/contracts/LSP7Constants.sol";

/// @title Testing minting sLYX tokens via `transferStake(sLyxToken, stakeAmount, data)`
/// ------------------
contract TokenMint is SLYXTokenBaseTest, UniversalProfileTestHelpers {
    function setUp() public {
        UniversalProfileTestHelpers._deployLSP1DelegateSingleton();
        _setUpSLYXToken({setDepositExtension: false});
    }

    function test_depositLYXToVaultThenMintSLYXTokens(uint256 amount) public beforeTest(1_000_000 ether) {
        vm.assume(amount > 1 ether && amount < 1_000_000 ether);

        address user = vm.addr(100);

        vm.deal(user, amount);
        vm.startPrank(user);

        assertEq(vault.totalUnstaked(), 0);

        (bool success,) = address(vault).call{value: amount}("");
        assertTrue(success);

        assertEq(vault.totalUnstaked(), amount);

        uint256 userBalance = vault.balanceOf(user);
        assertEq(0, vault.balanceOf(address(sLyxToken)));

        vault.transferStake(address(sLyxToken), userBalance, "");
        assertEq(vault.balanceOf(user), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), userBalance);
        assertEq(vault.totalUnstaked(), amount);
    }

    function test_shouldMintAllStakeAsSLYXTokensWhenCallingTransferStakeToSLYXTokenContract()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
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
    }

    function test_shouldMintPartialStakeAsSLYXTokens(uint256 amountToMakeLiquid)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = makeAddr("alice");
        uint256 depositAmount = 100 ether;

        vm.assume(amountToMakeLiquid != 0);
        vm.assume(amountToMakeLiquid < depositAmount);

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.prank(alice);
        vault.transferStake(address(sLyxToken), amountToMakeLiquid, "");
        assertEq(vault.balanceOf(alice), depositAmount - amountToMakeLiquid);
        assertEq(vault.balanceOf(address(sLyxToken)), amountToMakeLiquid);

        assertEq(sLyxToken.balanceOf(alice), amountToMakeLiquid);
    }

    function test_shouldRevertWhenCallingTransferStakeWithAmountLargerThanStake(uint256 amountToMakeLiquid)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        address alice = vm.addr(100);
        uint256 depositAmount = 100 ether;

        vm.assume(amountToMakeLiquid > depositAmount);
        vm.assume(amountToMakeLiquid <= 1_000_000 ether);

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        bytes memory expectedRevertData =
            abi.encodeWithSelector(Vault.InsufficientBalance.selector, depositAmount, amountToMakeLiquid);

        vm.prank(alice);
        vm.expectRevert(expectedRevertData);
        vault.transferStake(address(sLyxToken), amountToMakeLiquid, "");
    }

    function test_shouldNotAllowNonVaultToMint(address anyAddress) public beforeTest(1_000_000 ether) {
        vm.assume(
            anyAddress != address(0) && anyAddress != proxyAdmin && anyAddress != address(vault)
                && anyAddress != address(sLyxToken)
        );

        vm.deal(anyAddress, 100 ether);
        vm.startPrank(anyAddress);

        vault.deposit{value: 100 ether}(anyAddress);

        uint256 userBalance = vault.balanceOf(anyAddress);
        vm.expectRevert();
        sLyxToken.onVaultStakeReceived(anyAddress, userBalance, "");

        vm.stopPrank();
    }

    function test_shouldIncreaseSharesOfSLYXTokenContractAddressInVaultWhenTwoUsersTransferStakeToSLYXTokenContract()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        uint256 depositFirstUser = 39 ether;
        uint256 depositSecondUser = 272 ether;

        // deposit from a user
        address firstUser = makeAddr("user");

        vm.deal(firstUser, depositFirstUser);
        vm.startPrank(firstUser);

        vault.deposit{value: depositFirstUser}(firstUser);

        assertEq(vault.balanceOf(firstUser), depositFirstUser);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        uint256 userBalance = vault.balanceOf(firstUser);
        vault.transferStake(address(sLyxToken), userBalance, "");

        uint256 firstSLYXTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        assertEq(firstSLYXTokenContractSharesAmount, depositFirstUser);
        assertEq(vault.balanceOf(firstUser), 0);

        // second deposit from another user,
        address anotherUser = makeAddr("anotherUser");

        vm.deal(anotherUser, depositSecondUser);
        vm.startPrank(anotherUser);

        vault.deposit{value: depositSecondUser}(anotherUser);

        assertEq(vault.balanceOf(anotherUser), depositSecondUser);
        assertEq(vault.balanceOf(address(sLyxToken)), userBalance);

        uint256 anotherUserBalance = vault.balanceOf(anotherUser);
        vault.transferStake(address(sLyxToken), anotherUserBalance, "");

        uint256 SecondSLYXTokenContractSharesAmount = vault.balanceOf(address(sLyxToken));

        // check that amount of shares for the Liquid Staking contract's address keep increasing
        assertGt(SecondSLYXTokenContractSharesAmount, firstSLYXTokenContractSharesAmount);
        assertEq(SecondSLYXTokenContractSharesAmount, userBalance + anotherUserBalance);

        vm.stopPrank();
    }

    function test_shouldMintSLYXTokensWithDataWhenPassingDataToTransferStakeFunction(bytes memory anyRandomData)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        vm.assume(anyRandomData.length > 0);

        address alice = makeAddr("alice");
        uint256 depositAmount = 10 ether;

        startHoax(alice, depositAmount);

        vault.deposit{value: depositAmount}(alice);
        uint256 shares = vault.balanceOf(alice);

        vm.expectEmit(true, true, true, true, address(sLyxToken));

        // Emit the event we expect to see, with from == address(0) since we are minting
        emit ILSP7DigitalAsset.Transfer({
            operator: address(vault),
            from: address(0),
            to: alice,
            amount: shares,
            force: true,
            data: anyRandomData
        });

        vault.transferStake(address(sLyxToken), shares, anyRandomData);

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        vm.stopPrank();
    }

    function test_shouldRevertWhenPassingZeroAmountToTransferStake() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        uint256 depositAmount = 10 ether;

        startHoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(alice);

        bytes memory expectedRevertData = abi.encodeWithSelector(Vault.InvalidAmount.selector, 0);

        vm.expectRevert(expectedRevertData);
        vault.transferStake(address(sLyxToken), 0, "");

        vm.stopPrank();
    }

    function test_cannotMintSLYXTokensToZeroAddress() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        uint256 depositAmount = 10 ether;
        startHoax(alice, depositAmount);

        vault.deposit{value: depositAmount}(alice);

        bytes memory expectedRevertData = abi.encodeWithSelector(Vault.InvalidAddress.selector, address(0));

        vm.expectRevert(expectedRevertData);
        vault.transferStake(address(0), 5 ether, "");

        vm.stopPrank();
    }

    function test_shouldRegisterSLYXTokensInLSP5ReceivedAssetsWhenUniversalProfileTransferStakeToSLYXTokenContractAddress(
    ) public beforeTest(1_000_000 ether) makeInitialDeposit {
        address mainUPController = makeAddr("main controller");
        UniversalProfile user = UniversalProfileTestHelpers._setUpUniversalProfileLikeBrowserExtension(mainUPController);

        uint256 depositAmount = 100 ether;

        vm.deal(address(user), depositAmount);
        vm.startPrank(mainUPController);

        user.execute(0, address(vault), depositAmount, abi.encodeCall(vault.deposit, (address(user))));

        assertEq(vault.balanceOf(address(sLyxToken)), 0);
        assertEq(vault.balanceOf(address(user)), depositAmount);

        // Check LSP5 Received Assets are not set
        assertEq(user.getData(_LSP5_RECEIVED_ASSETS_ARRAY_KEY), "");

        assertEq(user.getData(LSP2Utils.generateArrayElementKeyAtIndex(_LSP5_RECEIVED_ASSETS_ARRAY_KEY, 0)), "");

        // _LSP5_RECEIVED_ASSETS_MAP_KEY_PREFIX

        user.execute(0, address(vault), 0, abi.encodeCall(vault.transferStake, (address(sLyxToken), depositAmount, "")));
        assertEq(vault.balanceOf(address(user)), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), depositAmount);
        assertEq(sLyxToken.balanceOf(address(user)), depositAmount);

        // Check LSP5 Received Assets data keys have been set
        assertEq(user.getData(_LSP5_RECEIVED_ASSETS_ARRAY_KEY), hex"00000000000000000000000000000001");

        assertEq(
            user.getData(LSP2Utils.generateArrayElementKeyAtIndex(_LSP5_RECEIVED_ASSETS_ARRAY_KEY, 0)),
            abi.encodePacked(sLyxToken)
        );

        assertEq(
            user.getData(
                LSP2Utils.generateMappingKey(_LSP5_RECEIVED_ASSETS_MAP_KEY_PREFIX, bytes20(address(sLyxToken)))
            ),
            abi.encodePacked(_INTERFACEID_LSP7, hex"00000000000000000000000000000000")
        );

        vm.stopPrank();
    }

    /// @dev Test depositing very small amounts
    function test_deposit1WeiAndMintSLYXTokens() public beforeTest(1_000_000 ether) makeInitialDeposit {
        address alice = makeAddr("alice");
        uint256 depositAmount = 1 wei;

        startHoax(alice, depositAmount);

        vault.deposit{value: depositAmount}(alice);

        assertEq(address(vault).balance, _MINIMUM_REQUIRED_SHARES + depositAmount);
        assertEq(vault.balanceOf(alice), depositAmount);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        // assert the vault state
        assertEq(vault.totalStaked(), 0);
        assertEq(vault.totalUnstaked(), _MINIMUM_REQUIRED_SHARES + depositAmount);
        assertEq(vault.totalAssets(), _MINIMUM_REQUIRED_SHARES + depositAmount);

        // Emit the event we expect to see, with from == address(0) since we are minting
        emit ILSP7DigitalAsset.Transfer({
            operator: address(vault),
            from: address(0),
            to: alice,
            amount: depositAmount,
            force: true,
            data: ""
        });

        vault.transferStake(address(sLyxToken), depositAmount, "");

        // assert the vault state
        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), depositAmount);

        // assert the SLYXToken contract state
        assertEq(sLyxToken.balanceOf(alice), depositAmount);

        vm.stopPrank();
    }
}
