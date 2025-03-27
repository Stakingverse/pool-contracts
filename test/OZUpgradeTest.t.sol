// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {Upgrades, Options} from "openzeppelin-foundry-upgrades/LegacyUpgrades.sol";
import {IDepositContract} from "../src/IDepositContract.sol";

// Contracts to test
import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts-v4.9.0/proxy/transparent/TransparentUpgradeableProxy.sol";
import {ProxyAdmin} from "@openzeppelin/contracts/proxy/transparent/ProxyAdmin.sol";

import {Vault as VaultV1} from "../src/Vault.sol";
import {StakingverseVault} from "../src/StakingverseVault.sol";

// Constants
import {PROXY_ADMIN_MAINNET, VAULT_PROXY_MAINNET} from "../script/MainnetConstants.sol";

/// @dev Test to ensure that the upgrade is safe and the new implementation contract is valid, using OpenZeppelin Foundry upgrades library
/// This ensures that the new implementation contract is safe to upgrade to and that the storage layout is compatible with the proxy linked to the current implementation
/// Tested with local anvil chain
contract LocalUpgradeTest is Test {
    address constant CURRENT_VAULT_OWNER = 0x983aBC616f2442bAB7a917E6bb8660Df8b01F3bF;
    address constant CURRENT_VAULT_OPERATOR = 0x983aBC616f2442bAB7a917E6bb8660Df8b01F3bF;

    address proxyAdmin;

    // Necessary as OZ upgrade plugin uses a contract to manage the proxy and perform upgrade through operations through it.
    address proxyAdminContract;

    // current vault contract implementation to upgrade from
    VaultV1 currentVaultImplementation = new VaultV1();

    IProxy vaultProxy;

    function setUp() public {
        proxyAdmin = address(11);

        vm.prank(proxyAdmin);
        proxyAdminContract = address(new ProxyAdmin());

        // 1. Deploy the existing vault implementation
        currentVaultImplementation = new VaultV1();

        // 2. Deploy the proxy and initialize it
        bytes memory initializeCalldata = abi.encodeCall(
            currentVaultImplementation.initialize,
            (CURRENT_VAULT_OWNER, CURRENT_VAULT_OPERATOR, IDepositContract(0xCAfe00000000000000000000000000000000CAfe))
        );

        vaultProxy = IProxy(
            address(
                new TransparentUpgradeableProxy(
                    address(currentVaultImplementation), proxyAdminContract, initializeCalldata
                )
            )
        );
    }

    // 3. Deploy the new vault implementation contract + upgrade the proxy to this new implementation.
    // The function `Upgrades.upgradeProxy` deploy the new implementation contract for us.
    function test_tryDeployingNewImplementationAndUpgrade() public {
        Options memory opts;

        // reference current Vault implementation to compare to for storage layout and upgrade checks
        opts.referenceContract = "Vault.sol";

        // SKIP this check as new implementation contains a constructor that includes a `_disableInitializer`
        // (to prevent implementation contract from being initialized)
        // but also an actual `initialize(...)` function that is called by the proxy.
        opts.unsafeAllow = "constructor";

        Upgrades.upgradeProxy(address(vaultProxy), "StakingverseVault.sol", "", opts, proxyAdmin);
    }
}
