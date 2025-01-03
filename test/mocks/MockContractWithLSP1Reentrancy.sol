// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {ILSP1UniversalReceiver} from "@lukso/lsp1-contracts/contracts/ILSP1UniversalReceiver.sol";
import {IVault} from "../../src/Vault.sol";

import {_INTERFACEID_LSP1} from "@lukso/lsp1-contracts/contracts/LSP1Constants.sol";

contract MockContractWithLSP1Reentrancy is ILSP1UniversalReceiver {
    IVault internal immutable _STAKING_VAULT;
    address internal immutable _LIQUID_STAKING_TOKEN;

    constructor(IVault stakingVault_, address liquidStakingToken_) {
        _STAKING_VAULT = stakingVault_;
        _LIQUID_STAKING_TOKEN = liquidStakingToken_;
    }

    receive() external payable {}

    function supportsInterface(bytes4 interfaceId) public view virtual returns (bool) {
        return interfaceId == _INTERFACEID_LSP1 || interfaceId == this.supportsInterface.selector;
    }

    function callDeposit(uint256 amountToStake) external {
        require(address(this).balance >= amountToStake, "Cannot deposit more than available balance");
        _STAKING_VAULT.deposit{value: amountToStake}(address(this));
    }

    function callTransferStake(uint256 amount) external {
        _STAKING_VAULT.transferStake(_LIQUID_STAKING_TOKEN, amount, "");
    }

    function universalReceiver(bytes32, /* typeId */ bytes calldata /* data */ )
        external
        payable
        returns (bytes memory)
    {
        // amount hardcoded here for simplicity
        _STAKING_VAULT.transferStake(_LIQUID_STAKING_TOKEN, 10 ether, "");
        return "";
    }
}
