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

// Uncomment and use these constants instead to deploy on testnet
import {
    PROXY_ADMIN_TESTNET,
    SLYX_TOKEN_PROXY_TESTNET
} from "./TestnetConstants.sol";

// import {PROXY_ADMIN, SLYX_TOKEN_PROXY} from "./MainnetConstants.sol";

contract DeploySLYXTokenImplementation is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.broadcast(deployerPrivateKey);
        SLYXToken slyxToken = new SLYXToken();

        console.log(
            string.concat(
                "SLYXToken implementation deployed at ",
                Strings.toHexString(address(slyxToken))
            )
        );
    }
}

/// Warning: SLYXToken proxy is already deployed on LUKSO Mainnet.
/// Use this script for testing purpose only. For instance to deploy a proxy on LUKSO Testnet.
contract DeploySLYXTokenProxy is Script {
    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

        // Deployment parameters for the SLYXToken
        address admin = vm.envAddress("PROXY_ADMIN_ADDRESS");
        address owner = vm.envAddress("SLYX_TOKEN_CONTRACT_OWNER_ADDRESS");
        address linkedVault = vm.envAddress("LINKED_VAULT_ADDRESS");

        address sLyxTokenImplementation = vm.envAddress(
            "SLYX_TOKEN_IMPLEMENTATION_ADDRESS"
        );

        vm.broadcast(deployerPrivateKey);
        address proxy = address(
            new TransparentUpgradeableProxy(
                // logic contract
                sLyxTokenImplementation,
                // proxy admin
                admin,
                // `initialize(address,IVault)` calldata
                abi.encodeCall(
                    SLYXToken.initialize,
                    (owner, IVault(linkedVault))
                )
            )
        );

        console.log(
            string.concat(
                "SLYXToken proxy deployed at ",
                Strings.toHexString(proxy)
            )
        );
        console.log(
            string.concat(
                "Linked to implementation at address ",
                Strings.toHexString(sLyxTokenImplementation)
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

        address newProxyAdmin = vm.envAddress("PROXY_ADMIN_ADDRESS");

        vm.broadcast(signerAddress);
        IProxy(SLYX_TOKEN_PROXY_TESTNET).changeAdmin(newProxyAdmin);

        console.log(
            string.concat(
                "SLYXToken proxy admin changed to ",
                Strings.toHexString(newProxyAdmin)
            )
        );
    }
}
