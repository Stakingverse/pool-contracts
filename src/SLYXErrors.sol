// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

/// @dev Reverts when trying to transfer sLYX to either the sLYX token contract or the vault contract.
/// @param invalidRecipient One the recipient addresses mentioned in the previous comment.
error InvalidRecipientForSLYXTokensTransfer(address invalidRecipient);

/// @dev Reverts when an address other than the vault is trying to mint sLYX.
/// @param caller The address trying to mint sLYX tokens.
error OnlyVaultAllowedToMintSLYX(address caller);

/// @dev Reverts when providing `address(0)` for the Vault when initializing the `SLYXToken` contract.
error InvalidVaultAddress(address stakingVault_);
