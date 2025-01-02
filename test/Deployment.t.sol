// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN, _LSP4_TOKEN_NAME_KEY, _LSP4_TOKEN_SYMBOL_KEY, _LSP4_TOKEN_TYPE_KEY} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

/// @title Deployment Tests
// ------------------------
contract Deployment is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function test_deploymentParametersOfLSTToken() public view {
        // We need to re-encode in memory, as in the ERC725Y storage, strings are not stored as [string.length][string]
        bytes memory encodedName = abi.encode(
            liquidStakingToken.getData(_LSP4_TOKEN_NAME_KEY)
        );
        string memory name = abi.decode(encodedName, (string));

        bytes memory encodedSymbol = abi.encode(
            liquidStakingToken.getData(_LSP4_TOKEN_SYMBOL_KEY)
        );
        string memory symbol = abi.decode(encodedSymbol, (string));

        uint256 tokenType = abi.decode(
            liquidStakingToken.getData(_LSP4_TOKEN_TYPE_KEY),
            (uint256)
        );
        uint256 decimals = liquidStakingToken.decimals();
        address owner = liquidStakingToken.owner();

        assertEq(name, "Staked LYX");
        assertEq(symbol, "sLYX");
        assertEq(tokenType, _LSP4_TOKEN_TYPE_TOKEN);
        assertEq(decimals, 18);
        assertEq(owner, tokenContractOwner);
    }

    function test_totalSupplyLSTZeroInitially() public view {
        assertEq(liquidStakingToken.totalSupply(), 0);
    }

    function test_shouldHaveSetCorrectLinkedStakingVault() public view {
        assertEq(address(liquidStakingToken.stakingVault()), address(vault));
    }

    function test_cannotInitializeLSTImplementationContract() public {
        vm.expectRevert();
        liquidStakingTokenImplementation.initialize(address(111), vault);
    }

    function test_contractIsNotPausedOnDeployment() public view {
        assertEq(liquidStakingToken.paused(), false);
    }
}
