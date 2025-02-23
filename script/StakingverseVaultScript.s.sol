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
import {PROXY_ADMIN, VAULT_PROXY} from "./MainnetConstants.sol";

uint32 constant SERVICE_FEE = 8_000; // 8%
uint256 constant DEPOSIT_LIMIT = 2000 * 32 ether;

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

/// Warning: Vault proxy is already deployed on LUKSO Mainnet.
/// Use this script for testing purpose only. For instance to deploy a proxy on LUKSO Testnet.
contract DeployVaultProxy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Deployment parameters for the vault
        address admin = vm.envAddress("PROXY_ADMIN_ADDRESS");
        address owner = vm.envAddress("VAULT_OWNER_ADDRESS");
        address operator = vm.envAddress("VAULT_OWNER_ADDRESS");

        address vaultImplementation = vm.envAddress(
            "VAULT_IMPLEMENTATION_ADDRESS"
        );

        vm.broadcast(deployerPrivateKey);
        address proxy = address(
            new TransparentUpgradeableProxy(
                // logic contract
                vaultImplementation,
                // proxy admin
                admin,
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
            signerAddress == PROXY_ADMIN,
            string.concat(
                "StakingverseVaultScript.s.sol:ChangeAdmin: caller should be the proxy admin. Signer address used: ",
                Strings.toHexString(signerAddress)
            )
        );

        address newProxyAdmin = vm.envAddress("PROXY_ADMIN_ADDRESS");

        vm.broadcast(signerAddress);
        IProxy(VAULT_PROXY).changeAdmin(newProxyAdmin);

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
            signerAddress == PROXY_ADMIN,
            string.concat(
                "StakingverseVaultScript.s.sol:UpgradeVault: caller should be the proxy admin. Signer address used: ",
                Strings.toHexString(signerAddress)
            )
        );

        address newVaultImplementationAddress = vm.envAddress(
            "VAULT_IMPLEMENTATION_ADDRESS"
        );

        vm.broadcast(signerAddress);
        IProxy(VAULT_PROXY).upgradeTo(newVaultImplementationAddress);

        console.log(
            string.concat(
                "Vault proxy upgraded to new implementation address: ",
                Strings.toHexString(newVaultImplementationAddress)
            )
        );
    }
}

// contract Configure is Script {
//     function run() external {
//         uint256 privateKey = vm.envUint("PRIVATE_KEY");
//         address operator = vm.envAddress("OWNER_ADDRESS");
//         address feeRecipient = vm.envAddress("FEE_RECIPIENT_ADDRESS");
//         address oracle = vm.envAddress("VAULT_ORACLE_ADDRESS");

//         Vault vault = Vault(payable(vm.envAddress("CONTRACT_POOL_VAULT")));

//         if (vault.operator() != operator) {
//             console.log(
//                 string.concat(
//                     "Vault: set operator ",
//                     Strings.toHexString(operator)
//                 )
//             );
//             vm.broadcast(privateKey);
//             vault.setOperator(operator);
//         }

//         if (vault.feeRecipient() != profile) {
//             console.log(
//                 string.concat(
//                     "Vault: set fee recipient ",
//                     Strings.toHexString(profile)
//                 )
//             );
//             vm.broadcast(privateKey);
//             vault.setFeeRecipient(profile);
//         }

//         if (vault.fee() != SERVICE_FEE) {
//             console.log(
//                 string.concat("Vault: set fee ", Strings.toString(SERVICE_FEE))
//             );
//             vm.broadcast(operator);
//             vault.setFee(SERVICE_FEE);
//         }

//         if (vault.depositLimit() != DEPOSIT_LIMIT) {
//             console.log(
//                 string.concat(
//                     "Vault: set deposit limit ",
//                     Strings.toString(DEPOSIT_LIMIT)
//                 )
//             );
//             vm.broadcast(privateKey);
//             vault.setDepositLimit(DEPOSIT_LIMIT);
//         }

//         if (vault.restricted()) {
//             console.log("Vault: set not restricted");
//             vm.broadcast(privateKey);
//             vault.setRestricted(false);
//         }

//         if (!vault.isAllowlisted(profile)) {
//             console.log(
//                 string.concat("Vault: allowlist ", Strings.toHexString(profile))
//             );
//             vm.broadcast(privateKey);
//             vault.allowlist(profile, true);
//         }

//         if (!vault.isOracle(oracle)) {
//             console.log(
//                 string.concat(
//                     "Vault: enable oracle ",
//                     Strings.toHexString(oracle)
//                 )
//             );
//             vm.broadcast(privateKey);
//             vault.enableOracle(oracle, true);
//         }
//     }
// }
