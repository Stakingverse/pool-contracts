// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// Interfaces
import {ITransparentUpgradeableProxy as IProxy} from
    "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {IVault, IVaultStakeRecipient} from "UniversalPage-contracts/src/pool/Vault.sol";
import {ILiquidStakingToken} from "./ILiquidStakingToken.sol";

// Modules
import {LSP7DigitalAssetInitAbstract} from "@lukso/lsp7-contracts/contracts/LSP7DigitalAssetInitAbstract.sol";
import {LSP7BurnableInitAbstract} from "@lukso/lsp7-contracts/contracts/extensions/LSP7BurnableInitAbstract.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

import {InvalidRecipientForLSTTokensTransfer, OnlyVaultAllowedToMint, InvalidVaultAddress} from "./Errors.sol";

// Token staking is a process that involves holding assets in a contract to support protocol operations such as market making.
// In exchange, the asset holders are rewarded with tokens which could be of the same type that they deposited, or not.
//
// The Simple Rewards contract allows users to stake native tokens, and are rewarded with a rewardsToken, which they must claim.
// They can withdraw their stake at any time, but rewards stop accruing for them.
// It is a permissionless contract that will distribute rewards during an interval defined on deployment. That is all that it is
/// @dev For depositing native tokens
contract LiquidStakingToken is
    IVaultStakeRecipient,
    ILiquidStakingToken,
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
            name_: "Staked LYX",
            symbol_: "sLYX",
            newOwner_: tokenContractOwner_,
            lsp4TokenType_: _LSP4_TOKEN_TYPE_TOKEN, // token
            isNonDivisible_: false
        });

        stakingVault = stakingVault_;
    }

    function pause() external onlyOwner whenNotPaused {
        _pause();
    }

    function unpause() external onlyOwner whenPaused {
        _unpause();
    }

    /// @notice Mint new LST tokens when this callback hook is called by the linked staking vault.
    /// @dev New LST minted can be monitored by listening for the `Transfer` event with operator being the vault.
    function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external whenNotPaused {
        if (msg.sender != address(stakingVault)) {
            revert OnlyVaultAllowedToMint(msg.sender);
        }

        // mint LST tokens for the `from`
        _mint({to: from, amount: amount, force: true, data: data});
    }

    /// @dev Burning function that allows to convert sLYX back to LYX only when the contract is not paused
    function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {
        super.burn(from, amount, data);
    }

    /// @dev Calculate the amount of LYX backing an amount of sLYX
    function getNativeTokenValue(uint256 sLyxAmount) public view returns (uint256) {
        // Get the total number of shares this LST contract holds (= equivalent to total number of LST tokens minted).
        uint256 totalSLYXMinted = stakingVault.sharesOf(address(this));
        // Get the total LYX balance held by the LST contract on the Vault
        uint256 lstTokenContractStake = stakingVault.balanceOf(address(this));

        // Calculate how many % the amount being burnt in proportion to the total supply
        // (sLyxAmount * lstTokenContractStake) / totalSLYXMinted
        return sLyxAmount.mulDiv(lstTokenContractStake, totalSLYXMinted);
    }

    /// @dev Calculate the amount of sLYX backed by an amount of LYX
    function getLiquidStakingTokenValue(uint256 lyxAmount) public view returns (uint256) {
        uint256 lstTokenContractStake = stakingVault.balanceOf(address(this));
        uint256 totalSLYXMinted = stakingVault.sharesOf(address(this));

        return lyxAmount.mulDiv(totalSLYXMinted, lstTokenContractStake);
    }

    /// @dev Get the current LYX / sLYX exchange rate
    /// @return The amount of LYX backing 1 sLYX
    function getExchangeRate() external view returns (uint256) {
        return getNativeTokenValue(1 ether);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @dev cannot transfer sLYX to the Vault itself or the LST contract itself otherwise they would get stuck.
    function _beforeTokenTransfer(address, /* from */ address to, uint256, /* amount */ bytes memory /* data */ )
        internal
        virtual
        override
    {
        if (to == address(this) || to == address(stakingVault) || to == IProxy(address(stakingVault)).implementation())
        {
            revert InvalidRecipientForLSTTokensTransfer(to);
        }
    }

    /// @dev If tokens are being burnt:
    /// 1. convert `amount` of sLyx to the equivalent amount as LYX stake in the linked staking vault (including any proportion of accrued rewards).
    /// 2. transfer this equivalent amount back as stake LYX to `from`.
    ///
    /// This is based on the sLYX / staked LYX ratio. The function accepts rounding error of 1 Wei as loss.
    function _afterTokenTransfer(address from, address to, uint256 amount, bytes memory data)
        internal
        virtual
        override
    {
        // if we are burning LST tokens, re-transfer stake to user
        if (to == address(0)) {
            // Calculate the number of LYX that should be transferred back to the user for burning its tokens
            uint256 lstAmountAsLyxStake = getNativeTokenValue(amount);
            stakingVault.transferStake(from, lstAmountAsLyxStake, data);
        }
    }
}
