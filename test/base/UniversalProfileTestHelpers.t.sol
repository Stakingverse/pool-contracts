// SPDX-License-Identifer: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";

// modules
import {UniversalProfile} from "@lukso/universalprofile-contracts/contracts/UniversalProfile.sol";
import {LSP6KeyManager} from "@lukso/lsp6-contracts/contracts/LSP6KeyManager.sol";
import {LSP1UniversalReceiverDelegateUP as LSP1Delegate} from "@lukso/lsp1delegate-contracts/contracts/LSP1UniversalReceiverDelegateUP.sol";

// libraries
import {LSP2Utils} from "@lukso/lsp2-contracts/contracts/LSP2Utils.sol";
import {LSP6Utils} from "@lukso/lsp6-contracts/contracts/LSP6Utils.sol";

// constants
import {_LSP1_UNIVERSAL_RECEIVER_DELEGATE_KEY} from "@lukso/lsp1-contracts/contracts/LSP1Constants.sol";
import {_LSP6KEY_ADDRESSPERMISSIONS_PERMISSIONS_PREFIX, _PERMISSION_REENTRANCY, _PERMISSION_SUPER_SETDATA, ALL_REGULAR_PERMISSIONS} from "@lukso/lsp6-contracts/contracts/LSP6Constants.sol";

contract UniversalProfileTestHelpers is Test {
    LSP1Delegate lsp1DelegateImplementation;

    function _deployLSP1DelegateSingleton() internal {
        lsp1DelegateImplementation = new LSP1Delegate();
    }

    function _setUpUniversalProfileLikeBrowserExtension(
        address mainController
    ) internal returns (UniversalProfile) {
        UniversalProfile universalProfile = new UniversalProfile(
            mainController
        );

        LSP6KeyManager keyManager = new LSP6KeyManager(
            address(universalProfile)
        );

        _setupMainControllerPermissions(universalProfile, mainController);
        _setUPLSP1DelegateWithPermissions(universalProfile, mainController);

        _transferOwnershipToKeyManager(
            universalProfile,
            mainController,
            keyManager
        );

        return universalProfile;
    }

    function _setUPLSP1DelegateWithPermissions(
        UniversalProfile universalProfile,
        address mainController
    ) internal {
        vm.prank(mainController);
        universalProfile.setData(
            _LSP1_UNIVERSAL_RECEIVER_DELEGATE_KEY,
            abi.encodePacked(lsp1DelegateImplementation)
        );

        // give SUPER_SETDATA permission to universalReceiverDelegate
        bytes32 dataKeyURD = LSP2Utils.generateMappingWithGroupingKey(
            _LSP6KEY_ADDRESSPERMISSIONS_PERMISSIONS_PREFIX,
            bytes20(abi.encodePacked(lsp1DelegateImplementation))
        );

        // use Bitwise OR to set each permission bit individually
        // (just for simplicity here and avoid creating a `bytes32[] memory` array).
        // However, it is recommended to use the LSP6Utils.combinePermissions(...) function.
        vm.prank(mainController);
        universalProfile.setData(
            dataKeyURD,
            abi.encodePacked(_PERMISSION_REENTRANCY | _PERMISSION_SUPER_SETDATA)
        );
    }

    function _setupMainControllerPermissions(
        UniversalProfile universalProfile,
        address mainController
    ) internal {
        bytes32 dataKey = LSP2Utils.generateMappingWithGroupingKey(
            _LSP6KEY_ADDRESSPERMISSIONS_PERMISSIONS_PREFIX,
            bytes20(mainController)
        );

        bytes memory dataValue = abi.encodePacked(ALL_REGULAR_PERMISSIONS);

        vm.prank(mainController);
        universalProfile.setData(dataKey, dataValue);
    }

    function _transferOwnershipToKeyManager(
        UniversalProfile universalProfile,
        address oldOwner,
        LSP6KeyManager keyManager
    ) internal {
        // transfer ownership to keyManager
        vm.prank(oldOwner);
        universalProfile.transferOwnership(address(keyManager));

        // accept ownership of UniversalProfile as keyManager
        vm.prank(address(keyManager));
        universalProfile.acceptOwnership();

        // check if keyManager is owner of UniversalProfile
        assertEq(universalProfile.owner(), address(keyManager));
    }
}
