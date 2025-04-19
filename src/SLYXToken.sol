// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

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

//
//
//
//                                             ++++++++++++
//                                         ;+++++++++++++++++++
//                                      +++++++$$$$$$$$$$$$+++++++
//                                   +++++++$$$$$$$$$$$$$$$$$$+++++++
//                                +++++++$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                             +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                          +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                       ++++++x$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$x++++++
//                   +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//              ++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$++++++
//            +++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++
//          ;++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++
//          +++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++
//         ++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$++++
//         +++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++
//        :+++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$&++++++++++++++++++$$$$$$$$$$$$$$$$$$$$x+++++$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++&$$$$$$$$$&++++++++++++++$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++&$$$$$$$$$$$$$+++++++X$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$$$X++++++++++++++++++++++++++++++$$$$$$$$$$$$++++++$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++++++++$$$$$$$$$+++++X$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++++++++++$$$$$$+++++$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$$++++++++++++++++++++++++++++++++++++$$X++++$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++++++++++++++++$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$++++++++++++++++++++++++++++++++++++++$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$+++++++++++++++++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$$$$$$++++++++++++++++++++++++++++$$$$$++++$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$$$+$$$$$+++++++++++++++++++++++$$$$$$+++++++$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$$$$+$$$$$$$+++++++++++++++++++$$$$$$++++++++++$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$$$$+++$$$$$$$$$++++++++++++++$$$$$$+++++++++++++$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$$$++++&$$$$$$$$$$$++++++++&$$$$$$++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$$++++++&$$$$$$++++++++$$$$$$$+++++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$$+++++++++++++++++$$$$$$$&++++++++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$+++:
//        :+++$$$++++++++++++$$$$$$$$$$$$$$x++++++++++++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++:
//         +++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$++++++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++
//         ++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$++++
//          +++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++
//          +++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++
//            +++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++
//              ++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$++++++
//                +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                   +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                       ++++++X$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$x++++++
//                          +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                             +++++++$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                                +++++++$$$$$$$$$$$$$$$$$$$$$$$$+++++++
//                                   +++++++$$$$$$$$$$$$$$$$$$+++++++
//                                      +++++++$$$$$$$$$$$$+++++++
//                                         ++++++++++++++++++++
//                                             ++++++++++++
//
//
//
// .----------------------------------------------------------------------------------------------------.
// |                                                                                                    |
// |  ███████╗████████╗ █████╗ ██╗  ██╗██╗███╗   ██╗ ██████╗ ██╗   ██╗███████╗██████╗ ███████╗███████╗  |
// |  ██╔════╝╚══██╔══╝██╔══██╗██║ ██╔╝██║████╗  ██║██╔════╝ ██║   ██║██╔════╝██╔══██╗██╔════╝██╔════╝  |
// |  ███████╗   ██║   ███████║█████╔╝ ██║██╔██╗ ██║██║  ███╗██║   ██║█████╗  ██████╔╝███████╗█████╗    |
// |  ╚════██║   ██║   ██╔══██║██╔═██╗ ██║██║╚██╗██║██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗╚════██║██╔══╝    |
// |  ███████║   ██║   ██║  ██║██║  ██╗██║██║ ╚████║╚██████╔╝ ╚████╔╝ ███████╗██║  ██║███████║███████╗  |
// |  ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚══════╝╚══════╝  |
// |                                                                                                    |
// '----------------------------------------------------------------------------------------------------'
///
/// @title Stakingverse Staked LYX (sLYX) Token contract.
///
/// @notice sLYX tokens represent liquid stake in the Stakingverse vault linked to this contract.
/// - New sLYX tokens are minted by transferring LYX staked in the linked vault to this contract.
/// - sLYX tokens can be burnt to convert them back to staked LYX.
///
/// @dev This contract also includes admin functionalities such as:
/// - pausing functionalities to mint and burn (as an emergency response while a remediation is pending).
/// - upgrading the contract (for security patches or future enhancements).
/// These are implemented using OpenZeppelin's upgradeable contracts library.
contract SLYXToken is IVaultStakeRecipient, ISLYX, LSP7BurnableInitAbstract, PausableUpgradeable {
    using Math for uint256;

    /// @dev Address of the Vault contract linked to this `SLYXToken` contract.
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

    /// @notice Mint new sLYX tokens by transferring LYX staked in the Vault to this `SLYXToken` contract.
    ///
    /// @dev This hook is called when:
    /// - calling the `transferStake(address,uint256,bytes)` function
    /// - or calling the `deposit(address)` function
    /// on the linked vault, passing the `SLYXToken` contract address to the `address` parameter. Only the linked vault can call this function.
    /// Newly minted sLYX tokens can be monitored by listening for the `Transfer` event on the `SLYXToken` contract and filtering with `address(0)` as `from`.
    /// Note that sLYX tokens can only be minted when the contract is not paused.
    ///
    /// @param from The address to mint sLYX tokens for.
    /// @param amount The amount of staked LYX to be converted into sLYX tokens (at the LYX / sLYX exchange rate).
    /// @param data Any optional data to send when notifying the `from` address via their `universalReceiver(...)` function that some sLYX tokens were minted for their address.
    ///
    /// Warning: If using this `SLYXToken` contract with a newly deployed StakingverseVault, perform an initial deposit with a
    /// beneficiary address other than the `SLYXToken` contract address. This ensures correct share calculations and prevents
    /// minting an extra 1e3 sLYX initially due to the vault not subtracting `_MINIMUM_REQUIRED_SHARES` on the first deposit.
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
    /// @param from The address to burn sLYX from their balance.
    /// @param amount The amount of sLYX to convert to staked LYX.
    /// @param data Any optional data to send when notifying the `from` address via their `universalReceiver(...)` function that some sLYX tokens were burnt from their balance and converted back to staked LYX.
    ///
    /// Warning: Note that if the linked vault is set to restricted mode (= only a whitelist of stakers)
    /// and sLYX tokens are transferred to a non-whitelisted address, this address will not be able to
    /// burn the tokens and redeem them for staked LYX.
    function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {
        super.burn(from, amount, data);
    }

    /// @inheritdoc ISLYX
    function getNativeTokenValue(uint256 sLyxAmount) public view returns (uint256) {
        // Get the total number of sLYX tokens minted.
        uint256 totalSLYXMinted = totalSupply();

        // Use 1:1 ratio if no sLYX is minted
        if (totalSLYXMinted == 0) return sLyxAmount;

        // Get the total LYX balance held by the sLYX contract on the linked vault.
        uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this));

        // Calculate how many % the amount being burnt in proportion to the total supply.
        return sLyxAmount.mulDiv(sLyxTokenContractStake, totalSLYXMinted);
    }

    /// @inheritdoc ISLYX
    function getSLYXTokenValue(uint256 stakedLyxAmount) public view returns (uint256) {
        uint256 totalSLYXMinted = totalSupply();

        // Use 1:1 ratio if no sLYX is minted
        if (totalSLYXMinted == 0) return stakedLyxAmount;

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
    /// - the linked vault
    /// - the `SLYXToken` contract itself
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
    }

    /// @dev If tokens are being burnt:
    /// 1. convert `amount` of sLYX to the equivalent amount as LYX staked in the linked staking vault (including any accrued rewards).
    /// 2. transfer this equivalent amount back as staked LYX to `from`.
    ///
    /// This is based on the sLYX / staked LYX ratio. The function accepts a rounding error of 1 wei as loss.
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

            // calculate the number of staked LYX (+ any accumulated rewards) that should be transferred back to the `from` address.
            uint256 amountAsStakedLYX = amount.mulDiv(sLyxTokenContractStake, totalSLYXMintedBeforeBurning);

            stakingVault.transferStake(from, amountAsStakedLYX, data);
        }
    }
}
