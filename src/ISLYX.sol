// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface ISLYX {
    /// @notice Calculate the amount of sLYX tokens to the equivalent staked LYX (including accumulated rewards) in the linked vault.
    ///
    /// @dev This function determines the amount of native tokens (staked LYX) that are backing a given amount of sLYX tokens.
    /// Formula: (sLYX amount * total LYX stake held by the `SLYXToken` contract address in the vault) / total sLYX minted.
    ///
    /// @param sLyxAmount The amount (in wei) of sLYX tokens to convert to staked LYX.
    /// @return The equivalent amount of staked LYX (in wei) backing the specified sLYX amount.
    function getNativeTokenValue(uint256 sLyxAmount) external view returns (uint256);

    /// @notice Calculate how many sLYX tokens can be obtained in exchange for `stakedLyxAmount`.
    ///
    /// @dev Calculate the amount of sLYX backing an amount of LYX.
    /// Formula: (LYX amount * total sLYX minted) / total stake held by the `SLYXToken` contract address in the Vault.
    ///
    /// @param stakedLyxAmount The amount (in wei) of staked LYX to convert into sLYX tokens.
    /// @return The equivalent amount of sLYX (in wei) backing a specific amount of staked LYX.
    function getSLYXTokenValue(uint256 stakedLyxAmount) external view returns (uint256);

    /// @dev Get the current sLYX / LYX exchange rate to calculate how many sLYX back a certain amount of LYX.
    /// @return The amount of LYX backing 1 sLYX (in wei).
    function getExchangeRate() external view returns (uint256);
}
