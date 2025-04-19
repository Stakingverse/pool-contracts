# Scripts for Deployment & Configuration

- [Scripts for Deployment \& Configuration](#scripts-for-deployment--configuration)
  - [Setup](#setup)
  - [Deploying on LUKSO Testnet](#deploying-on-lukso-testnet)
  - [Deploying on LUKSO Mainnet](#deploying-on-lukso-mainnet)
- [`StakingverseVault` Deployment scripts](#stakingversevault-deployment-scripts)
  - [Deploy the Vault implementation](#deploy-the-vault-implementation)
  - [Deploy the Vault proxy](#deploy-the-vault-proxy)
  - [Upgrade the Vault](#upgrade-the-vault)
- [`SLYXToken` deployment scripts](#slyxtoken-deployment-scripts)
  - [Deploy the SLYX Token implementation](#deploy-the-slyx-token-implementation)
  - [Deploy the SLYX Token proxy contract](#deploy-the-slyx-token-proxy-contract)
  - [Upgrade the SLYX Token contract](#upgrade-the-slyx-token-contract)

The Foundry scripts in this folder enable two things.

1. Deploy the `SLYXToken` and `StakingverseVault` contracts on LUKSO Testnet or Mainnet:
   - **transparent upgradable proxy**.
   - the logic implementation contract.
2. Perform actions on the proxy contract to configure it:
   - changing the proxy admin.
   - upgrade the logic implementation contract the proxy is linked to.

> **Note:** if the implementation contract linked to the proxy has an `owner()` with some `onlyOwner` protected function, make sure that the `owner` address being set is not the same address as the proxy admin. As it will not be possible to call these functions otherwise. The address being set as the proxy admin can only call the proxy admin protected functions in the contract and no other functions.

## Setup

1. Create a copy of `.env.example` and fill in the information inside it

```bash
cp .env.example .env
```

2. Load the environment variables into the shell.

```bash
source .env
```

3. Follow the instructions in the next section to configure depending if you are deploying on LUKSO Testnet or Mainnet.

4. Run one of the following deployment scripts below.

## Deploying on LUKSO Testnet

- When running the command in your CLI, use the following options:
  - use `--rpc-url $LUKSO_TESTNET_RPC_URL`
  - use `--chain 4201`
  - use `--verifier-url $BLOCKSCOUT_TESTNET_API_URL`
- Use as file paths `StakingverseVaultScriptTestnet.s.sol` or `SLYXTokenScriptTestnet.s.sol` in the commands examples
- Use the `PRIVATE_KEY` environment variable in the `.env` file. This will use the associated address to deploy or interact with the contracts.

## Deploying on LUKSO Mainnet

- When running the command in your CLI, use the following options:
  - use `--rpc-url $LUKSO_MAINNET_RPC_URL`
  - use `--chain 4201`
  - use `--verifier-url $BLOCKSCOUT_MAINNET_API_URL`
- Use as file paths `StakingverseVaultScriptMainnet.s.sol` or `SLYXTokenScriptMainnet.s.sol`
- Use the `--ledger` option in the foundry script. This reduces the risk of exposing private key and use ledger as a safer option. You will need to enter the ledger derivation path in the `.env` file under the environment variable `SIGNER_ADDRESS_DERIVATION_PATH`.

```bash
SIGNER_ADDRESS_DERIVATION_PATH="m/44'/60'/3'/0/0"
```

Then:

```
source .env
```

Then run the script with the `--ledger` option.

---

# `StakingverseVault` Deployment scripts

## Deploy the Vault implementation

```bash
# [Simulation] Deploy the Stakingverse vault (dry run)
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:DeployVaultImplementation --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Deployment] Deploy the Stakingverse vault + verify it
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:DeployVaultImplementation --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

## Deploy the Vault proxy

1. Set the following parameters in your `.env` file:

```shell
VAULT_PROXY_ADMIN_ADDRESS="0x..."
VAULT_IMPLEMENTATION_ADDRESS="0x..."
VAULT_OWNER_ADDRESS="0x..."
```

2. Run the following command to export the new environment variables into your shell.

```bash
source .env
```

3. Run these scripts to deploy the Vault proxy

```bash
# [Simulation] Deploy the Stakingverse vault (dry run)
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:DeployVaultProxy --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Deployment] Deploy the Stakingverse vault + verify it
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:DeployVaultProxy --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

## Upgrade the Vault

1. Set the following parameter in your `.env` file:

```shell
NEW_VAULT_IMPLEMENTATION_ADDRESS="0x..."
```

2. Run the following command to export the new environment variables into your shell.

```bash
source .env
```

3. Run these scripts to upgrade the Vault proxy

```bash
# [Simulation] Upgrade the Vault to a new implementation (dry run)
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:UpgradeVault --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Upgrade the Vault to a new implementation
forge script --chain 4201 script/StakingverseVaultScriptTestnet.s.sol:UpgradeVault --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast -vvvv
```

# `SLYXToken` deployment scripts

## Deploy the SLYX Token implementation

```bash
# [Simulation] Deploy the SLYX Token Implementation (dry run)
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:DeploySLYXTokenImplementation --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Deploy the SLYX Token implementation + verify it
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:DeploySLYXTokenImplementation --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

## Deploy the SLYX Token proxy contract

1. Set the following parameters in your `.env` file:

```shell
SLYX_PROXY_ADMIN_ADDRESS="0x..."
SLYX_TOKEN_CONTRACT_OWNER_ADDRESS="0x..."
SLYX_LINKED_VAULT_ADDRESS="0x..."
SLYX_TOKEN_IMPLEMENTATION_ADDRESS=""
```

2. Run the following command to export the new environment variables into your shell.

```bash
source .env
```

3. Run these scripts to deploy the proxy

```bash
# [Simulation] Deploy the SLYX Token proxy (dry run)
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:DeploySLYXTokenProxy --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Deploy the SLYX Token proxy + verify it
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:DeploySLYXTokenProxy --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

## Upgrade the SLYX Token contract

1. Set the following parameter in your `.env` file:

```shell
NEW_SLYX_TOKEN_IMPLEMENTATION_ADDRESS="0x..."
```

2. Run the following command to export the new environment variables into your shell.

```bash
source .env
```

3. Run these scripts to upgrade the sLYX token proxy

```bash
# [Simulation] Upgrade the SLYX Token proxy to a new implementation (dry run)
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:UpgradeSLYXToken --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Upgrade the SLYX Token proxy to a new implementation
forge script --chain 4201 script/SLYXTokenScriptTestnet.s.sol:UpgradeSLYXToken --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast -vvvv
```
