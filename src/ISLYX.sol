// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface ISLYX {
    function getNativeTokenValue(uint256 stakingTokenAmount) external view returns (uint256);

    function getSLYXTokenValue(uint256 nativeTokenAmount) external view returns (uint256);

    function getExchangeRate() external view returns (uint256);
}
