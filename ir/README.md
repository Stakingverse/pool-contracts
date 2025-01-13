# Intermediate representation via IR

> Compiler settings used to compile via IR:
>
> - evm_version = "berlin"
> - solc_version = "0.8.22"
> - optimizer = true
> - optimizer-runs = 1_000

This folder contains the intermediate representation of the `SLYXToken` and `StakingversVault` contracts in the form of Yul code.

The yul code was generated without any IR optimisations, by simply running the commands below.

1. [Install `solc-select`](https://github.com/crytic/solc-select) and set it to solc v0.8.27

```bash
pip3 install solc-select
solc-select install 0.8.27
solc-select use 0.8.27
```

2. Run the following command to see the intermediate representation of the Solidity contract in Yul via IR.

```bash
solc ./src/SLYXToken.sol \
    @lukso/=node_modules/@lukso/ \
    @openzeppelin/contracts/=node_modules/@openzeppelin/contracts/ \
    openzeppelin-contracts/contracts/=node_modules/@openzeppelin/contracts/ \
    @openzeppelin/contracts-upgradeable/=node_modules/@openzeppelin/contracts-upgradeable/ \
    @erc725/smart-contracts/=node_modules/@erc725/smart-contracts/ \
    @erc725/smart-contracts-v8/=node_modules/@erc725/smart-contracts-v8/ \
    UniversalPage-contracts/=lib/UniversalPage-contracts/contracts/ \
    forge-std/=lib/forge-std/src/ \
    solidity-bytes-utils/=node_modules/solidity-bytes-utils/ \
    --ir -o ./build-via-ir

You will obtain a folder with all the generated IR representations (including the dependencies).
```
