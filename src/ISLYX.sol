// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

interface ISLYX {
    /// @notice Calculate how many staked LYX (including accumulated rewards) in the vault can be obtained in exchange for `sLYXAmount`.
    ///
    /// @dev Determine the value of sLYX in terms of the native token balance (LYX) staked in the vault.
    /// This function calculates the amount of LYX backing an amount of sLYX.
    /// Formula: (sLYX amount * total stake held by sLYX contract in Vault) / total sLYX minted.
    ///
    /// @param sLyxAmount The amount of sLYX to convert to staked LYX.
    /// @return The amount of staked LYX backing a specific sLYX amount (in wei).
    function getNativeTokenValue(uint256 sLyxAmount) external view returns (uint256);

    /// @notice Calculate how many sLYX tokens can be obtained when converting `stakedLyxAmount`.
    ///
    /// @dev Calculate the amount of sLYX backing an amount of LYX.
    /// Formula: (LYX amount * total sLYX minted) / total stake held by sLYX contract in Vault.
    ///
    /// @param stakedLyxAmount The amount of staked LYX to calculate if exchanging to mint sLYX tokens.
    /// @return The amount of sLYX backing a specific amount of staked LYX (in wei).
    function getSLYXTokenValue(uint256 stakedLyxAmount) external view returns (uint256);

    /// @dev Get the current sLYX / LYX exchange rate to calculate how many sLYX are backing a certain amount of LYX.
    /// @return The amount of LYX backing 1 sLYX (in wei).
    function getExchangeRate() external view returns (uint256);
}
