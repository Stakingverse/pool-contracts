// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

/// @dev Reverts when trying to transfer sLYX to one of these invalid recipient address:
/// - the sLYX token contract
/// - the vault proxy contract
/// - the vault logic implementation contract
error InvalidRecipientForSLYXTokensTransfer(address recipient);

/// @dev Reverts when an address other than the vault is trying to mint sLYX
error OnlyVaultAllowedToMint(address caller);

/// @dev Revert when providing address(0) for the Vault on initialization
error InvalidVaultAddress(address stakingVault_);

/// @dev Revert when providing address(0) for the sLYX Token on initialization
error InvalidSLYXTokenAddress(address stakingVault_);

/// @dev Reverts when an address other than the sLYX Token contract is trying to call
/// the `deposit(address)` function on this LSP17 Extension contract.
error OnlyCallableBySLYXTokenContract(address caller);

/// @dev Reverts when trying to transfer some Vault's stake to this LSP17 Auto Mint extension contract via `transferStake(address,uint256,bytes)`.
/// This prevents funds from being locked, as this contract cannot re-transfer them.
error LSP17AutoMintExtensionCannotHoldVaultStake();
