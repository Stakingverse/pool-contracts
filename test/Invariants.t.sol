// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ITransparentUpgradeableProxy as IProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";

// Testing
import {LiquidStakingTokenBaseTest} from "./base/LiquidStakingTokenBaseTest.t.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN, _LSP4_TOKEN_NAME_KEY, _LSP4_TOKEN_SYMBOL_KEY, _LSP4_TOKEN_TYPE_KEY} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

/// @title Foundry invariant tests
// -----------------------------------------------------
contract Invariants is LiquidStakingTokenBaseTest {
    function setUp() public {
        _setUpLiquidStakingToken({setDepositExtension: false});
    }

    function invariant_metadataIsConstant() public view {
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

        assertEq(name, "Staked LYX");
        assertEq(symbol, "sLYX");
        assertEq(tokenType, _LSP4_TOKEN_TYPE_TOKEN);
        assertEq(decimals, 18);
    }

    function testInvariant_mintingAffectsTotalSupplyAndBalance(
        address to,
        uint256 amount
    ) public beforeTest(1_000_000 ether) makeInitialDeposit {
        vm.assume(amount <= 1_000_000 ether - _VAULT_INITIAL_DEPOSIT);

        assumeNotPrecompile(to);
        vm.assume(to != address(0));
        vm.assume(to != address(liquidStakingToken));
        vm.assume(to != address(liquidStakingToken.stakingVault()));
        vm.assume(to != address(vaultImplementation));

        uint256 preSupply = liquidStakingToken.totalSupply();

        _depositAndClaimAllAsLiquidStakingTokens({
            user: to,
            depositAmount: amount,
            optionalData: ""
        });

        uint256 postSupply = liquidStakingToken.totalSupply();
        uint256 toBalance = liquidStakingToken.balanceOf(to);

        assertEq(
            postSupply,
            preSupply + amount,
            "Total supply did not increase correctly after minting"
        );

        assertEq(
            toBalance,
            amount,
            "Recipient balance incorrect after minting"
        );
    }
}
