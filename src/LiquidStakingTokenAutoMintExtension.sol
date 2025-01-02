// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// Interfaces
import {IVault, IVaultStakeRecipient} from "../src/Vault.sol";
import {ILSP7DigitalAsset as ILSP7} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";

// Modules
import {LSP17Extension} from "@lukso/lsp17contractextension-contracts/contracts/LSP17Extension.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @dev Reverts when an address other than the Liquid Staking Token contract is trying to call
/// the `deposit(address)` function on this LSP17 Extension contract.
error OnlyCallableByLiquidStakingTokenContract(address caller);

/// @dev Reverts when trying to transfer some Vault's stake to this LSP17 Auto Mint extension contract via `transferStake(address,uint256,bytes)`.
/// This prevents funds from being locked, as this contract cannot re-transfer them.
error LSP17AutoMintExtensionCannotHoldVaultStake();

/// @title LSP17 Extension that can be linked to a Liquid Staking Token to allow minting liquid staking tokens immediately while depositing.abi
/// This is achieved by:
/// 1. registering this extension contract for the bytes4 function selector `0xf340fa01` (`deposit(address)`)
/// under the data key `LSP17Extension:<bytes4>` (`0xcee78b4094da860110960000<bytes4>`)
/// 2. call the `deposit(address)` function directly on the Liquid Staking token contract, the same way you would do a deposit on the Staking vault.
/// The calldata will be re-routed to this extension contract which will deposit and transfer the deposited stake of the user
/// to the Liquid Staking token contract and mint LST tokens for the user.
/// For more details, see:
/// - LSP17 docs: https://docs.lukso.tech/standards/accounts/lsp17-contract-extension
/// - LSP17 specs: https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-17-ContractExtension.md
contract LiquidStakingTokenAutoMintExtension is ReentrancyGuard, LSP17Extension {
    IVault internal immutable _VAULT_ADDRESS;
    ILSP7 internal immutable _LIQUID_STAKING_TOKEN;

    constructor(IVault vaultAddress_, ILSP7 liquidStakingToken_) {
        _VAULT_ADDRESS = vaultAddress_;
        _LIQUID_STAKING_TOKEN = liquidStakingToken_;
    }

    /// @dev Re-routing function that allow users to make deposit and mint immediately liquid staking tokens in a single transaction.
    /// This removes the need to do 2 x separate transactions (first for depositing, second for transferring the stake to LST token contract
    /// and mint LST tokens for the user).
    /// This function can only be called by the Liquid Staking token contract that this extension is linked to
    function deposit(address beneficiary) external payable nonReentrant {
        if (msg.sender != address(_LIQUID_STAKING_TOKEN)) {
            revert OnlyCallableByLiquidStakingTokenContract(msg.sender);
        }

        _VAULT_ADDRESS.deposit{value: msg.value}(address(this));
        _VAULT_ADDRESS.transferStake(address(_LIQUID_STAKING_TOKEN), msg.value, "");
        _LIQUID_STAKING_TOKEN.transfer({from: address(this), to: beneficiary, amount: msg.value, force: true, data: ""});
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @dev Do not allow this LSP17 Extension to hold any Vault's stake, as it cannot re-transfer them.
    /// This prevents funds from being locked in this contract.
    function onVaultStakeReceived(address, /* from */ uint256, /* amount */ bytes calldata /* data */ ) external pure {
        revert LSP17AutoMintExtensionCannotHoldVaultStake();
    }
}
