// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.22;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {StakingverseVault} from "../src/StakingverseVault.sol";

import {DepositContract} from "../src/IDepositContract.sol";

import {PROXY_ADMIN_MAINNET, VAULT_PROXY_MAINNET} from "./MainnetConstants.sol";

contract DeployVaultImplementation is Script {
    function run() external {
        // Deploy the Vault implementation
        vm.startBroadcast();
        StakingverseVault vault = new StakingverseVault();
        vm.stopBroadcast();

        console.log(string.concat("StakingverseVault implementation deployed at ", Strings.toHexString(address(vault))));
    }
}

contract DeployVaultProxy is Script {
    function run() external {
        // Proxy deployment parameters for the vault
        address admin = vm.envAddress("VAULT_PROXY_ADMIN_ADDRESS");
        address vaultImplementation = vm.envAddress("VAULT_IMPLEMENTATION_ADDRESS");

        // Parameters to initialize the vault
        address owner = vm.envAddress("VAULT_OWNER_ADDRESS");
        address operator = vm.envAddress("VAULT_OWNER_ADDRESS");

        vm.startBroadcast();
        address proxy = address(
            new TransparentUpgradeableProxy(
                // logic contract
                vaultImplementation,
                // proxy admin
                admin,
                // `initialize(address,address,IDepositContract)` calldata
                abi.encodeCall(StakingverseVault.initialize, (owner, operator, DepositContract))
            )
        );
        vm.stopBroadcast();

        console.log(string.concat("StakingverseVault proxy deployed at ", Strings.toHexString(proxy)));
        console.log(string.concat("Linked to implementation at address ", Strings.toHexString(vaultImplementation)));
    }
}

contract ChangeAdmin is Script {
    function run() external {
        address newProxyAdmin = vm.envAddress("NEW_VAULT_PROXY_ADMIN_ADDRESS");

        vm.startBroadcast();
        IProxy(PROXY_ADMIN_MAINNET).changeAdmin(newProxyAdmin);
        vm.stopBroadcast();

        console.log(string.concat("Vault proxy admin changed to ", Strings.toHexString(newProxyAdmin)));
    }
}

contract UpgradeVault is Script {
    function run() external {
        address newVaultImplementationAddress = vm.envAddress("NEW_VAULT_IMPLEMENTATION_ADDRESS");

        vm.startBroadcast();
        IProxy(VAULT_PROXY_MAINNET).upgradeTo(newVaultImplementationAddress);
        vm.stopBroadcast();

        console.log(
            string.concat(
                "Vault proxy upgraded to new implementation address: ",
                Strings.toHexString(newVaultImplementationAddress)
            )
        );
    }
}
