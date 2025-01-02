// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IDepositContract} from "../../src/IDepositContract.sol";

/// @dev Code taken from Universal.Page test suite.
/// This code could be improved to better simulate actual deposits made to the contracts.
/// With the actual deposit contract code.
contract MockDepositContract is IDepositContract {
    bytes32 public depositRoot;
    uint256 public depositCount;

    function deposit(bytes calldata, bytes calldata, bytes calldata, bytes32) external payable override {
        depositCount++;
    }

    function get_deposit_root() external view override returns (bytes32) {
        return depositRoot;
    }

    function get_deposit_count() external view override returns (bytes memory) {
        return abi.encodePacked(depositCount);
    }
}
