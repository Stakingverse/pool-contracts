// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.22;

interface IVaultStakeRecipient {
    /// @notice Amount of stake have been transfered to the recipient.
    /// @param from The address of the sender.
    /// @param amount The amount of stake.
    /// @param data Additional data.
    function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external;
}
