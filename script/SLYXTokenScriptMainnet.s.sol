// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {console} from "forge-std/console.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {LSP2Utils} from "@lukso/lsp2-contracts/contracts/LSP2Utils.sol";

import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {SLYXToken} from "../src/SLYXToken.sol";

import {IVault} from "../src/IVault.sol";
import {IERC725Y} from "@erc725/smart-contracts/contracts/interfaces/IERC725Y.sol";

import {_INTERFACEID_LSP0} from "@lukso/lsp0-contracts/contracts/LSP0Constants.sol";
import {
    _LSP4_METADATA_KEY,
    _LSP4_CREATORS_ARRAY_KEY,
    _LSP4_CREATORS_MAP_KEY_PREFIX
} from "@lukso/lsp4-contracts/contracts/LSP4Constants.sol";
import {PROXY_ADMIN_MAINNET, SLYX_TOKEN_PROXY_MAINNET} from "./MainnetConstants.sol";

contract DeploySLYXTokenImplementation is Script {
    function run() external {
        vm.startBroadcast();
        SLYXToken slyxToken = new SLYXToken();
        vm.stopBroadcast();

        console.log(string.concat("SLYXToken implementation deployed at ", Strings.toHexString(address(slyxToken))));
    }
}

contract DeploySLYXTokenProxy is Script {
    function run() external {
        // Proxy deployment parameters for the SLYXToken
        address proxyAdmin = vm.envAddress("SLYX_PROXY_ADMIN_ADDRESS");
        address sLyxTokenImplementation = vm.envAddress("SLYX_TOKEN_IMPLEMENTATION_ADDRESS");

        // Parameters to initialize the SLYX Token contract
        address owner = vm.envAddress("SLYX_TOKEN_CONTRACT_OWNER_ADDRESS");
        address linkedVault = vm.envAddress("SLYX_LINKED_VAULT_ADDRESS");

        vm.startBroadcast();
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
        vm.stopBroadcast();

        console.log(string.concat("SLYXToken proxy deployed at ", Strings.toHexString(proxy)));
        console.log(string.concat("Linked to implementation at address ", Strings.toHexString(sLyxTokenImplementation)));
    }
}

contract UpgradeSLYXToken is Script {
    function run() external {
        address newSLYXTokenImplementation = vm.envAddress("NEW_SLYX_TOKEN_IMPLEMENTATION_ADDRESS");

        vm.startBroadcast();
        IProxy(SLYX_TOKEN_PROXY_MAINNET).upgradeTo(
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
        address newProxyAdmin = vm.envAddress("NEW_SLYX_PROXY_ADMIN_ADDRESS");

        vm.startBroadcast();
        IProxy(SLYX_TOKEN_PROXY_MAINNET).changeAdmin(newProxyAdmin);
        vm.stopBroadcast();

        console.log(string.concat("SLYXToken proxy admin changed to ", Strings.toHexString(newProxyAdmin)));
    }
}

contract SetMetadata is Script {
    function run() external {
        bytes memory encodedMetadataValue = vm.envBytes("SLYX_TOKEN_METADATA_VALUE");

        vm.startBroadcast();
        IERC725Y(SLYX_TOKEN_PROXY_MAINNET).setData(_LSP4_METADATA_KEY, encodedMetadataValue);
        vm.stopBroadcast();
    }
}

contract SetCreator is Script {
    function run() external {
        // Stakingverse Universal Profile address
        address creator = 0x900Be67854A47282211844BbdF5Cc0f332620513;

        bytes32[] memory dataKeys = new bytes32[](3);
        bytes[] memory dataValues = new bytes[](3);

        dataKeys[0] = _LSP4_CREATORS_ARRAY_KEY;
        dataValues[0] = abi.encodePacked(uint128(1));

        dataKeys[1] = LSP2Utils.generateArrayElementKeyAtIndex(_LSP4_CREATORS_ARRAY_KEY, 0);
        dataValues[1] = abi.encodePacked(creator);

        dataKeys[2] = LSP2Utils.generateMappingKey(_LSP4_CREATORS_MAP_KEY_PREFIX, bytes20(creator));
        dataValues[2] = abi.encodePacked(_INTERFACEID_LSP0, uint128(0));

        vm.startBroadcast();
        IERC725Y(SLYX_TOKEN_PROXY_MAINNET).setDataBatch(dataKeys, dataValues);
        vm.stopBroadcast();
    }
}
