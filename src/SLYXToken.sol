// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// Interfaces
import {ITransparentUpgradeableProxy as ITransparentProxy} from
    "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {IVault, IVaultStakeRecipient} from "UniversalPage-contracts/src/pool/Vault.sol";
import {ISLYX} from "./ISLYX.sol";

// Modules
import {LSP7DigitalAssetInitAbstract} from "@lukso/lsp7-contracts/contracts/LSP7DigitalAssetInitAbstract.sol";
import {LSP7BurnableInitAbstract} from "@lukso/lsp7-contracts/contracts/extensions/LSP7BurnableInitAbstract.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

// Errors
import {InvalidRecipientForSLYXTokensTransfer, OnlyVaultAllowedToMint, InvalidVaultAddress} from "./Errors.sol";

// Token staking is a process that involves holding assets in a contract to support protocol operations such as market making.
// In exchange, the asset holders are rewarded with tokens which could be of the same type that they deposited, or not.
//
// The Simple Rewards contract allows users to stake native tokens, and are rewarded with a rewardsToken, which they must claim.
// They can withdraw their stake at any time, but rewards stop accruing for them.
// It is a permissionless contract that will distribute rewards during an interval defined on deployment. That is all that it is
/// @dev For depositing native tokens
contract SLYXToken is
    IVaultStakeRecipient,
    ISLYX,
    LSP7DigitalAssetInitAbstract,
    LSP7BurnableInitAbstract,
    PausableUpgradeable
{
    using Math for uint256;

    IVault public stakingVault;

    constructor() {
        _disableInitializers();
    }

    function initialize(address tokenContractOwner_, IVault stakingVault_) external initializer {
        if (address(stakingVault_) == address(0)) {
            revert InvalidVaultAddress(address(stakingVault_));
        }

        __Pausable_init();

        LSP7DigitalAssetInitAbstract._initialize({
            name_: "Stakingverse Staked LYX (sLYX)",
            symbol_: "sLYX",
            newOwner_: tokenContractOwner_,
            lsp4TokenType_: _LSP4_TOKEN_TYPE_TOKEN,
            isNonDivisible_: false
        });

        stakingVault = stakingVault_;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    /// @notice Mint new sLYX tokens by transferring LYX staked in the Vault to this SLYXToken contract.
    /// @dev This hook is called when calling the `transferStake(address,uint256,bytes)` function on the linked staking vault. Only the linked vault can call this function.
    /// New sLYX minted can be monitored by listening for the `Transfer` event on the SLYXToken contract and filtering with `address(0)` as `from`.
    /// sLYX tokens can only be minted when the contract is not paused.
    function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external whenNotPaused {
        if (msg.sender != address(stakingVault)) {
            revert OnlyVaultAllowedToMint(msg.sender);
        }

        uint256 shares = Math.mulDiv(amount, stakingVault.totalShares(), stakingVault.totalAssets());

        // mint sLYX tokens for the `from` address
        _mint({to: from, amount: shares, force: true, data: data});
    }

    /// @dev Burning function that allows to convert sLYX back to LYX only when the contract is not paused.
    function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {
        super.burn(from, amount, data);
    }

    /// @dev Calculate the amount of LYX backing an amount of sLYX.
    ///
    /// Formula:
    /// (sLYX amount * total stake held by sLYX contract in Vault) / total sLYX minted
    function getNativeTokenValue(uint256 sLyxAmount) public view returns (uint256) {
        // Get the total number of sLYX tokens minted.
        uint256 totalSLYXMinted = totalSupply();
        // Get the total LYX balance held by the sLYX contract on the Vault.
        uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this));

        // Calculate how many % the amount being burnt in proportion to the total supply.
        return sLyxAmount.mulDiv(sLyxTokenContractStake, totalSLYXMinted);
    }

    /// @dev Calculate the amount of sLYX backed by an amount of LYX.
    ///
    /// Formula:
    /// (LYX amount * total sLYX minted) / total stake held by sLYX contract in Vault
    function getSLYXTokenValue(uint256 lyxAmount) public view returns (uint256) {
        uint256 totalSLYXMinted = totalSupply();
        uint256 sLYXTokenContractStake = stakingVault.balanceOf(address(this));

        return lyxAmount.mulDiv(totalSLYXMinted, sLYXTokenContractStake);
    }

    /// @dev Get the current LYX / sLYX exchange rate
    /// @return The amount of LYX backing 1 sLYX
    function getExchangeRate() external view returns (uint256) {
        return getNativeTokenValue(1 ether);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @dev Cannot transfer sLYX to the Vault itself or the SLYX Token contract itself otherwise they would get stuck.
    function _beforeTokenTransfer(address, /* from */ address to, uint256, /* amount */ bytes memory /* data */ )
        internal
        virtual
        override
    {
        if (to == address(this) || to == address(stakingVault)) {
            revert InvalidRecipientForSLYXTokensTransfer(to);
        }

        // Check we did not pass the Vault implementation / logic contract address
        // Currently deployed Vault is implemented as a Transparent Upgradable Proxy (ERC1967)
        // at address:
        // The call to retrieve the implementation address is wrapped in a `try catch` block to prevent scenario
        // where this assumption is broken, meaning another proxy pattern is used.
        // If that is the case, the call would revert, preventing transfer of any tokens.
        try ITransparentProxy(address(stakingVault)).implementation() returns (address implementation) {
            if (to == implementation) {
                revert InvalidRecipientForSLYXTokensTransfer(to);
            }
        } catch {}
    }

    /// @dev If tokens are being burnt:
    /// 1. convert `amount` of sLYX to the equivalent amount as LYX staked in the linked staking vault (including any accrued rewards).
    /// 2. transfer this equivalent amount back as staked LYX to `from`.
    ///
    /// This is based on the sLYX / staked LYX ratio. The function accepts rounding error of 1 Wei as loss.
    /// Note that the `transferStake` call is done in this hook after balances and total supply have been decreased
    /// to follow the check-effect-interaction pattern as best practice.
    function _afterTokenTransfer(address from, address to, uint256 amount, bytes memory data)
        internal
        virtual
        override
    {
        // if we are burning sLYX tokens, re-transfer stake to `from`
        if (to == address(0)) {
            // Calculate the number of LYX that should be transferred back to the user for burning its tokens
            uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this));

            // Since we are in the `_afterTokenTransfer` hook, balances and total supply have already been decreased.
            // We need to account the burnt amount in the total supply for the calculation.
            uint256 totalSLYXMintedBeforeBurning = totalSupply() + amount;

            uint256 sLyxAmountAsLyxStake = amount.mulDiv(sLyxTokenContractStake, totalSLYXMintedBeforeBurning);

            stakingVault.transferStake(from, sLyxAmountAsLyxStake, data);
        }
    }
}
