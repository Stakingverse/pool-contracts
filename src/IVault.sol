// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.22;

interface IVault {
    event Deposited(address indexed account, address indexed beneficiary, uint256 amount);
    event Withdrawn(address indexed account, address indexed beneficiary, uint256 amount);
    event WithdrawalRequested(address indexed account, address indexed beneficiary, uint256 amount);
    event Claimed(address indexed account, address indexed beneficiary, uint256 amount);
    event DepositLimitChanged(uint256 previousLimit, uint256 newLimit);
    event FeeChanged(uint32 previousFee, uint32 newFee);
    event FeeRecipientChanged(address previousFeeRecipient, address newFeeRecipient);
    event FeeClaimed(address indexed account, address indexed beneficiary, uint256 amount);
    event RewardsDistributed(uint256 balance, uint256 rewards, uint256 fee);
    event OracleEnabled(address indexed oracle, bool enabled);
    event Rebalanced(
        uint256 previousTotalStaked, uint256 previousTotalUnstaked, uint256 totalStaked, uint256 totalUnstaked
    );
    event StakeTransferred(address indexed from, address indexed to, uint256 amount, bytes data);
    event OperatorChanged(address previousOperator, address newOperator);
    event VaultRestrictionChanged(bool restricted);
    event AllowedListChanged(address indexed depositor, bool indexed allowed);
    event ValidatorRegistered(bytes pubkey, bytes signature, bytes32 depositDataRoot);

    function depositLimit() external view returns (uint256);
    function totalAssets() external view returns (uint256);
    function totalShares() external view returns (uint256);

    /// @dev Total amount of active stake for the vault on the beacon chain.
    /// Increased by 32 LYX every time a new validator is registered for the vault.
    /// Updated when the vault oracle rebalances the vault.
    ///
    /// @return The total amount (in wei) of active stake for the vault on the beacon chain.
    function totalStaked() external view returns (uint256);

    /// @dev Total amount of inactive stake for the vault on the execution layer.
    /// Increased by the amount of LYX deposited by users to the vault.
    /// Decreased when a user withdraws its staked LYX from the vault, or decreased by 32 LYX every time a new validator is registered for the vault.
    /// Updated when the vault oracle rebalances the vault.
    ///
    /// @return The total amount (in wei) of inactive stake for the vault on the execution layer.
    function totalUnstaked() external view returns (uint256);
    function totalPendingWithdrawal() external view returns (uint256);
    function totalValidatorsRegistered() external view returns (uint256);
    function fee() external view returns (uint32);
    function feeRecipient() external view returns (address);
    function totalFees() external view returns (uint256);
    function restricted() external view returns (bool);

    /// @dev Get the total amount of staked LYX that was deposited by or for associated with `account`.
    /// @param account The address to query the staked balance for.
    /// @return The amount of LYX staked by (or for) `account`.
    function balanceOf(address account) external view returns (uint256);

    /// @dev Get the number of shares held by `account` which correspond to the proportion of its stake inside the vault.
    /// @param account The address to get the shares for.
    /// @return The number of shares held by `account`.
    function sharesOf(address account) external view returns (uint256);
    function pendingBalanceOf(address account) external view returns (uint256);
    function claimableBalanceOf(address account) external view returns (uint256);

    /// @notice Stake a certain amount of LYX in the Stakingverse's vault for `beneficiary`.
    /// @dev To stake LYX in the vault for `beneficiary`, send the amount of LYX native tokens while calling this function.
    /// @param beneficiary The address to stake LYX for in the vault.
    function deposit(address beneficiary) external payable;

    /// @notice Withdraw a certain `amount` of LYX staked by `msg.sender` in the Stakingverse's vault and transfer this amount to `beneficiary`.
    /// @dev The `amount` to withdraw will reduce the staked balance (and therefore reduce its shares) of the address that called this function (caller / `msg.sender`).
    /// @param amount The amount of staked LYX to withdraw.
    /// @param beneficiary The address to send the withdrawn amount to.
    function withdraw(uint256 amount, address beneficiary) external;
    function claim(uint256 amount, address beneficiary) external;
    function claimFees(uint256 amount, address beneficiary) external;

    /// @notice Transfer `amount` of staked LYX from the caller to the `to` address with optional `data`.
    ///
    /// @param to The address to transfer the staked LYX to.
    /// @param amount The amount of staked LYX to transfer.
    /// @param data Optional data.
    function transferStake(address to, uint256 amount, bytes calldata data) external;
}
