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

import {PROXY_ADMIN_TESTNET, VAULT_PROXY_TESTNET} from "./TestnetConstants.sol";

contract DeployVaultImplementation is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Deploy the Vault implementation
        vm.broadcast(deployerPrivateKey);
        StakingverseVault vault = new StakingverseVault();

        console.log(
            string.concat(
                "StakingverseVault implementation deployed at ",
                Strings.toHexString(address(vault))
            )
        );
    }
}

contract DeployVaultProxy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Proxy deployment parameters for the vault
        address proxyAdmin = vm.envAddress("VAULT_PROXY_ADMIN_ADDRESS");
        address vaultImplementation = vm.envAddress(
            "VAULT_IMPLEMENTATION_ADDRESS"
        );

        // Parameters to initialize the vault
        address owner = vm.envAddress("VAULT_OWNER_ADDRESS");
        address operator = vm.envAddress("VAULT_OWNER_ADDRESS");

        vm.broadcast(deployerPrivateKey);
        address proxy = address(
            new TransparentUpgradeableProxy(
                // logic contract
                vaultImplementation,
                // proxy admin
                proxyAdmin,
                // `initialize(address,address,IDepositContract)` calldata
                abi.encodeCall(
                    StakingverseVault.initialize,
                    (owner, operator, DepositContract)
                )
            )
        );

        console.log(
            string.concat(
                "StakingverseVault proxy deployed at ",
                Strings.toHexString(proxy)
            )
        );
        console.log(
            string.concat(
                "Linked to implementation at address ",
                Strings.toHexString(vaultImplementation)
            )
        );
    }
}

contract ChangeAdmin is Script {
    function run() external {
        uint256 signerPrivateKey = vm.envUint("PRIVATE_KEY");
        address signerAddress = vm.addr(signerPrivateKey);

        require(
            signerAddress == PROXY_ADMIN_TESTNET,
            string.concat(
                "StakingverseVaultScript.s.sol:ChangeAdmin: caller should be the proxy admin. Signer address used: ",
                Strings.toHexString(signerAddress)
            )
        );

        address newProxyAdmin = vm.envAddress("NEW_VAULT_PROXY_ADMIN_ADDRESS");

        vm.broadcast(signerAddress);
        IProxy(VAULT_PROXY_TESTNET).changeAdmin(newProxyAdmin);

        console.log(
            string.concat(
                "Vault proxy admin changed to ",
                Strings.toHexString(newProxyAdmin)
            )
        );
    }
}

contract UpgradeVault is Script {
    function run() external {
        uint256 signerPrivateKey = vm.envUint("PRIVATE_KEY");
        address signerAddress = vm.addr(signerPrivateKey);

        require(
            signerAddress == PROXY_ADMIN_TESTNET,
            string.concat(
                "StakingverseVaultScript.s.sol:UpgradeVault: caller should be the proxy admin. Signer address used: ",
                Strings.toHexString(signerAddress)
            )
        );

        address newVaultImplementationAddress = vm.envAddress(
            "NEW_VAULT_IMPLEMENTATION_ADDRESS"
        );

        vm.broadcast(signerPrivateKey);
        IProxy(VAULT_PROXY_TESTNET).upgradeTo(newVaultImplementationAddress);

        console.log(
            string.concat(
                "Vault proxy upgraded to new implementation address: ",
                Strings.toHexString(newVaultImplementationAddress)
            )
        );
    }
}
