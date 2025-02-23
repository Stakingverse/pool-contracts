# Scripts for Deployment & Configuration

## Setup

1. Create a copy of `.env.example` and fill in the informations inside it

```bash
cp .env.example .env
```

2. Load the environement variables into the shell

```bash
source .env
```

3. Run one of the following deployment scripts

## Deployment

```bash
# [Simulation] Deploy the Stakingverse vault (dry run)
forge script --chain 4201 script/StakingverseVaultScript.s.sol:DeployVaultImplementation --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Deployment] Deploy the Stakingverse vault + verify it
forge script --chain 4201 script/StakingverseVaultScript.s.sol:DeployVaultImplementation --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

## Upgrade Proxy

```bash
# [Simulation] Upgrade the Vault to a new implementation (dry run)
forge script --chain 4201 script/StakingverseVaultScript.s.sol:UpgradeVault --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Upgrade the Vault to a new implementation
forge script --chain 4201 script/StakingverseVaultScript.s.sol:UpgradeVault --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast -vvvv
```

## SLYX Token Deployment

1. To deploy the implementation

```bash
# [Simulation] Deploy the SLYX Token Implementation (dry run)
forge script --chain 4201 script/SLYXTokenScript.s.sol:DeploySLYXTokenImplementation --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Deploy the SLYX Token implementation + verify it
forge scrip --chain 4201 script/SLYXTokenScript.s.sol:DeploySLYXTokenImplementation --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```

2. To deploy the proxy linked to this implementation.

2.1. go to your `.env` file and set the following parameters.

```shell
PROXY_ADMIN_ADDRESS="0x..."
SLYX_TOKEN_CONTRACT_OWNER_ADDRESS="0x..."

# Address of the Vault Proxy deployed in previous step
LINKED_VAULT_ADDRESS="0x..."

# Address of the SLYX Token contract deployed in step 1 above
SLYX_TOKEN_IMPLEMENTATION_ADDRESS=""
```

2.1. run the following command to export the new environement variables into your shell

```bash
source .env
```

2.3. Run the scripts below

```bash
# [Simulation] Deploy the SLYX Token proxy (dry run)
forge script --chain 4201 script/SLYXTokenScript.s.sol:DeploySLYXTokenProxy --rpc-url $LUKSO_TESTNET_RPC_URL -vvvv

# [Transaction] Deploy the SLYX Token implementation + verify it
forge script --chain 4201 script/SLYXTokenScript.s.sol:DeploySLYXTokenProxy --rpc-url $LUKSO_TESTNET_RPC_URL --broadcast --verify --verifier blockscout --verifier-url $BLOCKSCOUT_TESTNET_API_URL -vvvv
```
