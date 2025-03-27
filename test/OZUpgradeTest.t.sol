// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {
    Upgrades,
    Options
} from "openzeppelin-foundry-upgrades/LegacyUpgrades.sol";
import {IDepositContract} from "../src/IDepositContract.sol";

// Contracts to test
import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts-v4.9.0/proxy/transparent/TransparentUpgradeableProxy.sol";

import {Vault as VaultV1} from "../src/Vault.sol";
import {StakingverseVault} from "../src/StakingverseVault.sol";

// Constants
import {
    PROXY_ADMIN_MAINNET,
    VAULT_PROXY_MAINNET
} from "../script/MainnetConstants.sol";

/// @dev Test to ensure that the upgrade is safe and the new implementation contract is valid, using OpenZeppelin Foundry upgrades library
/// This ensures that the new implementation contract is safe to upgrade to and that the storage layout is compatible with the proxy linked to the current implementation
contract MainnetForkUpgradeTest is Test {
    address constant CURRENT_VAULT_IMPLEMENTATION =
        0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4;

    function test_shouldReturnCorrectProxyAdminAddress() public view {
        // CHECK current proxy admin address before upgrading
        assertEq(
            Upgrades.getAdminAddress(VAULT_PROXY_MAINNET),
            PROXY_ADMIN_MAINNET
        );

        // TODO: upgrade and check the proxy admin address has NOT changed
    }

    function test_shouldReturnCorrectVaultImplementationAddress() public view {
        // CHECK current implementation address before upgrading
        assertEq(
            Upgrades.getImplementationAddress(VAULT_PROXY_MAINNET),
            CURRENT_VAULT_IMPLEMENTATION
        );

        // TODO: upgrade and check the vault implementation address has changed
    }

    function test_validateUpgradeIsSafe() public {
        /**
         * @dev Validates a new implementation contract in comparison with a reference contract, but does not deploy it.
         *
         * Requires that either the `referenceContract` option is set, or the contract has a `@custom:oz-upgrades-from <reference>` annotation.
         *
         * @param contractName Name of the contract to validate, e.g. "MyContract.sol" or "MyContract.sol:MyContract" or artifact path relative to the project root directory
         * @param opts Common options
         */
        // function validateUpgrade(string memory contractName, Options memory opts) internal {
        //     Core.validateUpgrade(contractName, opts);
        // }
        Options memory opts;
        opts.referenceContract = "Vault.sol";
        opts.unsafeAllow = "constructor";

        Upgrades.validateUpgrade("StakingverseVault.sol", opts);
    }

    function test_preparingUpgrade() public {
        /**
         * @dev Validates a new implementation contract in comparison with a reference contract, deploys the new implementation contract,
         * and returns its address.
         *
         * Requires that either the `referenceContract` option is set, or the contract has a `@custom:oz-upgrades-from <reference>` annotation.
         *
         * Use this method to prepare an upgrade to be run from an admin address you do not control directly or cannot use from your deployment environment.
         *
         * @param contractName Name of the contract to deploy, e.g. "MyContract.sol" or "MyContract.sol:MyContract" or artifact path relative to the project root directory
         * @param opts Common options
         * @return Address of the new implementation contract
         */
        // function prepareUpgrade(string memory contractName, Options memory opts) internal returns (address) {
        //     return Core.prepareUpgrade(contractName, opts);
        // }
        Options memory opts;
        opts.referenceContract = "Vault.sol";
        opts.unsafeAllow = "constructor";

        address newStakingverseVaultAddress = Upgrades.prepareUpgrade(
            "StakingverseVault.sol",
            opts
        );
        console.log(
            unicode"🧪 Test deploying new StakingverseVault implementation!"
        );
        console.log(
            unicode"🚀 New StakingverseVault deployed at address: %s",
            newStakingverseVaultAddress
        );
    }

    function test_tryDeployingNewImplementationAndUpgrade() public {
        vm.skip(true);
        console.log(unicode"👀 Testing if upgrade is safe with OZ upgrade");

        Options memory opts;

        // reference current Vault implementation to compare to for storage layout and upgrade checks
        opts.referenceContract = "Vault.sol";

        // SKIP this check as new implementation contains a constructor that includes a `_disableInitializer`
        // (to prevent implementation contract from being initialized)
        // but also an actual `initialize(...)` function that is called by the proxy.
        // TODO: open an issue with OpenZeppelin Foundry to add a check for this
        opts.unsafeAllow = "constructor";

        Upgrades.upgradeProxy(
            VAULT_PROXY_MAINNET,
            "StakingverseVault.sol",
            "",
            opts,
            PROXY_ADMIN_MAINNET
        );
    }
}

/// @dev Test with local anvil chain
contract LocalUpgradeTest is Test {
    address constant CURRENT_VAULT_OWNER =
        0x983aBC616f2442bAB7a917E6bb8660Df8b01F3bF;
    address constant CURRENT_VAULT_OPERATOR =
        0x983aBC616f2442bAB7a917E6bb8660Df8b01F3bF;

    address proxyAdmin;

    // current vault contract implementation to upgrade from
    VaultV1 currentVaultImplementation = new VaultV1();

    IProxy vaultProxy;

    function setUp() public {
        proxyAdmin = address(11);

        // 1. Deploy the existing vault implementation
        currentVaultImplementation = new VaultV1();

        // 2. Deploy the proxy and initialize it
        bytes memory initializeCalldata = abi.encodeCall(
            currentVaultImplementation.initialize,
            (
                CURRENT_VAULT_OWNER,
                CURRENT_VAULT_OPERATOR,
                IDepositContract(0xCAfe00000000000000000000000000000000CAfe)
            )
        );

        vaultProxy = IProxy(
            address(
                new TransparentUpgradeableProxy(
                    address(currentVaultImplementation),
                    proxyAdmin,
                    initializeCalldata
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

        Upgrades.upgradeProxy(
            VAULT_PROXY_MAINNET,
            "StakingverseVault.sol",
            "",
            opts,
            PROXY_ADMIN_MAINNET
        );
    }
}
