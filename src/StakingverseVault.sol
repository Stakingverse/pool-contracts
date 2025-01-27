// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.22;

import {OwnableUnset} from "@erc725/smart-contracts/contracts/custom/OwnableUnset.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";
import {PausableUpgradeable} from "@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";
import {ERC165} from "@openzeppelin/contracts/utils/introspection/ERC165.sol";
import {ERC165Checker} from "@openzeppelin/contracts/utils/introspection/ERC165Checker.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IDepositContract, DEPOSIT_AMOUNT} from "./IDepositContract.sol";
import {IVault} from "./IVault.sol";
import {IVaultStakeRecipient} from "./IVaultStakeRecipient.sol";

//                                                                     ..;===+.
//                                                                 .:=iiiiii=+=
//                                                              .=i))=;::+)i=+,
//                                                           ,=i);)I)))I):=i=;
//                                                        .=i==))))ii)))I:i++
//                                                      +)+))iiiiiiii))I=i+:'
//                                 .,:;;++++++;:,.       )iii+:::;iii))+i='
//                              .:;++=iiiiiiiiii=++;.    =::,,,:::=i));=+'
//                            ,;+==ii)))))))))))ii==+;,      ,,,:=i))+=:
//                          ,;+=ii))))))IIIIII))))ii===;.    ,,:=i)=i+
//                         ;+=ii)))IIIIITIIIIII))))iiii=+,   ,:=));=,
//                       ,+=i))IIIIIITTTTTITIIIIII)))I)i=+,,:+i)=i+
//                      ,+i))IIIIIITTTTTTTTTTTTI))IIII))i=::i))i='
//                     ,=i))IIIIITLLTTTTTTTTTTIITTTTIII)+;+i)+i`
//                     =i))IIITTLTLTTTTTTTTTIITTLLTTTII+:i)ii:'
//                    +i))IITTTLLLTTTTTTTTTTTTLLLTTTT+:i)))=,
//                    =))ITTTTTTTTTTTLTTTTTTLLLLLLTi:=)IIiii;
//                   .i)IIITTTTTTTTLTTTITLLLLLLLT);=)I)))))i;
//                   :))IIITTTTTLTTTTTTLLHLLLLL);=)II)IIIIi=:
//                   :i)IIITTTTTTTTTLLLHLLHLL)+=)II)ITTTI)i=
//                   .i)IIITTTTITTLLLHHLLLL);=)II)ITTTTII)i+
//                   =i)IIIIIITTLLLLLLHLL=:i)II)TTTTTTIII)i'
//                 +i)i)))IITTLLLLLLLLT=:i)II)TTTTLTTIII)i;
//               +ii)i:)IITTLLTLLLLT=;+i)I)ITTTTLTTTII))i;
//              =;)i=:,=)ITTTTLTTI=:i))I)TTTLLLTTTTTII)i;
//            +i)ii::,  +)IIITI+:+i)I))TTTTLLTTTTTII))=,
//          :=;)i=:,,    ,i++::i))I)ITTTTTTTTTTIIII)=+'
//        .+ii)i=::,,   ,,::=i)))iIITTTTTTTTIIIII)=+
//       ,==)ii=;:,,,,:::=ii)i)iIIIITIIITIIII))i+:'
//      +=:))i==;:::;=iii)+)=  `:i)))IIIII)ii+'
//    .+=:))iiiiiiii)))+ii;
//   .+=;))iiiiii)));ii+
//  .+=i:)))))))=+ii+
// .;==i+::::=)i=;
// ,+==iiiiii+,
// `+=+++;`
///
/// @title Staking vault for Stakingverse
///
/// @notice This contract is designed to manage staking operations, including depositing, withdrawing, and claiming rewards for stakers.
/// Stakers can also query their staked balance, shares, claimable balance (including rewards) and pending withdrawals.
///
/// @dev This contract includes admin functionalities (vault owner and operator) for fee management, adding new operators and registering validators in the deposit contract.
/// It also includes a rebalancing mechanism done periodically by an oracle.
///
/// @dev The contract implements reentrancy protection, pausable functionality and an upgradeable pattern using OpenZeppelin's upgradeable libraries,
/// ensuring safety and flexibility for future enhancements.

contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {
    uint32 private constant _FEE_BASIS = 100_000;
    uint32 private constant _MIN_FEE = 0; // 0%
    uint32 private constant _MAX_FEE = 15_000; // 15%
    uint256 private constant _MAX_VALIDATORS_SUPPORTED = 1_000_000;
    uint256 private constant _MINIMUM_REQUIRED_SHARES = 1e3;

    error InvalidAmount(uint256 amount);
    error WithdrawalFailed(address account, address beneficiary, uint256 amount);
    error ClaimFailed(address account, address beneficiary, uint256 amount);
    error DepositLimitExceeded(uint256 totalValue, uint256 depositLimit);
    error CallerNotOracle(address account);
    error InsufficientBalance(uint256 availableAmount, uint256 requestedAmount);
    error CallerNotFeeRecipient(address account);
    error FeeClaimFailed(address account, address beneficiary, uint256 amount);
    error InvalidAddress(address account);
    error ValidatorAlreadyRegistered(bytes pubkey);
    error CallerNotOperator(address account);
    error InvalidSignature();

    // limit of total deposits in wei.
    // This limits the total number of validators that can be registered.
    uint256 public depositLimit;
    // total number of shares in the vault
    uint256 public totalShares;
    // total amount of active stake in wei on beacon chain
    uint256 public totalStaked;
    // total amount of inactive stake in wei on execution layer
    uint256 public totalUnstaked;
    // total amount of pending withdrawals in wei.
    // This is the amount that is taken from staked balance and may not be immidiately available for withdrawal
    uint256 public totalPendingWithdrawal;
    // Total number of ever registered validators
    uint256 public totalValidatorsRegistered;
    // Vault fee in parts per 100,000
    uint32 public fee;
    // Address that can only call `claimFee()` to withdraw the fees collected by the Vault.
    address public feeRecipient;
    // Total amount of fees available for withdrawal
    uint256 public totalFees;
    // Whether only allowlisted accounts can deposit
    bool public restricted;
    IDepositContract private _depositContract;
    mapping(address => uint256) private _shares;
    mapping(address => bool) private _oracles;
    mapping(address => uint256) private _pendingWithdrawals;
    mapping(address => bool) private _allowlisted;
    mapping(bytes => bool) private _registeredKeys;

    /// @dev Total amount of pending withdrawals that can be claimed immediately.
    /// Updated when the vault oracle rebalances the vault and when a user withdraw staked LYX via the `claim(...)` function.
    /// @return The total amount (in wei) of pending withdrawals that can be claimed immediately.
    uint256 public totalClaimable;
    address public operator;

    modifier onlyOracle() {
        _checkOracle();
        _;
    }

    modifier onlyOperator() {
        _checkOperator();
        _;
    }

    constructor() {
        _disableInitializers();
    }

    function supportsInterface(bytes4 interfaceId) public view override returns (bool) {
        return interfaceId == type(IVault).interfaceId || super.supportsInterface(interfaceId);
    }

    function initialize(address owner_, address operator_, IDepositContract depositContract_) external initializer {
        if (address(depositContract_) == address(0)) {
            revert InvalidAddress(address(depositContract_));
        }
        __ReentrancyGuard_init();
        __Pausable_init();
        _setOwner(owner_);
        _setOperator(operator_);
        _depositContract = depositContract_;
    }

    receive() external payable {
        deposit(msg.sender);
    }

    function _checkOperator() private view {
        if (msg.sender != operator && msg.sender != owner()) {
            revert CallerNotOperator(msg.sender);
        }
    }

    function setOperator(address newOperator) external onlyOperator {
        _setOperator(newOperator);
    }

    function _setOperator(address newOperator) private {
        if (newOperator == address(0)) {
            revert InvalidAddress(newOperator);
        }
        emit OperatorChanged(operator, newOperator);
        operator = newOperator;
    }

    function pause() external onlyOwner {
        _pause();
    }

    function unpause() external onlyOwner {
        _unpause();
    }

    function setFee(uint32 newFee) external onlyOperator {
        if (newFee < _MIN_FEE || newFee > _MAX_FEE) {
            revert InvalidAmount(newFee);
        }
        uint32 previousFee = fee;
        fee = newFee;
        emit FeeChanged(previousFee, newFee);
    }

    function setFeeRecipient(address newFeeRecipient) external onlyOperator {
        if (newFeeRecipient == address(0)) {
            revert InvalidAddress(newFeeRecipient);
        }
        address previousFeeRecipient = feeRecipient;
        feeRecipient = newFeeRecipient;
        emit FeeRecipientChanged(previousFeeRecipient, newFeeRecipient);
    }

    function setDepositLimit(uint256 newDepositLimit) external onlyOperator {
        if (
            newDepositLimit < totalValidatorsRegistered * DEPOSIT_AMOUNT
                || newDepositLimit > _MAX_VALIDATORS_SUPPORTED * DEPOSIT_AMOUNT
        ) {
            revert InvalidAmount(newDepositLimit);
        }
        uint256 previousDepositLimit = depositLimit;
        depositLimit = newDepositLimit;
        emit DepositLimitChanged(previousDepositLimit, newDepositLimit);
    }

    function enableOracle(address oracle, bool enabled) external onlyOperator {
        _oracles[oracle] = enabled;
        emit OracleEnabled(oracle, enabled);
    }

    function isOracle(address oracle) public view returns (bool) {
        return _oracles[oracle];
    }

    function allowlist(address account, bool enabled) external onlyOperator {
        _allowlisted[account] = enabled;
        emit AllowedListChanged(account, enabled);
    }

    function isAllowlisted(address account) public view returns (bool) {
        return _allowlisted[account];
    }

    function setRestricted(bool enabled) external onlyOperator {
        restricted = enabled;
        emit VaultRestrictionChanged(enabled);
    }

    function _checkOracle() private view {
        address oracle = msg.sender;
        if (!isOracle(oracle)) {
            revert CallerNotOracle(oracle);
        }
    }

    /// @inheritdoc IVault
    function sharesOf(address account) external view override returns (uint256) {
        return _shares[account];
    }

    /// @inheritdoc IVault
    function balanceOf(address account) public view override returns (uint256) {
        return _toBalance(_shares[account]);
    }

    function pendingBalanceOf(address account) external view override returns (uint256) {
        return _pendingWithdrawals[account];
    }

    function claimableBalanceOf(address account) external view override returns (uint256) {
        uint256 pendingWithdrawal = _pendingWithdrawals[account];
        return pendingWithdrawal > totalClaimable ? totalClaimable : pendingWithdrawal;
    }

    function claim(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {
        if (beneficiary == address(0)) {
            revert InvalidAddress(beneficiary);
        }
        address account = msg.sender;
        if (amount == 0) {
            revert InvalidAmount(amount);
        }
        if (amount > _pendingWithdrawals[account]) {
            revert InsufficientBalance(_pendingWithdrawals[account], amount);
        }
        if (amount > totalClaimable) {
            revert InsufficientBalance(totalClaimable, amount);
        }
        _pendingWithdrawals[account] -= amount;
        totalPendingWithdrawal -= amount;
        totalClaimable -= amount;
        (bool success,) = beneficiary.call{value: amount}("");
        if (!success) {
            revert ClaimFailed(account, beneficiary, amount);
        }
        emit Claimed(account, beneficiary, amount);
    }

    function totalAssets() public view override returns (uint256) {
        return totalStaked + totalUnstaked + totalClaimable - totalPendingWithdrawal;
    }

    function _toBalance(uint256 shares) private view returns (uint256) {
        if (totalShares == 0) {
            return 0;
        }
        // In some cases, totalShares may be slightly less than totalStaked + totalUnstaked due to rounding errors.
        // The error is 1 wei considered insignificant and can be ignored.
        return Math.mulDiv(shares, totalAssets(), totalShares);
    }

    function _toShares(uint256 amount) private view returns (uint256) {
        if (totalShares == 0) {
            return amount;
        }
        return Math.mulDiv(amount, totalShares, totalAssets());
    }

    /// @inheritdoc IVault
    function deposit(address beneficiary) public payable override whenNotPaused {
        if (beneficiary == address(0)) {
            revert InvalidAddress(beneficiary);
        }
        address account = msg.sender;
        if (restricted && !isAllowlisted(account)) {
            revert InvalidAddress(account);
        }
        uint256 amount = msg.value;
        if (amount == 0) {
            revert InvalidAmount(amount);
        }
        uint256 newTotalDeposits =
            Math.max(totalValidatorsRegistered * DEPOSIT_AMOUNT, totalStaked + totalUnstaked) + amount;
        if (newTotalDeposits > depositLimit) {
            revert DepositLimitExceeded(newTotalDeposits, depositLimit);
        }
        uint256 shares = _toShares(amount);
        if (shares == 0) {
            revert InvalidAmount(amount);
        }
        // burn minimum shares of first depositor to prevent share inflation and dust shares attacks.
        if (totalShares == 0) {
            if (shares < _MINIMUM_REQUIRED_SHARES) {
                revert InvalidAmount(amount);
            }
            _shares[address(0)] = _MINIMUM_REQUIRED_SHARES;
            totalShares += _MINIMUM_REQUIRED_SHARES;
            shares -= _MINIMUM_REQUIRED_SHARES;
        }
        _shares[beneficiary] += shares;
        totalShares += shares;
        totalUnstaked += amount;
        emit Deposited(account, beneficiary, amount);

        if (ERC165Checker.supportsInterface(beneficiary, type(IVaultStakeRecipient).interfaceId)) {
            IVaultStakeRecipient(beneficiary).onVaultStakeReceived(account, amount, "");
        }
    }

    /// @inheritdoc IVault
    function withdraw(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {
        if (beneficiary == address(0)) {
            revert InvalidAddress(beneficiary);
        }
        address account = msg.sender;
        if (amount == 0) {
            revert InvalidAmount(amount);
        }
        if (amount > balanceOf(account)) {
            revert InsufficientBalance(balanceOf(account), amount);
        }
        uint256 shares = _toShares(amount);
        if (shares == 0) {
            revert InvalidAmount(amount);
        }
        if (shares > _shares[account]) {
            revert InsufficientBalance(_shares[account], shares);
        }
        _shares[account] -= shares;
        totalShares -= shares;

        uint256 immediateAmount = amount > totalUnstaked ? totalUnstaked : amount;
        uint256 delayedAmount = amount - immediateAmount;

        totalUnstaked -= immediateAmount;
        totalPendingWithdrawal += delayedAmount;
        _pendingWithdrawals[beneficiary] += delayedAmount;

        if (immediateAmount > 0) {
            (bool success,) = beneficiary.call{value: immediateAmount}("");
            if (!success) {
                revert WithdrawalFailed(account, beneficiary, immediateAmount);
            }
            emit Withdrawn(account, beneficiary, immediateAmount);
        }

        if (delayedAmount > 0) {
            emit WithdrawalRequested(account, beneficiary, delayedAmount);
        }
    }

    function claimFees(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {
        if (beneficiary == address(0)) {
            revert InvalidAddress(beneficiary);
        }
        address account = msg.sender;
        if (account != feeRecipient) {
            revert CallerNotFeeRecipient(account);
        }
        if (amount == 0) {
            revert InvalidAmount(amount);
        }
        if (amount > totalFees) {
            revert InsufficientBalance(totalFees, amount);
        }
        totalFees -= amount;
        (bool success,) = beneficiary.call{value: amount}("");
        if (!success) {
            revert FeeClaimFailed(account, beneficiary, amount);
        }
        emit FeeClaimed(account, beneficiary, amount);
    }

    // Rebalance the vault by accounting balance of the vault.
    // This is called periodically by the oracle.
    // The balance of the vault is the sum of:
    // - totalStaked + totalUnstaked: the total amount of stake on beacon chain and execution layer
    // - totalPendingWithdrawal: the total amount of pending withdrawals
    // - totalClaimable: the total amount of pending withdrawals that can be claimed immidiately
    // - totalFees: the total amount of fees available for withdrawal
    //
    // Rebalancing is not accounting for potential validator penalties. It is assumed that the penalties
    // shall not occur or shall be negligible.
    function rebalance() external onlyOracle whenNotPaused {
        uint256 balance = address(this).balance;

        // account for completed withdrawals
        uint256 pendingWithdrawal = totalPendingWithdrawal - totalClaimable;
        uint256 completedWithdrawal = Math.min(
            (balance - totalFees - totalUnstaked - totalClaimable) / DEPOSIT_AMOUNT, // actual completed withdrawals
            pendingWithdrawal / DEPOSIT_AMOUNT // pending withdrawals
                + (pendingWithdrawal % DEPOSIT_AMOUNT == 0 ? 0 : 1) // partial withdrawals
        ) * DEPOSIT_AMOUNT;

        // adjust staked balance for completed withdrawals
        uint256 staked = totalStaked - completedWithdrawal;

        // take out any claimable balances from unstaked balance prior to calculating rewards.
        uint256 unstaked = balance - totalFees - totalClaimable - completedWithdrawal;

        // account for withdrawals to claim later
        uint256 claimable = totalClaimable + completedWithdrawal;

        // account for partial completeted withdrawals
        uint256 partialWithdrawal = 0;
        if (claimable > totalPendingWithdrawal) {
            partialWithdrawal = claimable - totalPendingWithdrawal;
            unstaked += partialWithdrawal;
            claimable = totalPendingWithdrawal;
        }

        // at this point the difference represents the rewards.
        // If the difference is positive, it means that the rewards are available for distribution.
        // Fees are subsidized in attempt to prevent validator exits.
        if (unstaked - partialWithdrawal > totalUnstaked) {
            uint256 rewards = unstaked - partialWithdrawal - totalUnstaked;
            uint256 feeAmount = Math.mulDiv(rewards, fee, _FEE_BASIS);
            emit RewardsDistributed(totalStaked + totalUnstaked, rewards, feeAmount);
            totalFees += feeAmount;
            unstaked -= feeAmount;
        }

        emit Rebalanced(totalStaked, totalUnstaked, staked, unstaked);
        totalClaimable = claimable;
        totalUnstaked = unstaked;
        totalStaked = staked;
    }

    function isValidatorRegistered(bytes calldata pubkey) external view returns (bool) {
        return _registeredKeys[pubkey];
    }

    function registerValidator(bytes calldata pubkey, bytes calldata signature, bytes32 depositDataRoot)
        public
        onlyOracle
        nonReentrant
        whenNotPaused
    {
        if (totalUnstaked < DEPOSIT_AMOUNT) {
            revert InsufficientBalance(totalUnstaked, DEPOSIT_AMOUNT);
        }
        if (_registeredKeys[pubkey]) {
            revert ValidatorAlreadyRegistered(pubkey);
        }
        _registeredKeys[pubkey] = true;
        totalValidatorsRegistered += 1;
        totalStaked += DEPOSIT_AMOUNT;
        totalUnstaked -= DEPOSIT_AMOUNT;
        bytes memory withdrawalCredentials = abi.encodePacked(hex"010000000000000000000000", address(this));
        emit ValidatorRegistered(pubkey, signature, depositDataRoot);
        _depositContract.deposit{value: DEPOSIT_AMOUNT}(pubkey, withdrawalCredentials, signature, depositDataRoot);
    }

    function registerValidators(
        bytes[] calldata pubkeys,
        bytes[] calldata signatures,
        bytes32[] calldata depositDataRoots
    ) external {
        uint256 length = pubkeys.length;
        if (length != signatures.length || length != depositDataRoots.length) {
            revert InvalidAmount(length);
        }
        for (uint256 i = 0; i < length; i++) {
            registerValidator(pubkeys[i], signatures[i], depositDataRoots[i]);
        }
    }

    /// @inheritdoc IVault
    /// @dev This function is used to transfer staked LYX from one address to another.
    /// It increases the staked balance of the recipient, and decreases the staked balance of the sender.
    /// If the `to` is a smart contract that support the `IVaultStakeRecipient` interface, the `onVaultStakeReceived(...)`
    /// function will be called on the recipient (with the three parameters `account`, `amount` and `data`) to notify it that some staked LYX tokens were transferred to its address.
    function transferStake(address to, uint256 amount, bytes calldata data)
        external
        override
        whenNotPaused
        nonReentrant
    {
        if (restricted && !isAllowlisted(to)) {
            revert InvalidAddress(to);
        }

        address account = msg.sender;
        if (amount == 0) {
            revert InvalidAmount(amount);
        }

        if (amount > balanceOf(account)) {
            revert InsufficientBalance(balanceOf(account), amount);
        }
        
        uint256 shares = _toShares(amount);
        if (shares == 0) {
            revert InvalidAmount(shares);
        }
        if (shares > _shares[account]) {
            revert InsufficientBalance(_shares[account], shares);
        }
        if (to == address(0)) {
            revert InvalidAddress(to);
        }
        _shares[account] -= shares;
        _shares[to] += shares;
        emit StakeTransferred(account, to, amount, data);
        if (ERC165Checker.supportsInterface(to, type(IVaultStakeRecipient).interfaceId)) {
            IVaultStakeRecipient(to).onVaultStakeReceived(account, amount, data);
        }
    }
}
