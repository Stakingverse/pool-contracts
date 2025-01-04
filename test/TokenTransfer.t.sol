// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Testing
import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {Vault} from "../src/Vault.sol";
import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";
import {SLYXToken} from "../src/SLYXToken.sol";

// Interfaces
import {ILSP7DigitalAsset} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";
import {IVault} from "../src/Vault.sol";

// Libraries
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";

// Errors
import {LSP7CannotSendWithAddressZero, LSP7AmountExceedsBalance} from "@lukso/lsp7-contracts/contracts/LSP7Errors.sol";
import {InvalidRecipientForSLYXTokensTransfer} from "../src/SLYXToken.sol";

/// @title Testing Token `transfer(address,address,uint256,bool,bytes)` function
// ----------------------------------------------------------------------
contract TokenTransfer is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken();
    }

    function test_cannotTransferTokensWithVaultAsRecipient(address anyAddress) public beforeTest(1_000_000 ether) {
        vm.assume(anyAddress != address(0));
        vm.assume(anyAddress != proxyAdmin);
        vm.assume(anyAddress != vaultOwner);
        vm.assume(anyAddress != address(vault));
        vm.assume(anyAddress != address(vaultImplementation));
        vm.assume(anyAddress != address(sLyxToken));
        vm.assume(anyAddress != address(sLyxTokenImplementation));
        assumeNotPrecompile(anyAddress);

        vm.deal(anyAddress, 100 ether);
        vm.startPrank(anyAddress);
        vault.deposit{value: 100 ether}(anyAddress);

        uint256 userBalance = vault.balanceOf(anyAddress);
        vault.transferStake(address(sLyxToken), userBalance, "");

        vm.expectRevert();
        sLyxToken.transfer(anyAddress, address(vault), 100 ether, true, "");

        vm.stopPrank();
    }

    function test_cannotTransferTokensWithSLYXTokenContractAsRecipient() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        vm.prank(alice);
        vm.expectRevert();
        sLyxToken.transfer(alice, address(sLyxToken), shares, true, "");
    }

    function test_cannotTransferTokensWithVaultImplementationAsRecipient() public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        bytes memory expectedRevertData =
            abi.encodeWithSelector(InvalidRecipientForSLYXTokensTransfer.selector, address(vaultImplementation));

        vm.prank(alice);
        vm.expectRevert(expectedRevertData);
        sLyxToken.transfer(alice, address(vaultImplementation), shares, true, "");
    }

    function test_transferDoesNotFailIfVaultProxyIsNotEIP1967() public {
        vault = Vault(payable(Clones.clone(address(vaultImplementation))));
        vault.initialize(vaultOwner, vaultOperator, depositContract);

        vm.startPrank(vaultOperator);
        vault.enableOracle(vaultOracle, true);
        vault.setFee(10_000);
        vault.setFeeRecipient(vaultFeeRecipient);
        vault.setDepositLimit(320 ether);
        vm.stopPrank();

        sLyxTokenImplementation = new SLYXToken();

        sLyxToken =
            SLYXToken(payable(new TransparentUpgradeableProxy(address(sLyxTokenImplementation), proxyAdmin, "")));

        sLyxToken.initialize(tokenContractOwner, vault);

        address alice = makeAddr("alice");
        address bob = makeAddr("bob");
        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);
        assertEq(sLyxToken.balanceOf(alice), shares);
        assertEq(sLyxToken.balanceOf(bob), 0);

        vm.prank(alice);
        sLyxToken.transfer(alice, bob, shares, true, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(bob), shares);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);
    }

    function test_cannotTransferTokensToZeroAddress() public beforeTest(1_000 ether) {
        address alice = makeAddr("alice");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        bytes memory revertError = abi.encodePacked(LSP7CannotSendWithAddressZero.selector);

        vm.prank(alice);
        vm.expectRevert(revertError);
        sLyxToken.transfer(alice, address(0), shares, true, "");
    }

    function test_cannotTransferMoreTokensThanActualBalance(uint256 amount) public beforeTest(1_000_000 ether) {
        address alice = makeAddr("alice");
        address recipient = makeAddr("recipient");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);

        vm.assume(amount > shares);

        bytes memory revertError = abi.encodeWithSelector(LSP7AmountExceedsBalance.selector, shares, alice, amount);

        vm.prank(alice);
        vm.expectRevert(revertError);
        sLyxToken.transfer(alice, recipient, amount, true, "");
    }

    function test_canTransferFullAmountSuccessfully(uint256 amount)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        vm.assume(amount <= 1_000_000 ether - 100 ether); // ensure we don't go over the deposit limit including the initial deposit

        address alice = makeAddr("alice");
        address recipient = makeAddr("recipient");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, amount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);
        assertEq(sLyxToken.balanceOf(alice), shares);
        assertEq(sLyxToken.balanceOf(recipient), 0);

        // Emit the events we expect to see.
        vm.prank(alice);
        vm.expectEmit(true, true, true, true, address(sLyxToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: alice,
            from: alice,
            to: recipient,
            amount: shares,
            force: true,
            data: ""
        });
        sLyxToken.transfer(alice, recipient, shares, true, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(recipient), shares);
    }

    function test_canTransferTokensAndRecipientCanConvertBackToStakeByBurning(uint256 amount)
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        vm.assume(amount <= 1_000_000 ether - 100 ether); // ensure we don't go over the deposit limit including the initial deposit
        address alice = makeAddr("alice");
        address recipient = makeAddr("recipient");

        uint256 aliceStake = _depositAndClaimAllAsSLYXTokens(alice, amount, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake);
        assertEq(sLyxToken.balanceOf(alice), aliceStake);
        assertEq(sLyxToken.balanceOf(recipient), 0);

        vm.prank(alice);
        sLyxToken.transfer(alice, recipient, aliceStake, true, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(sLyxToken.balanceOf(recipient), aliceStake);

        // Emit the events we expect to see.
        vm.expectEmit(true, true, true, true, address(sLyxToken));
        emit ILSP7DigitalAsset.Transfer({
            operator: recipient,
            from: recipient,
            to: address(0),
            amount: aliceStake,
            force: false,
            data: ""
        });

        vm.expectEmit(true, true, false, false, address(vault));
        emit IVault.StakeTransferred({from: address(sLyxToken), to: recipient, amount: aliceStake, data: ""});
        vm.prank(recipient);
        sLyxToken.burn(recipient, aliceStake, "");

        assertEq(sLyxToken.balanceOf(recipient), 0);
        assertEq(vault.balanceOf(recipient), aliceStake);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);
    }

    function test_canTransferWithZeroAmountSuccessfully() public beforeTest(1_000 ether) {
        address alice = makeAddr("alice");
        address recipient = makeAddr("recipient");

        uint256 shares = _depositAndClaimAllAsSLYXTokens(alice, 100 ether, "");

        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), shares);
        assertEq(sLyxToken.balanceOf(alice), shares);
        assertEq(sLyxToken.balanceOf(recipient), 0);

        // Emit the events we expect to see.
        vm.expectEmit(true, true, true, true, address(sLyxToken));
        emit ILSP7DigitalAsset.Transfer({operator: alice, from: alice, to: recipient, amount: 0, force: true, data: ""});
        vm.prank(alice);
        sLyxToken.transfer(alice, recipient, 0, true, "");

        assertEq(sLyxToken.balanceOf(alice), shares);
        assertEq(sLyxToken.balanceOf(recipient), 0);
    }
}
