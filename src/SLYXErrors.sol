// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

/// @dev Reverts when trying to transfer sLYX to one of these invalid recipient address:
/// - the sLYX token contract
/// - the vault proxy contract
/// - the vault logic implementation contract
///
/// @param recipient One the three recipient address mentioned above.
error InvalidRecipientForSLYXTokensTransfer(address recipient);

/// @dev Reverts when an address other than the vault is trying to mint sLYX
/// @param caller The address trying to mint sLYX tokens.
error OnlyVaultAllowedToMintSLYX(address caller);

/// @dev Revert when providing address(0) for the Vault when initializing the SLYX token contract.
error InvalidVaultAddress(address stakingVault_);
