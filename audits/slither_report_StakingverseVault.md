# Slither output - `StakingverseVault.sol`

**Summary**

- [arbitrary-send-eth](#arbitrary-send-eth) (2 results) (High)
- [incorrect-equality](#incorrect-equality) (5 results) (Medium)
- [calls-loop](#calls-loop) (1 results) (Low)
- [costly-loop](#costly-loop) (3 results) (Informational)
- [solc-version](#solc-version) (1 results) (Informational)
- [low-level-calls](#low-level-calls) (3 results) (Informational)

## arbitrary-send-eth

Impact: High
Confidence: Medium

- [ ] ID-0
      [StakingverseVault.registerValidator(bytes,bytes,bytes32)](src/StakingverseVault.sol#L463-L482) sends eth to arbitrary user
      Dangerous calls: - [\_depositContract.deposit{value: DEPOSIT_AMOUNT}(pubkey,withdrawalCredentials,signature,depositDataRoot)](src/StakingverseVault.sol#L481)

src/StakingverseVault.sol#L463-L482

- [ ] ID-1
      [StakingverseVault.claimFees(uint256,address)](src/StakingverseVault.sol#L382-L402) sends eth to arbitrary user
      Dangerous calls: - [(success,None) = beneficiary.call{value: amount}()](src/StakingverseVault.sol#L397)

src/StakingverseVault.sol#L382-L402

## incorrect-equality

Impact: Medium
Confidence: High

- [ ] ID-2
      [StakingverseVault.withdraw(uint256,address)](src/StakingverseVault.sol#L341-L380) uses a dangerous strict equality: - [shares == 0](src/StakingverseVault.sol#L353)

src/StakingverseVault.sol#L341-L380

- [ ] ID-3
      [StakingverseVault.deposit(address)](src/StakingverseVault.sol#L300-L338) uses a dangerous strict equality: - [shares == 0](src/StakingverseVault.sol#L318)

src/StakingverseVault.sol#L300-L338

- [ ] ID-4
      [StakingverseVault.\_toShares(uint256)](src/StakingverseVault.sol#L292-L297) uses a dangerous strict equality: - [totalShares == 0](src/StakingverseVault.sol#L293)

src/StakingverseVault.sol#L292-L297

- [ ] ID-5
      [StakingverseVault.\_toBalance(uint256)](src/StakingverseVault.sol#L283-L290) uses a dangerous strict equality: - [totalShares == 0](src/StakingverseVault.sol#L284)

src/StakingverseVault.sol#L283-L290

- [ ] ID-6
      [StakingverseVault.transferStake(address,uint256,bytes)](src/StakingverseVault.sol#L503-L532) uses a dangerous strict equality: - [shares == 0](src/StakingverseVault.sol#L517)

src/StakingverseVault.sol#L503-L532

## calls-loop

Impact: Low
Confidence: Medium

- [ ] ID-7
      [StakingverseVault.registerValidator(bytes,bytes,bytes32)](src/StakingverseVault.sol#L463-L482) has external calls inside a loop: [\_depositContract.deposit{value: DEPOSIT_AMOUNT}(pubkey,withdrawalCredentials,signature,depositDataRoot)](src/StakingverseVault.sol#L481)

src/StakingverseVault.sol#L463-L482

## costly-loop

Impact: Informational
Confidence: Medium

- [ ] ID-8
      [StakingverseVault.registerValidator(bytes,bytes,bytes32)](src/StakingverseVault.sol#L463-L482) has costly operations inside a loop: - [totalValidatorsRegistered += 1](src/StakingverseVault.sol#L476)

src/StakingverseVault.sol#L463-L482

- [ ] ID-9
      [StakingverseVault.registerValidator(bytes,bytes,bytes32)](src/StakingverseVault.sol#L463-L482) has costly operations inside a loop: - [totalUnstaked -= DEPOSIT_AMOUNT](src/StakingverseVault.sol#L478)

src/StakingverseVault.sol#L463-L482

- [ ] ID-10
      [StakingverseVault.registerValidator(bytes,bytes,bytes32)](src/StakingverseVault.sol#L463-L482) has costly operations inside a loop: - [totalStaked += DEPOSIT_AMOUNT](src/StakingverseVault.sol#L477)

src/StakingverseVault.sol#L463-L482

## solc-version

Impact: Informational
Confidence: High

- [ ] ID-11
      Version constraint =0.8.22 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html) - VerbatimInvalidDeduplication.
      It is used by: - [=0.8.22](src/IDepositContract.sol#L2) - [=0.8.22](src/IVault.sol#L2) - [=0.8.22](src/IVaultStakeRecipient.sol#L2) - [=0.8.22](src/StakingverseVault.sol#L2)

src/IDepositContract.sol#L2

## low-level-calls

Impact: Informational
Confidence: High

- [ ] ID-12
      Low level call in [StakingverseVault.claimFees(uint256,address)](src/StakingverseVault.sol#L382-L402): - [(success,None) = beneficiary.call{value: amount}()](src/StakingverseVault.sol#L397)

src/StakingverseVault.sol#L382-L402

- [ ] ID-13
      Low level call in [StakingverseVault.claim(uint256,address)](src/StakingverseVault.sol#L255-L277): - [(success,None) = beneficiary.call{value: amount}()](src/StakingverseVault.sol#L272)

src/StakingverseVault.sol#L255-L277

- [ ] ID-14
      Low level call in [StakingverseVault.withdraw(uint256,address)](src/StakingverseVault.sol#L341-L380): - [(success,None) = beneficiary.call{value: immediateAmount}()](src/StakingverseVault.sol#L370)

src/StakingverseVault.sol#L341-L380
