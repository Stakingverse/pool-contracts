// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {SLYXTokenBaseTest} from "./base/SLYXTokenBaseTest.t.sol";
import {_INTERFACEID_LSP7} from "@lukso/lsp7-contracts/contracts/LSP7Constants.sol";
import {IVaultStakeRecipient} from "../src/IVaultStakeRecipient.sol";

// Constants
import {
    _LSP4_TOKEN_TYPE_TOKEN,
    _LSP4_TOKEN_NAME_KEY,
    _LSP4_TOKEN_SYMBOL_KEY,
    _LSP4_TOKEN_TYPE_KEY
} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

/// @title Deployment Tests
// ------------------------
contract Deployment is SLYXTokenBaseTest {
    function setUp() public {
        _setUpSLYXToken();
    }

    function test_deploymentParametersOfSLYXToken() public view {
        // We need to re-encode in memory, as in the ERC725Y storage, strings are not stored as [string.length][string]
        bytes memory encodedName = abi.encode(sLyxToken.getData(_LSP4_TOKEN_NAME_KEY));
        string memory name = abi.decode(encodedName, (string));

        bytes memory encodedSymbol = abi.encode(sLyxToken.getData(_LSP4_TOKEN_SYMBOL_KEY));
        string memory symbol = abi.decode(encodedSymbol, (string));

        uint256 tokenType = abi.decode(sLyxToken.getData(_LSP4_TOKEN_TYPE_KEY), (uint256));
        uint256 decimals = sLyxToken.decimals();
        address owner = sLyxToken.owner();

        assertEq(name, "Stakingverse Staked LYX (sLYX)");
        assertEq(symbol, "sLYX");
        assertEq(tokenType, _LSP4_TOKEN_TYPE_TOKEN);
        assertEq(decimals, 18);
        assertEq(owner, tokenContractOwner);
    }

    function test_totalSupplyOfSLYXIsZeroInitially() public view {
        assertEq(sLyxToken.totalSupply(), 0);
    }

    function test_shouldHaveSetCorrectLinkedStakingVault() public view {
        assertEq(address(sLyxToken.stakingVault()), address(vault));
    }

    function test_cannotInitializeSLYXTokenImplementationContract() public {
        vm.expectRevert("Initializable: contract is already initialized");
        sLyxTokenImplementation.initialize(address(111), vault);
    }

    function test_SLYXTokenContractIsNotPausedOnDeployment() public view {
        assertEq(sLyxToken.paused(), false);
    }

    function test_supportsCorrectInterfaces() public view {
        assertEq(sLyxToken.supportsInterface(type(IVaultStakeRecipient).interfaceId), true);
        assertEq(sLyxToken.supportsInterface(_INTERFACEID_LSP7), true);
    }
}
