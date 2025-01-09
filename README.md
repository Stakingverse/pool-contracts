# Stakingverse Contracts

Repository for the Stakingverse contracts. This repository includes the following contracts:

- Stakingverse Vault
- Liquid Staking Token (sLYX) based on the LUKSO LSP7 standard (linked to the Vault contract below deployed on LUKSO Mainnet).

| Contract                                 | Address                                                                                                                                        |
| :--------------------------------------- | :--------------------------------------------------------------------------------------------------------------------------------------------- |
| Staking Vault Proxy                      | [`0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04`](https://explorer.lukso.network/address/0x9F49a95b0c3c9e2A6c77a16C177928294c0F6F04?tab=contract) |
| Staking Vault Implementation (Singleton) | `0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4`                                                                                                   |

## Installation

```bash
# Install LUKSO and OpenZeppelin contracts dependencies
npm install

# Install forge contracts testing library
forge install https://github.com/foundry-rs/forge-std --no-commit --no-git
```

## Build

Run the following command to build the contract ABIs.

```shell
npm run build
```

## Tests

```shell
# Run all tests (including invariant tests)
npm run test

# Run only the invariant tests
npm run test:invariant

# Run all the tests and get the code coverage of the test suite
# NB: Invariant tests are skipped as they keep the test hanging
npm run test:coverage -- --no-match-test ^invariant

# Run all the tests and get the gas usage of the functions of the contracts
npm run test:gas
```

You can also display more log informations for debugging using the `:debug` suffix when running the tests with npm.

```shell
npm run test:debug
npm run test:invariant:debug
```

## Analysis

### Code coverage

| File                                          | % Lines          | % Statements     | % Branches    | % Funcs        |
| :-------------------------------------------- | ---------------- | ---------------- | ------------- | -------------- |
| src/LiquidStakingToken.sol                    | 88.89% (24/27)   | 89.47% (34/38)   | 100.00% (3/3) | 72.73% (8/11)  |
| src/LiquidStakingTokenAutoMintExtension.sol   | 100.00% (11/11)  | 100.00% (12/12)  | 100.00% (1/1) | 100.00% (4/4)  |
| test/base/Handler.t.sol                       | 0.00% (0/11)     | 0.00% (0/11)     | 100.00% (0/0) | 0.00% (0/3)    |
| test/base/LiquidStakingTokenBaseTest.t.sol    | 100.00% (43/43)  | 100.00% (47/47)  | 100.00% (1/1) | 100.00% (4/4)  |
| test/base/UniversalProfileTestHelpers.t.sol   | 100.00% (21/21)  | 100.00% (26/26)  | 100.00% (0/0) | 100.00% (5/5)  |
| test/mocks/MockContractWithLSP1Reentrancy.sol | 80.00% (8/10)    | 81.82% (9/11)    | 50.00% (1/2)  | 100.00% (5/5)  |
| test/mocks/MockDepositContract.sol            | 33.33% (1/3)     | 25.00% (1/4)     | 100.00% (0/0) | 33.33% (1/3)   |
| Total                                         | 85.71% (108/126) | 86.58% (129/149) | 85.71% (6/7)  | 77.14% (27/35) |

### Slither

Command to generate the output of Slither, the static analysis tool. Run `slither` with `slither . --triage-mode`.

```shell
# For sLYX
slither src/LiquidStakingToken.sol --checklist --no-fail-pedantic --show-ignored-findings > slither_report_sLYX.md

# For the auto-mint LSP17 extension
slither src/LiquidStakingTokenAutoMintExtension.sol --checklist --no-fail-pedantic --show-ignored-findings > slither_report_LiquidStakingTokenAutoMintExtension.md
```
