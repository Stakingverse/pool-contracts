// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {SLYXToken} from "../src/SLYXToken.sol";

import {IVault} from "../src/IVault.sol";

import {PROXY_ADMIN_TESTNET, SLYX_TOKEN_PROXY_TESTNET} from "./TestnetConstants.sol";

contract DeploySLYXTokenImplementation is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.broadcast(deployerPrivateKey);
        SLYXToken slyxToken = new SLYXToken();

        console.log(string.concat("SLYXToken implementation deployed at ", Strings.toHexString(address(slyxToken))));
    }
}

contract DeploySLYXTokenProxy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Proxy deployment parameters for the SLYXToken
        address proxyAdmin = vm.envAddress("SLYX_PROXY_ADMIN_ADDRESS");
        address sLyxTokenImplementation = vm.envAddress("SLYX_TOKEN_IMPLEMENTATION_ADDRESS");

        // Parameters to initialize the SLYX Token contract
        address owner = vm.envAddress("SLYX_TOKEN_CONTRACT_OWNER_ADDRESS");
        address linkedVault = vm.envAddress("SLYX_LINKED_VAULT_ADDRESS");

        vm.broadcast(deployerPrivateKey);
        address proxy = address(
            new TransparentUpgradeableProxy(
                // logic contract
                sLyxTokenImplementation,
                // proxy admin
                proxyAdmin,
                // `initialize(address,IVault)` calldata
                abi.encodeCall(SLYXToken.initialize, (owner, IVault(linkedVault)))
            )
        );

        console.log(string.concat("SLYXToken proxy deployed at ", Strings.toHexString(proxy)));
        console.log(string.concat("Linked to implementation at address ", Strings.toHexString(sLyxTokenImplementation)));
    }
}

contract UpgradeSLYXToken is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        address newSLYXTokenImplementation = vm.envAddress("NEW_SLYX_TOKEN_IMPLEMENTATION_ADDRESS");

        vm.startBroadcast(deployerPrivateKey);
        IProxy(SLYX_TOKEN_PROXY_TESTNET).upgradeTo(
            // new logic contract
            newSLYXTokenImplementation
        );
        vm.stopBroadcast();

        console.log(
            string.concat(
                "SLYXToken proxy upgraded to implementation at ", Strings.toHexString(newSLYXTokenImplementation)
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
                "SLYXTokenScript.s.sol:ChangeAdmin: caller should be the proxy admin. Signer address used: ",
                Strings.toHexString(signerAddress)
            )
        );

        address newProxyAdmin = vm.envAddress("NEW_SLYX_PROXY_ADMIN_ADDRESS");

        vm.broadcast(signerPrivateKey);
        IProxy(SLYX_TOKEN_PROXY_TESTNET).changeAdmin(newProxyAdmin);

        console.log(string.concat("SLYXToken proxy admin changed to ", Strings.toHexString(newProxyAdmin)));
    }
}
