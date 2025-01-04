// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// Interfaces
import {IVault, IVaultStakeRecipient} from "./Vault.sol";
import {ILSP7DigitalAsset as ILSP7} from "@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol";

// Modules
import {LSP17Extension} from "@lukso/lsp17contractextension-contracts/contracts/LSP17Extension.sol";
import {ReentrancyGuard} from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

// Errors
import {
    InvalidVaultAddress,
    InvalidSLYXTokenAddress,
    OnlyCallableBySLYXTokenContract,
    LSP17AutoMintExtensionCannotHoldVaultStake
} from "./Errors.sol";

/// @title LSP17 Extension that can be linked to a Liquid Staking Token to allow minting liquid staking tokens immediately while depositing.abi
/// This is achieved by:
/// 1. registering this extension contract for the bytes4 function selector `0xf340fa01` (`deposit(address)`)
/// under the data key `LSP17Extension:<bytes4>` (`0xcee78b4094da860110960000<bytes4>`)
/// 2. call the `deposit(address)` function directly on the Liquid Staking token contract, the same way you would do a deposit on the Staking vault.
/// The calldata will be re-routed to this extension contract which will deposit and transfer the deposited stake of the user
/// to the Liquid Staking token contract and mint sLYX tokens for the user.
/// For more details, see:
/// - LSP17 docs: https://docs.lukso.tech/standards/accounts/lsp17-contract-extension
/// - LSP17 specs: https://github.com/lukso-network/LIPs/blob/main/LSPs/LSP-17-ContractExtension.md
contract SLYXTokenAutoMintExtension is ReentrancyGuard, LSP17Extension {
    IVault internal immutable _STAKING_VAULT;
    ILSP7 internal immutable _SLYX_TOKEN;

    constructor(IVault stakingVault_, ILSP7 sLyxToken_) {
        if (address(stakingVault_) == address(0)) {
            revert InvalidVaultAddress(address(stakingVault_));
        }

        if (address(sLyxToken_) == address(0)) {
            revert InvalidSLYXTokenAddress(address(sLyxToken_));
        }

        _STAKING_VAULT = stakingVault_;
        _SLYX_TOKEN = sLyxToken_;
    }

    /// @dev Re-routing function that allow users to make deposit and mint immediately liquid staking tokens in a single transaction.
    /// This removes the need to do 2 x separate transactions (first for depositing, second for transferring the stake to SLYX Token contract
    /// and mint sLYX tokens for the user).
    /// This function can only be called by the Liquid Staking token contract that this extension is linked to
    function deposit(address beneficiary) external payable nonReentrant {
        if (msg.sender != address(_SLYX_TOKEN)) {
            revert OnlyCallableBySLYXTokenContract(msg.sender);
        }

        _STAKING_VAULT.deposit{value: msg.value}(address(this));
        _STAKING_VAULT.transferStake(address(_SLYX_TOKEN), msg.value, "");
        _SLYX_TOKEN.transfer({from: address(this), to: beneficiary, amount: msg.value, force: true, data: ""});
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
