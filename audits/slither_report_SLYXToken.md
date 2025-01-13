# Slither output - `SLYXToken.sol`

Summary

- [calls-loop](#calls-loop) (4 results) (Low)
- [solc-version](#solc-version) (2 results) (Informational)

## calls-loop

Impact: Low
Confidence: Medium

- [ ] ID-7
      [SLYXToken.\_beforeTokenTransfer(address,address,uint256,bool,bytes)](src/SLYXToken.sol#L144-L166) has external calls inside a loop: [implementation = ITransparentUpgradeableProxy(address(stakingVault)).implementation()](src/SLYXToken.sol#L161-L165)

src/SLYXToken.sol#L144-L166

- [ ] ID-8
      [SLYXToken.\_afterTokenTransfer(address,address,uint256,bool,bytes)](src/SLYXToken.sol#L175-L195) has external calls inside a loop: [sLyxTokenContractStake = stakingVault.balanceOf(address(this))](src/SLYXToken.sol#L184)

src/SLYXToken.sol#L175-L195

- [ ] ID-9
      [SLYXToken.\_afterTokenTransfer(address,address,uint256,bool,bytes)](src/SLYXToken.sol#L175-L195) has external calls inside a loop: [stakingVault.transferStake(from,amountAsStakedLYX,data)](src/SLYXToken.sol#L193)

src/SLYXToken.sol#L175-L195

## solc-version

Impact: Informational
Confidence: High

- [ ] ID-14
      Version constraint ^0.8.22 contains known severe issues (https://solidity.readthedocs.io/en/latest/bugs.html) - VerbatimInvalidDeduplication.
      It is used by: - [^0.8.22](src/SLYXErrors.sol#L2) - [^0.8.22](src/SLYXToken.sol#L2)

src/SLYXErrors.sol#L2
