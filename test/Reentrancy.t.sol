// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ITransparentUpgradeableProxy as IProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";

// Mocks
import {MockContractWithLSP1Reentrancy} from "./mocks/MockContractWithLSP1Reentrancy.sol";

/// @title Security tests around Reentrancy
// ----------------------------------------
contract Reentrancy is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function test_cannotReenterOnVaultStakeReceivedViaTransferStake()
        public
        beforeTest(1_000_000 ether)
        makeInitialDeposit
    {
        MockContractWithLSP1Reentrancy alice = new MockContractWithLSP1Reentrancy(
                vault,
                address(liquidStakingToken)
            );
        vm.deal(address(alice), 200 ether);

        uint256 amountToStake = 100 ether;
        alice.callDeposit(amountToStake);
        uint256 shares = vault.balanceOf(address(alice));

        // this call should trigger re-entrancy via the `universalReceiver` function
        vm.expectRevert(bytes("ReentrancyGuard: reentrant call"));
        alice.callTransferStake(shares);
    }
}