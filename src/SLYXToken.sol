// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

// Interfaces
import {ITransparentUpgradeableProxy as ITransparentProxy} from
    "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {IVault, IVaultStakeRecipient} from "./StakingverseVault.sol";
import {ISLYX} from "./ISLYX.sol";

// Modules
import {LSP7BurnableInitAbstract} from "@lukso/lsp7-contracts/contracts/extensions/LSP7BurnableInitAbstract.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

// Constants
import {_LSP4_TOKEN_TYPE_TOKEN} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";

// Errors
import {
    InvalidRecipientForSLYXTokensTransfer, OnlyVaultAllowedToMintSLYX, InvalidVaultAddress
} from "./SLYXErrors.sol";

/// @title Stakingverse Staked LYX (sLYX) Token contract.
///
/// @notice sLYX tokens represent liquid stake in the Stakingverse vault linked to this contract.
/// - New sLYX tokens are minted by transferring LYX staked in the linked vault to this contract.
/// - sLYX tokens can be burnt to convert them back to staked LYX.
///
/// @dev This contract includes also admin functionalities such as:
/// - pausing minting and burning (as emergency response while a remediation is pending).
/// - upgrading the contract (for security patches or future enhancements).
/// These are implemented using OpenZeppelin's upgradeable libraries
contract SLYXToken is
    IVaultStakeRecipient,
    ISLYX,
    LSP7BurnableInitAbstract,
    PausableUpgradeable
{
    using Math for uint256;

    /// @dev Address of the Vault contract linked to this SLYX Token contract.
    /// sLYX tokens represent liquid stake in this linked vault.
    IVault public stakingVault;

    constructor() {
        _disableInitializers();
    }

    function initialize(address tokenContractOwner_, IVault stakingVault_) external initializer {
        if (address(stakingVault_) == address(0)) {
            revert InvalidVaultAddress(address(stakingVault_));
        }

        __Pausable_init();

        super._initialize({
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
    ///
    /// @dev This hook is called when:
    /// - calling the `transferStake(address,uint256,bytes)` function,
    /// - or calling the `deposit(address)` function,
    /// on the linked staking vault, passing the SLYXToken contract address as parameter for `address`. Only the linked vault can call this function.
    /// New sLYX minted can be monitored by listening for the `Transfer` event on the SLYXToken contract and filtering with `address(0)` as `from`.
    /// sLYX tokens can only be minted when the contract is not paused.
    ///
    /// @param from The address to mint sLYX for.
    /// @param amount The amoount of staked LYX to be converted into sLYX (at the LYX / sLYX exchange rate).
    /// @param data Any optional data to send when notifying the `from` address via its `universalReceiver(...)` function that some sLYX tokens were minted for its address.
    /// 
    /// 
    /// Warning: If using this SLYXToken contract with a newly deployed StakingverseVault, perform an initial deposit with a 
    /// beneficiary address other than the SLYXToken contract address. This ensures correct share calculations and prevents 
    /// minting an extra 1e3 SLYX initially due to the vault not subtracting `_MINIMUM_REQUIRED_SHARES` on the first deposit.
    function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external whenNotPaused {
        if (msg.sender != address(stakingVault)) {
            revert OnlyVaultAllowedToMintSLYX(msg.sender);
        }

        uint256 shares = Math.mulDiv(amount, stakingVault.totalShares(), stakingVault.totalAssets());

        // mint sLYX tokens for the `from` address
        _mint({to: from, amount: shares, force: true, data: data});
    }

    /// @notice Convert `amount` of sLYX tokens back to staked LYX (including any accumulated rewards).
    ///
    /// @dev Burning function to convert sLYX back to LYX at the sLYX / LYX conversion rate.
    /// sLYX tokens can only be burnt when the contract is not paused.
    ///
    /// @param from The address to burn sLYX from its balance.
    /// @param amount The amount of sLYX to convert to staked LYX.
    /// @param data Any optional data to send when notifying the `from` address via its `universalReceiver(...)` function that some sLYX tokens were burnt from its balance and converted back to staked LYX.
    /// 
    /// Warning: note that if the link vault is set to restricted mode (= only a whitelist of stakers)
    /// and sLYX tokens are transferred to a non-whitelisted address, this address will not be able to
    /// burn the tokens and redeemed them for staked LYX.
    function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {
        super.burn(from, amount, data);
    }

    /// @inheritdoc ISLYX
    function getNativeTokenValue(uint256 sLyxAmount) public view returns (uint256) {
        // Get the total number of sLYX tokens minted.
        uint256 totalSLYXMinted = totalSupply();
        // Get the total LYX balance held by the sLYX contract on the Vault.
        uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this));

        // Calculate how many % the amount being burnt in proportion to the total supply.
        return sLyxAmount.mulDiv(sLyxTokenContractStake, totalSLYXMinted);
    }

    /// @inheritdoc ISLYX
    function getSLYXTokenValue(uint256 stakedLyxAmount) public view returns (uint256) {
        uint256 totalSLYXMinted = totalSupply();
        uint256 totalSLYXTokenContractStake = stakingVault.balanceOf(address(this));

        return stakedLyxAmount.mulDiv(totalSLYXMinted, totalSLYXTokenContractStake);
    }

    /// @inheritdoc ISLYX
    function getExchangeRate() external view returns (uint256) {
        return getNativeTokenValue(1 ether);
    }

    function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {
        return interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId);
    }

    /// @dev Prevent transferring sLYX tokens to:
    /// - the linked Vault
    /// - the SLYX Token contract itself
    /// otherwise the tokens would get stuck.
    function _beforeTokenTransfer(
        address, /* from */
        address to,
        uint256, /* amount */
        bool, /* force */
        bytes memory /* data */
    ) internal virtual override {
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
    function _afterTokenTransfer(address from, address to, uint256 amount, bool, /* force */ bytes memory data)
        internal
        virtual
        override
    {
        if (to == address(0)) {
            // Get the total amount of staked LYX held by this contract.
            // This represents the sum of all the staked LYX that were then converted to sLYX by any staker.
            // Note: this might also include any accumulated reward.
            uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this));

            // Since we are in the `_afterTokenTransfer` hook, balances and total supply have already been decreased.
            // We need to account the burnt amount in the total supply for the calculation.
            uint256 totalSLYXMintedBeforeBurning = totalSupply() + amount;

            // calculate the number of staked LYX (+ any accunmulated rewards) that should be transferred back to the `from` address.
            uint256 amountAsStakedLYX = amount.mulDiv(sLyxTokenContractStake, totalSLYXMintedBeforeBurning);

            stakingVault.transferStake(from, amountAsStakedLYX, data);
        }
    }
}
