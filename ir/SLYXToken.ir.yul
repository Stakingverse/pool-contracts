
/// @use-src 0:"node_modules/@erc725/smart-contracts-v8/contracts/ERC725YInitAbstract.sol", 3:"node_modules/@erc725/smart-contracts-v8/contracts/interfaces/IERC725Y.sol", 12:"node_modules/@lukso/lsp17contractextension-contracts/contracts/LSP17Extendable.sol", 15:"node_modules/@lukso/lsp4-contracts/contracts/LSP4DigitalAssetMetadataInitAbstract.sol", 17:"node_modules/@lukso/lsp7-contracts/contracts/ILSP7DigitalAsset.sol", 19:"node_modules/@lukso/lsp7-contracts/contracts/LSP7DigitalAssetInitAbstract.sol", 21:"node_modules/@lukso/lsp7-contracts/contracts/extensions/LSP7BurnableInitAbstract.sol", 22:"node_modules/@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol", 23:"node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol", 24:"node_modules/@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol", 27:"node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol", 28:"node_modules/@openzeppelin/contracts-upgradeable/utils/introspection/ERC165Upgradeable.sol", 29:"node_modules/@openzeppelin/contracts-upgradeable/utils/introspection/IERC165Upgradeable.sol", 39:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol", 41:"node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol", 45:"src/ISLYX.sol", 47:"src/IVaultStakeRecipient.sol", 49:"src/SLYXToken.sol"
object "SLYXToken_390" {
    code {
        /// @src 49:1613:9158  "contract SLYXToken is..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_SLYXToken_390()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("SLYXToken_390_deployed"), datasize("SLYXToken_390_deployed"))

        return(_1, datasize("SLYXToken_390_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @ast-id 47
        /// @src 49:1972:2025  "constructor() {..."
        function constructor_SLYXToken_390() {

            /// @src 49:1972:2025  "constructor() {..."
            constructor_PausableUpgradeable_1992()

            fun__disableInitializers_7210()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 24:677:3107  "abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {..."
        function constructor_PausableUpgradeable_1992() {

            /// @src 24:677:3107  "abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {..."
            constructor_LSP7BurnableInitAbstract_1864()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 21:323:726  "abstract contract LSP7BurnableInitAbstract is LSP7DigitalAssetInitAbstract {..."
        function constructor_LSP7BurnableInitAbstract_1864() {

            /// @src 21:323:726  "abstract contract LSP7BurnableInitAbstract is LSP7DigitalAssetInitAbstract {..."
            constructor_LSP7DigitalAssetInitAbstract_1826()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 19:2537:34139  "abstract contract LSP7DigitalAssetInitAbstract is..."
        function constructor_LSP7DigitalAssetInitAbstract_1826() {

            /// @src 19:2537:34139  "abstract contract LSP7DigitalAssetInitAbstract is..."
            constructor_LSP17Extendable_5123()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 12:887:4781  "abstract contract LSP17Extendable is ERC165 {..."
        function constructor_LSP17Extendable_5123() {

            /// @src 12:887:4781  "abstract contract LSP17Extendable is ERC165 {..."
            constructor_ERC165_7535()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 39:726:986  "abstract contract ERC165 is IERC165 {..."
        function constructor_ERC165_7535() {

            /// @src 39:726:986  "abstract contract ERC165 is IERC165 {..."
            constructor_IERC165_8187()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 41:405:852  "interface IERC165 {..."
        function constructor_IERC165_8187() {

            /// @src 41:405:852  "interface IERC165 {..."
            constructor_LSP4DigitalAssetMetadataInitAbstract_5982()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 15:786:2691  "abstract contract LSP4DigitalAssetMetadataInitAbstract is ERC725YInitAbstract {..."
        function constructor_LSP4DigitalAssetMetadataInitAbstract_5982() {

            /// @src 15:786:2691  "abstract contract LSP4DigitalAssetMetadataInitAbstract is ERC725YInitAbstract {..."
            constructor_ERC725YInitAbstract_8164()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 0:1076:7292  "abstract contract ERC725YInitAbstract is..."
        function constructor_ERC725YInitAbstract_8164() {

            /// @src 0:1076:7292  "abstract contract ERC725YInitAbstract is..."
            constructor_IERC725Y_9042()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 3:384:3019  "interface IERC725Y {..."
        function constructor_IERC725Y_9042() {

            /// @src 3:384:3019  "interface IERC725Y {..."
            constructor_ERC165Upgradeable_9220()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 28:804:1540  "abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {..."
        function constructor_ERC165Upgradeable_9220() {

            /// @src 28:804:1540  "abstract contract ERC165Upgradeable is Initializable, IERC165Upgradeable {..."
            constructor_IERC165Upgradeable_9713()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 29:405:863  "interface IERC165Upgradeable {..."
        function constructor_IERC165Upgradeable_9713() {

            /// @src 29:405:863  "interface IERC165Upgradeable {..."
            constructor_OwnableUpgradeable_9175()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 22:729:3167  "abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {..."
        function constructor_OwnableUpgradeable_9175() {

            /// @src 22:729:3167  "abstract contract OwnableUpgradeable is Initializable, ContextUpgradeable {..."
            constructor_ContextUpgradeable_7280()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 27:687:1483  "abstract contract ContextUpgradeable is Initializable {..."
        function constructor_ContextUpgradeable_7280() {

            /// @src 27:687:1483  "abstract contract ContextUpgradeable is Initializable {..."
            constructor_Initializable_7229()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 23:2394:6640  "abstract contract Initializable {..."
        function constructor_Initializable_7229() {

            /// @src 23:2394:6640  "abstract contract Initializable {..."
            constructor_ILSP7DigitalAsset_6149()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 17:156:13904  "interface ILSP7DigitalAsset {..."
        function constructor_ILSP7DigitalAsset_6149() {

            /// @src 17:156:13904  "interface ILSP7DigitalAsset {..."
            constructor_ISLYX_3206()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 45:64:1554  "interface ISLYX {..."
        function constructor_ISLYX_3206() {

            /// @src 45:64:1554  "interface ISLYX {..."
            constructor_IVaultStakeRecipient_7841()

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        /// @src 47:65:392  "interface IVaultStakeRecipient {..."
        function constructor_IVaultStakeRecipient_7841() {

            /// @src 47:65:392  "interface IVaultStakeRecipient {..."

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

        function shift_right_8_unsigned(value) -> newValue {
            newValue :=

            shr(8, value)

        }

        function cleanup_from_storage_t_bool(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
            value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
        }

        function read_from_storage_split_offset_1_t_bool(slot) -> value {
            value := extract_from_storage_value_offset_1t_bool(sload(slot))

        }

        function cleanup_t_bool(value) -> cleaned {
            cleaned := iszero(iszero(value))
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a(memPtr) {

            mstore(add(memPtr, 0), "Initializable: contract is initi")

            mstore(add(memPtr, 32), "alizing")

        }

        function abi_encode_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 39)
            store_literal_in_memory_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a(pos)
            end := add(pos, 64)
        }

        function abi_encode_tuple_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a(condition ) {
            if iszero(condition) {
                let memPtr := allocate_unbounded()
                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function extract_from_storage_value_offset_0t_uint8(slot_value) -> value {
            value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint8(slot) -> value {
            value := extract_from_storage_value_offset_0t_uint8(sload(slot))

        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_1_shift_0(value, toInsert) -> result {
            let mask := 255
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint8_to_t_uint8(value) -> converted {
            converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
        }

        function prepare_store_t_uint8(value) -> ret {
            ret := value
        }

        function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
        }

        function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint8(value))
        }

        function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
            tail := add(headStart, 32)

            abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

        }

        /// @ast-id 7210
        /// @src 23:5939:6219  "function _disableInitializers() internal virtual {..."
        function fun__disableInitializers_7210() {

            /// @src 23:6007:6020  "_initializing"
            let _2 := read_from_storage_split_offset_1_t_bool(0x00)
            let expr_7179 := _2
            /// @src 23:6006:6020  "!_initializing"
            let expr_7180 := cleanup_t_bool(iszero(expr_7179))
            /// @src 23:5998:6064  "require(!_initializing, \"Initializable: contract is initializing\")"
            require_helper_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a(expr_7180)
            /// @src 23:6078:6090  "_initialized"
            let _3 := read_from_storage_split_offset_0_t_uint8(0x00)
            let expr_7184 := _3
            /// @src 23:6094:6109  "type(uint8).max"
            let expr_7189 := 255
            /// @src 23:6078:6109  "_initialized != type(uint8).max"
            let expr_7190 := iszero(eq(cleanup_t_uint8(expr_7184), cleanup_t_uint8(expr_7189)))
            /// @src 23:6074:6213  "if (_initialized != type(uint8).max) {..."
            if expr_7190 {
                /// @src 23:6140:6155  "type(uint8).max"
                let expr_7196 := 255
                /// @src 23:6125:6155  "_initialized = type(uint8).max"
                update_storage_value_offset_0t_uint8_to_t_uint8(0x00, expr_7196)
                let expr_7197 := expr_7196
                /// @src 23:6186:6201  "type(uint8).max"
                let expr_7204 := 255
                /// @src 23:6174:6202  "Initialized(type(uint8).max)"
                let _4 := 0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498
                {
                    let _5 := allocate_unbounded()
                    let _6 := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(_5 , expr_7204)
                    log1(_5, sub(_6, _5) , _4)
                }/// @src 23:6074:6213  "if (_initialized != type(uint8).max) {..."
            }

        }
        /// @src 49:1613:9158  "contract SLYXToken is..."

    }
    /// @use-src 0:"node_modules/@erc725/smart-contracts-v8/contracts/ERC725YInitAbstract.sol", 8:"node_modules/@lukso/lsp1-contracts/contracts/LSP1Constants.sol", 9:"node_modules/@lukso/lsp1-contracts/contracts/LSP1Utils.sol", 10:"node_modules/@lukso/lsp17contractextension-contracts/contracts/LSP17Constants.sol", 12:"node_modules/@lukso/lsp17contractextension-contracts/contracts/LSP17Extendable.sol", 13:"node_modules/@lukso/lsp2-contracts/contracts/LSP2Utils.sol", 14:"node_modules/@lukso/lsp4-contracts/contracts/LSP4Constants.sol", 15:"node_modules/@lukso/lsp4-contracts/contracts/LSP4DigitalAssetMetadataInitAbstract.sol", 18:"node_modules/@lukso/lsp7-contracts/contracts/LSP7Constants.sol", 19:"node_modules/@lukso/lsp7-contracts/contracts/LSP7DigitalAssetInitAbstract.sol", 21:"node_modules/@lukso/lsp7-contracts/contracts/extensions/LSP7BurnableInitAbstract.sol", 22:"node_modules/@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol", 23:"node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol", 24:"node_modules/@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol", 26:"node_modules/@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol", 27:"node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol", 39:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol", 40:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol", 42:"node_modules/@openzeppelin/contracts/utils/math/Math.sol", 43:"node_modules/@openzeppelin/contracts/utils/structs/EnumerableSet.sol", 49:"src/SLYXToken.sol"
    object "SLYXToken_390_deployed" {
        code {
            /// @src 49:1613:9158  "contract SLYXToken is..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x01ffc9a7
                {
                    // supportsInterface(bytes4)

                    external_fun_supportsInterface_272()
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    external_fun_totalSupply_728()
                }

                case 0x24e7964a
                {
                    // stakingVault()

                    external_fun_stakingVault_40()
                }

                case 0x2bc1da82
                {
                    // increaseAllowance(address,uint256,bytes)

                    external_fun_increaseAllowance_1008()
                }

                case 0x2d7667c9
                {
                    // transferBatch(address[],address[],uint256[],bool[],bytes[])

                    external_fun_transferBatch_1204()
                }

                case 0x30d0dc37
                {
                    // revokeOperator(address,address,bool,bytes)

                    external_fun_revokeOperator_905()
                }

                case 0x313ce567
                {
                    // decimals()

                    external_fun_decimals_718()
                }

                case 0x3cff79f7
                {
                    // getNativeTokenValue(uint256)

                    external_fun_getNativeTokenValue_210()
                }

                case 0x3f4ba83a
                {
                    // unpause()

                    external_fun_unpause_111()
                }

                case 0x44d17187
                {
                    // burn(address,uint256,bytes)

                    external_fun_burn_180()
                }

                case 0x485cc955
                {
                    // initialize(address,address)

                    external_fun_initialize_93()
                }

                case 0x54f6127f
                {
                    // getData(bytes32)

                    external_fun_getData_7959()
                }

                case 0x5c975abb
                {
                    // paused()

                    external_fun_paused_1931()
                }

                case 0x65aeaa95
                {
                    // authorizedAmountFor(address,address)

                    external_fun_authorizedAmountFor_933()
                }

                case 0x660aeffc
                {
                    // getSLYXTokenValue(uint256)

                    external_fun_getSLYXTokenValue_240()
                }

                case 0x6963d438
                {
                    // batchCalls(bytes[])

                    external_fun_batchCalls_812()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_742()
                }

                case 0x715018a6
                {
                    // renounceOwnership()

                    external_fun_renounceOwnership_9126()
                }

                case 0x760d9bba
                {
                    // transfer(address,address,uint256,bool,bytes)

                    external_fun_transfer_1124()
                }

                case 0x78381670
                {
                    // decreaseAllowance(address,address,uint256,bytes)

                    external_fun_decreaseAllowance_1087()
                }

                case 0x7f23690c
                {
                    // setData(bytes32,bytes)

                    external_fun_setData_8031()
                }

                case 0x8456cb59
                {
                    // pause()

                    external_fun_pause_102()
                }

                case 0x8da5cb5b
                {
                    // owner()

                    external_fun_owner_9098()
                }

                case 0x97902421
                {
                    // setDataBatch(bytes32[],bytes[])

                    external_fun_setDataBatch_8058()
                }

                case 0xb49506fd
                {
                    // authorizeOperator(address,uint256,bytes)

                    external_fun_authorizeOperator_848()
                }

                case 0xd72fc29a
                {
                    // getOperatorsOf(address)

                    external_fun_getOperatorsOf_950()
                }

                case 0xdedff9c6
                {
                    // getDataBatch(bytes32[])

                    external_fun_getDataBatch_8006()
                }

                case 0xe33c3595
                {
                    // onVaultStakeReceived(address,uint256,bytes)

                    external_fun_onVaultStakeReceived_158()
                }

                case 0xe6aa216c
                {
                    // getExchangeRate()

                    external_fun_getExchangeRate_251()
                }

                case 0xf2fde38b
                {
                    // transferOwnership(address)

                    external_fun_transferOwnership_9149()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__573() stop() }
            let retval := fun__555(0, calldatasize())
            return(add(retval, 0x20), mload(retval))

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_bytes4(value) -> cleaned {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }

            function validator_revert_t_bytes4(value) {
                if iszero(eq(value, cleanup_t_bytes4(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes4(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes4(value)
            }

            function abi_decode_tuple_t_bytes4(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes4(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_supportsInterface_272() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes4(4, calldatasize())
                let ret_0 :=  fun_supportsInterface_272(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalSupply_728() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalSupply_728()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_contract$_IVault_$7828(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_contract$_IVault_$7828(slot_value, offset) -> value {
                value := cleanup_from_storage_t_contract$_IVault_$7828(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_contract$_IVault_$7828(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_contract$_IVault_$7828(sload(slot), offset)

            }

            /// @ast-id 40
            /// @src 49:1939:1965  "IVault public stakingVault"
            function getter_fun_stakingVault_40() -> ret_address {

                let slot := 207
                let offset := 0

                ret_address := read_from_storage_split_dynamic_t_contract$_IVault_$7828(slot, offset)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IVault_$7828_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_t_contract$_IVault_$7828_to_t_address_fromStack(value, pos) {
                mstore(pos, convert_t_contract$_IVault_$7828_to_t_address(value))
            }

            function abi_encode_tuple_t_contract$_IVault_$7828__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_contract$_IVault_$7828_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_stakingVault_40() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_stakingVault_40()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_contract$_IVault_$7828__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
                revert(0, 0)
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function allocate_memory(size) -> memPtr {
                memPtr := allocate_unbounded()
                finalize_allocation(memPtr, size)
            }

            function array_allocation_size_t_bytes_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {
                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)
            }

            function abi_decode_available_length_t_bytes_memory_ptr(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_calldata_to_memory_with_cleanup(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_increaseAllowance_1008() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_increaseAllowance_1008(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // address[]
            function abi_decode_available_length_t_array$_t_address_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_address_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_address(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // address[]
            function abi_decode_t_array$_t_address_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_address_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function array_allocation_size_t_array$_t_uint256_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            // uint256[]
            function abi_decode_available_length_t_array$_t_uint256_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_uint256_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_uint256(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // uint256[]
            function abi_decode_t_array$_t_uint256_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_uint256_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function array_allocation_size_t_array$_t_bool_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            // bool[]
            function abi_decode_available_length_t_array$_t_bool_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_bool_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_bool(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // bool[]
            function abi_decode_t_array$_t_bool_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_bool_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            // bytes[]
            function abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let innerOffset := calldataload(src)
                    if gt(innerOffset, 0xffffffffffffffff) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                    let elementPos := add(offset, innerOffset)

                    mstore(dst, abi_decode_t_bytes_memory_ptr(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_address_$dyn_memory_ptrt_array$_t_address_$dyn_memory_ptrt_array$_t_uint256_$dyn_memory_ptrt_array$_t_bool_$dyn_memory_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_address_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_array$_t_address_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2 := abi_decode_t_array$_t_uint256_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_array$_t_bool_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4 := abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transferBatch_1204() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_array$_t_address_$dyn_memory_ptrt_array$_t_address_$dyn_memory_ptrt_array$_t_uint256_$dyn_memory_ptrt_array$_t_bool_$dyn_memory_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(4, calldatasize())
                fun_transferBatch_1204(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_boolt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_revokeOperator_905() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_boolt_bytes_memory_ptr(4, calldatasize())
                fun_revokeOperator_905(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_decimals_718() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_decimals_718()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_getNativeTokenValue_210() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getNativeTokenValue_210(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_unpause_111() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_unpause_111()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_burn_180() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_burn_180(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_contract$_IVault_$7828(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function validator_revert_t_contract$_IVault_$7828(value) {
                if iszero(eq(value, cleanup_t_contract$_IVault_$7828(value))) { revert(0, 0) }
            }

            function abi_decode_t_contract$_IVault_$7828(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_contract$_IVault_$7828(value)
            }

            function abi_decode_tuple_t_addresst_contract$_IVault_$7828(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_contract$_IVault_$7828(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_initialize_93() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_contract$_IVault_$7828(4, calldatasize())
                fun_initialize_93(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_bytes32(value) {
                if iszero(eq(value, cleanup_t_bytes32(value))) { revert(0, 0) }
            }

            function abi_decode_t_bytes32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bytes32(value)
            }

            function abi_decode_tuple_t_bytes32(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory_with_cleanup(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                mstore(add(dst, length), 0)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_getData_7959() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes32(4, calldatasize())
                let ret_0 :=  fun_getData_7959(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_paused_1931() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_paused_1931()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_authorizedAmountFor_933() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                let ret_0 :=  fun_authorizedAmountFor_933(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_getSLYXTokenValue_240() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                let ret_0 :=  fun_getSLYXTokenValue_240(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value, pos) -> end {
                let length := array_length_t_bytes_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                copy_memory_to_memory_with_cleanup(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr(value0, pos)
            }

            function array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // bytes[] -> bytes[]
            function abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(pos, length)
                let headStart := pos
                let tail := add(pos, mul(length, 0x20))
                let baseRef := array_dataslot_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos, sub(tail, headStart))
                    let elementValue0 := mload(srcPtr)
                    tail := abi_encodeUpdatedPos_t_bytes_memory_ptr_to_t_bytes_memory_ptr(elementValue0, tail)
                    srcPtr := array_nextElement_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(srcPtr)
                    pos := add(pos, 0x20)
                }
                pos := tail
                end := pos
            }

            function abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_batchCalls_812() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(4, calldatasize())
                let ret_0 :=  fun_batchCalls_812(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_balanceOf_742() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_742(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_renounceOwnership_9126() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_renounceOwnership_9126()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256t_boolt_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 160) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 96

                    value3 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 128))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_transfer_1124() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_addresst_addresst_uint256t_boolt_bytes_memory_ptr(4, calldatasize())
                fun_transfer_1124(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 96))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value3 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_decreaseAllowance_1087() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_decreaseAllowance_1087(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_bytes32t_bytes_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_bytes_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setData_8031() {

                let param_0, param_1 :=  abi_decode_tuple_t_bytes32t_bytes_memory_ptr(4, calldatasize())
                fun_setData_8031(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_pause_102() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_pause_102()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_owner_9098() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_owner_9098()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function array_allocation_size_t_array$_t_bytes32_$dyn_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := mul(length, 0x20)

                // add length slot
                size := add(size, 0x20)

            }

            // bytes32[]
            function abi_decode_available_length_t_array$_t_bytes32_$dyn_memory_ptr(offset, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_array$_t_bytes32_$dyn_memory_ptr(length))
                let dst := array

                mstore(array, length)
                dst := add(array, 0x20)

                let srcEnd := add(offset, mul(length, 0x20))
                if gt(srcEnd, end) {
                    revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef()
                }
                for { let src := offset } lt(src, srcEnd) { src := add(src, 0x20) }
                {

                    let elementPos := src

                    mstore(dst, abi_decode_t_bytes32(elementPos, end))
                    dst := add(dst, 0x20)
                }
            }

            // bytes32[]
            function abi_decode_t_array$_t_bytes32_$dyn_memory_ptr(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := calldataload(offset)
                array := abi_decode_available_length_t_array$_t_bytes32_$dyn_memory_ptr(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_array$_t_bytes32_$dyn_memory_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_bytes32_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value1 := abi_decode_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setDataBatch_8058() {

                let param_0, param_1 :=  abi_decode_tuple_t_array$_t_bytes32_$dyn_memory_ptrt_array$_t_bytes_memory_ptr_$dyn_memory_ptr(4, calldatasize())
                fun_setDataBatch_8058(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_authorizeOperator_848() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_uint256t_bytes_memory_ptr(4, calldatasize())
                fun_authorizeOperator_848(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function array_length_t_array$_t_address_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_address_$dyn_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_address_$dyn_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function abi_encode_t_address_to_t_address(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encodeUpdatedPos_t_address_to_t_address(value0, pos) -> updatedPos {
                abi_encode_t_address_to_t_address(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function array_nextElement_t_array$_t_address_$dyn_memory_ptr(ptr) -> next {
                next := add(ptr, 0x20)
            }

            // address[] -> address[]
            function abi_encode_t_array$_t_address_$dyn_memory_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value, pos)  -> end  {
                let length := array_length_t_array$_t_address_$dyn_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_array$_t_address_$dyn_memory_ptr_fromStack(pos, length)
                let baseRef := array_dataslot_t_array$_t_address_$dyn_memory_ptr(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := mload(srcPtr)
                    pos := abi_encodeUpdatedPos_t_address_to_t_address(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_address_$dyn_memory_ptr(srcPtr)
                }
                end := pos
            }

            function abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr__to_t_array$_t_address_$dyn_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_array$_t_address_$dyn_memory_ptr_to_t_array$_t_address_$dyn_memory_ptr_fromStack(value0,  tail)

            }

            function external_fun_getOperatorsOf_950() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_getOperatorsOf_950(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_address_$dyn_memory_ptr__to_t_array$_t_address_$dyn_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_array$_t_bytes32_$dyn_memory_ptr(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_array$_t_bytes32_$dyn_memory_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_getDataBatch_8006() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_array$_t_bytes32_$dyn_memory_ptr(4, calldatasize())
                let ret_0 :=  fun_getDataBatch_8006(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__to_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_onVaultStakeReceived_158() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptr(4, calldatasize())
                fun_onVaultStakeReceived_158(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_getExchangeRate_251() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_getExchangeRate_251()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transferOwnership_9149() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_transferOwnership_9149(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 272
            /// @src 49:5994:6202  "function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {..."
            function fun_supportsInterface_272(var_interfaceId_253) -> var__257 {
                /// @src 49:6079:6083  "bool"
                let zero_t_bool_1 := zero_value_for_split_t_bool()
                var__257 := zero_t_bool_1

                /// @src 49:6102:6113  "interfaceId"
                let _2 := var_interfaceId_253
                let expr_259 := _2
                /// @src 49:6117:6155  "type(IVaultStakeRecipient).interfaceId"
                let expr_263 := 0xe33c359500000000000000000000000000000000000000000000000000000000
                /// @src 49:6102:6155  "interfaceId == type(IVaultStakeRecipient).interfaceId"
                let expr_264 := eq(cleanup_t_bytes4(expr_259), cleanup_t_bytes4(expr_263))
                /// @src 49:6102:6195  "interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId)"
                let expr_269 := expr_264
                if iszero(expr_269) {
                    /// @src 49:6183:6194  "interfaceId"
                    let _3 := var_interfaceId_253
                    let expr_267 := _3
                    /// @src 49:6159:6195  "super.supportsInterface(interfaceId)"
                    let expr_268 := fun_supportsInterface_705(expr_267)
                    /// @src 49:6102:6195  "interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId)"
                    expr_269 := expr_268
                }
                /// @src 49:6095:6195  "return interfaceId == type(IVaultStakeRecipient).interfaceId || super.supportsInterface(interfaceId)"
                var__257 := expr_269
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            /// @ast-id 728
            /// @src 19:9881:9990  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_728() -> var__723 {
                /// @src 19:9942:9949  "uint256"
                let zero_t_uint256_4 := zero_value_for_split_t_uint256()
                var__723 := zero_t_uint256_4

                /// @src 19:9968:9983  "_existingTokens"
                let _5 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_725 := _5
                /// @src 19:9961:9983  "return _existingTokens"
                var__723 := expr_725
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function abi_encode_tuple_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value2,  tail)

            }

            /// @ast-id 1008
            /// @src 19:14040:14802  "function increaseAllowance(..."
            function fun_increaseAllowance_1008(var_operator_953, var_addedAmount_955, var_operatorNotificationData_957_mpos) {

                /// @src 19:14252:14260  "operator"
                let _6 := var_operator_953
                let expr_964 := _6
                /// @src 19:14262:14272  "msg.sender"
                let expr_966 := caller()
                /// @src 19:14232:14273  "authorizedAmountFor(operator, msg.sender)"
                let expr_967 := fun_authorizedAmountFor_933(expr_964, expr_966)
                /// @src 19:14209:14273  "uint256 oldAllowance = authorizedAmountFor(operator, msg.sender)"
                let var_oldAllowance_962 := expr_967
                /// @src 19:14287:14299  "oldAllowance"
                let _7 := var_oldAllowance_962
                let expr_969 := _7
                /// @src 19:14303:14304  "0"
                let expr_970 := 0x00
                /// @src 19:14287:14304  "oldAllowance == 0"
                let expr_971 := eq(cleanup_t_uint256(expr_969), convert_t_rational_0_by_1_to_t_uint256(expr_970))
                /// @src 19:14283:14377  "if (oldAllowance == 0)..."
                if expr_971 {
                    /// @src 19:14368:14376  "operator"
                    let _8 := var_operator_953
                    let expr_973 := _8
                    /// @src 19:14325:14377  "OperatorAllowanceCannotBeIncreasedFromZero(operator)"
                    {
                        let _9 := allocate_unbounded()
                        mstore(_9, 92114416190288744230784239767222019806416516750924220745107295817663204294656)
                        let _10 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_9, 4) , expr_973)
                        revert(_9, sub(_10, _9))
                    }/// @src 19:14283:14377  "if (oldAllowance == 0)..."
                }
                /// @src 19:14411:14423  "oldAllowance"
                let _11 := var_oldAllowance_962
                let expr_979 := _11
                /// @src 19:14426:14437  "addedAmount"
                let _12 := var_addedAmount_955
                let expr_980 := _12
                /// @src 19:14411:14437  "oldAllowance + addedAmount"
                let expr_981 := checked_add_t_uint256(expr_979, expr_980)

                /// @src 19:14388:14437  "uint256 newAllowance = oldAllowance + addedAmount"
                let var_newAllowance_978 := expr_981
                /// @src 19:14477:14487  "msg.sender"
                let expr_985 := caller()
                /// @src 19:14501:14509  "operator"
                let _13 := var_operator_953
                let expr_986 := _13
                /// @src 19:14523:14535  "newAllowance"
                let _14 := var_newAllowance_978
                let expr_987 := _14
                /// @src 19:14549:14553  "true"
                let expr_988 := 0x01
                /// @src 19:14567:14591  "operatorNotificationData"
                let _15_mpos := var_operatorNotificationData_957_mpos
                let expr_989_mpos := _15_mpos
                fun__updateOperator_1280(expr_985, expr_986, expr_987, expr_988, expr_989_mpos)
                /// @src 19:14660:14670  "msg.sender"
                let expr_997 := caller()
                /// @src 19:14684:14696  "newAllowance"
                let _16 := var_newAllowance_978
                let expr_998 := _16
                /// @src 19:14710:14734  "operatorNotificationData"
                let _17_mpos := var_operatorNotificationData_957_mpos
                let expr_999_mpos := _17_mpos
                /// @src 19:14636:14744  "abi.encode(..."

                let expr_1000_mpos := allocate_unbounded()
                let _18 := add(expr_1000_mpos, 0x20)

                let _19 := abi_encode_tuple_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_18, expr_997, expr_998, expr_999_mpos)
                mstore(expr_1000_mpos, sub(_19, add(expr_1000_mpos, 0x20)))
                finalize_allocation(expr_1000_mpos, sub(_19, expr_1000_mpos))
                /// @src 19:14612:14744  "bytes memory lsp1Data = abi.encode(..."
                let var_lsp1Data_993_mpos := expr_1000_mpos
                /// @src 19:14776:14784  "operator"
                let _20 := var_operator_953
                let expr_1003 := _20
                /// @src 19:14786:14794  "lsp1Data"
                let _21_mpos := var_lsp1Data_993_mpos
                let expr_1004_mpos := _21_mpos
                fun__notifyTokenOperator_1762(expr_1003, expr_1004_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function array_length_t_array$_t_uint256_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_length_t_array$_t_bool_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
            }

            function memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_address_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_address(ptr) -> returnValue {

                let value := cleanup_t_address(mload(ptr))

                returnValue :=

                value

            }

            function memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_uint256_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_uint256(ptr) -> returnValue {

                let value := cleanup_t_uint256(mload(ptr))

                returnValue :=

                value

            }

            function memory_array_index_access_t_array$_t_bool_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_bool_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_bool(ptr) -> returnValue {

                let value := cleanup_t_bool(mload(ptr))

                returnValue :=

                value

            }

            function memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            /// @ast-id 1204
            /// @src 19:16563:17342  "function transferBatch(..."
            function fun_transferBatch_1204(var_from_1128_mpos, var_to_1131_mpos, var_amount_1134_mpos, var_force_1137_mpos, var_data_1140_mpos) {

                /// @src 19:16798:16802  "from"
                let _22_mpos := var_from_1128_mpos
                let expr_1146_mpos := _22_mpos
                /// @src 19:16798:16809  "from.length"
                let expr_1147 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_1146_mpos)
                /// @src 19:16777:16809  "uint256 fromLength = from.length"
                let var_fromLength_1145 := expr_1147
                /// @src 19:16836:16846  "fromLength"
                let _23 := var_fromLength_1145
                let expr_1149 := _23
                /// @src 19:16850:16852  "to"
                let _24_mpos := var_to_1131_mpos
                let expr_1150_mpos := _24_mpos
                /// @src 19:16850:16859  "to.length"
                let expr_1151 := array_length_t_array$_t_address_$dyn_memory_ptr(expr_1150_mpos)
                /// @src 19:16836:16859  "fromLength != to.length"
                let expr_1152 := iszero(eq(cleanup_t_uint256(expr_1149), cleanup_t_uint256(expr_1151)))
                /// @src 19:16836:16902  "fromLength != to.length ||..."
                let expr_1157 := expr_1152
                if iszero(expr_1157) {
                    /// @src 19:16875:16885  "fromLength"
                    let _25 := var_fromLength_1145
                    let expr_1153 := _25
                    /// @src 19:16889:16895  "amount"
                    let _26_mpos := var_amount_1134_mpos
                    let expr_1154_mpos := _26_mpos
                    /// @src 19:16889:16902  "amount.length"
                    let expr_1155 := array_length_t_array$_t_uint256_$dyn_memory_ptr(expr_1154_mpos)
                    /// @src 19:16875:16902  "fromLength != amount.length"
                    let expr_1156 := iszero(eq(cleanup_t_uint256(expr_1153), cleanup_t_uint256(expr_1155)))
                    /// @src 19:16836:16902  "fromLength != to.length ||..."
                    expr_1157 := expr_1156
                }
                /// @src 19:16836:16944  "fromLength != to.length ||..."
                let expr_1162 := expr_1157
                if iszero(expr_1162) {
                    /// @src 19:16918:16928  "fromLength"
                    let _27 := var_fromLength_1145
                    let expr_1158 := _27
                    /// @src 19:16932:16937  "force"
                    let _28_mpos := var_force_1137_mpos
                    let expr_1159_mpos := _28_mpos
                    /// @src 19:16932:16944  "force.length"
                    let expr_1160 := array_length_t_array$_t_bool_$dyn_memory_ptr(expr_1159_mpos)
                    /// @src 19:16918:16944  "fromLength != force.length"
                    let expr_1161 := iszero(eq(cleanup_t_uint256(expr_1158), cleanup_t_uint256(expr_1160)))
                    /// @src 19:16836:16944  "fromLength != to.length ||..."
                    expr_1162 := expr_1161
                }
                /// @src 19:16836:16985  "fromLength != to.length ||..."
                let expr_1167 := expr_1162
                if iszero(expr_1167) {
                    /// @src 19:16960:16970  "fromLength"
                    let _29 := var_fromLength_1145
                    let expr_1163 := _29
                    /// @src 19:16974:16978  "data"
                    let _30_mpos := var_data_1140_mpos
                    let expr_1164_mpos := _30_mpos
                    /// @src 19:16974:16985  "data.length"
                    let expr_1165 := array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_1164_mpos)
                    /// @src 19:16960:16985  "fromLength != data.length"
                    let expr_1166 := iszero(eq(cleanup_t_uint256(expr_1163), cleanup_t_uint256(expr_1165)))
                    /// @src 19:16836:16985  "fromLength != to.length ||..."
                    expr_1167 := expr_1166
                }
                /// @src 19:16819:17054  "if (..."
                if expr_1167 {
                    /// @src 19:17017:17043  "LSP7InvalidTransferBatch()"
                    {
                        let _31 := allocate_unbounded()
                        mstore(_31, 17299079181163398809042103052217521471776675697185049730231373227029056978944)
                        let _32 := abi_encode_tuple__to__fromStack(add(_31, 4) )
                        revert(_31, sub(_32, _31))
                    }/// @src 19:16819:17054  "if (..."
                }
                /// @src 19:17064:17336  "for (uint256 i; i < fromLength; ) {..."
                for {
                    /// @src 19:17069:17078  "uint256 i"
                    let var_i_1174
                    let zero_t_uint256_33 := zero_value_for_split_t_uint256()
                    var_i_1174 := zero_t_uint256_33
                    } 1 {
                }
                {
                    /// @src 19:17080:17081  "i"
                    let _34 := var_i_1174
                    let expr_1176 := _34
                    /// @src 19:17084:17094  "fromLength"
                    let _35 := var_fromLength_1145
                    let expr_1177 := _35
                    /// @src 19:17080:17094  "i < fromLength"
                    let expr_1178 := lt(cleanup_t_uint256(expr_1176), cleanup_t_uint256(expr_1177))
                    if iszero(expr_1178) { break }
                    /// @src 19:17220:17224  "from"
                    let _36_mpos := var_from_1128_mpos
                    let expr_1180_mpos := _36_mpos
                    /// @src 19:17225:17226  "i"
                    let _37 := var_i_1174
                    let expr_1181 := _37
                    /// @src 19:17220:17227  "from[i]"
                    let _38 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_1180_mpos, expr_1181))
                    let expr_1182 := _38
                    /// @src 19:17229:17231  "to"
                    let _39_mpos := var_to_1131_mpos
                    let expr_1183_mpos := _39_mpos
                    /// @src 19:17232:17233  "i"
                    let _40 := var_i_1174
                    let expr_1184 := _40
                    /// @src 19:17229:17234  "to[i]"
                    let _41 := read_from_memoryt_address(memory_array_index_access_t_array$_t_address_$dyn_memory_ptr(expr_1183_mpos, expr_1184))
                    let expr_1185 := _41
                    /// @src 19:17236:17242  "amount"
                    let _42_mpos := var_amount_1134_mpos
                    let expr_1186_mpos := _42_mpos
                    /// @src 19:17243:17244  "i"
                    let _43 := var_i_1174
                    let expr_1187 := _43
                    /// @src 19:17236:17245  "amount[i]"
                    let _44 := read_from_memoryt_uint256(memory_array_index_access_t_array$_t_uint256_$dyn_memory_ptr(expr_1186_mpos, expr_1187))
                    let expr_1188 := _44
                    /// @src 19:17247:17252  "force"
                    let _45_mpos := var_force_1137_mpos
                    let expr_1189_mpos := _45_mpos
                    /// @src 19:17253:17254  "i"
                    let _46 := var_i_1174
                    let expr_1190 := _46
                    /// @src 19:17247:17255  "force[i]"
                    let _47 := read_from_memoryt_bool(memory_array_index_access_t_array$_t_bool_$dyn_memory_ptr(expr_1189_mpos, expr_1190))
                    let expr_1191 := _47
                    /// @src 19:17257:17261  "data"
                    let _48_mpos := var_data_1140_mpos
                    let expr_1192_mpos := _48_mpos
                    /// @src 19:17262:17263  "i"
                    let _49 := var_i_1174
                    let expr_1193 := _49
                    /// @src 19:17257:17264  "data[i]"
                    let _50_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_1192_mpos, expr_1193))
                    let expr_1194_mpos := _50_mpos
                    fun_transfer_1124(expr_1182, expr_1185, expr_1188, expr_1191, expr_1194_mpos)
                    /// @src 19:17308:17311  "++i"
                    let _52 := var_i_1174
                    let _51 := increment_wrapping_t_uint256(_52)
                    var_i_1174 := _51
                    let expr_1198 := _51
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_tuple_t_address_t_address_t_address__to_t_address_t_address_t_address__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function abi_encode_t_rational_0_by_1_to_t_uint8_fromStack(value, pos) {
                mstore(pos, convert_t_rational_0_by_1_to_t_uint8(value))
            }

            function abi_encode_tuple_t_address_t_rational_0_by_1_t_bytes_memory_ptr__to_t_address_t_uint8_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_rational_0_by_1_to_t_uint8_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value2,  tail)

            }

            /// @ast-id 905
            /// @src 19:12565:13366  "function revokeOperator(..."
            function fun_revokeOperator_905(var_operator_851, var_tokenOwner_853, var_notify_855, var_operatorNotificationData_857_mpos) {

                /// @src 19:12755:12765  "msg.sender"
                let expr_862 := caller()
                /// @src 19:12769:12779  "tokenOwner"
                let _53 := var_tokenOwner_853
                let expr_863 := _53
                /// @src 19:12755:12779  "msg.sender != tokenOwner"
                let expr_864 := iszero(eq(cleanup_t_address(expr_862), cleanup_t_address(expr_863)))
                /// @src 19:12755:12805  "msg.sender != tokenOwner && msg.sender != operator"
                let expr_869 := expr_864
                if expr_869 {
                    /// @src 19:12783:12793  "msg.sender"
                    let expr_866 := caller()
                    /// @src 19:12797:12805  "operator"
                    let _54 := var_operator_851
                    let expr_867 := _54
                    /// @src 19:12783:12805  "msg.sender != operator"
                    let expr_868 := iszero(eq(cleanup_t_address(expr_866), cleanup_t_address(expr_867)))
                    /// @src 19:12755:12805  "msg.sender != tokenOwner && msg.sender != operator"
                    expr_869 := expr_868
                }
                /// @src 19:12751:12966  "if (msg.sender != tokenOwner && msg.sender != operator) {..."
                if expr_869 {
                    /// @src 19:12877:12887  "msg.sender"
                    let expr_872 := caller()
                    /// @src 19:12905:12915  "tokenOwner"
                    let _55 := var_tokenOwner_853
                    let expr_873 := _55
                    /// @src 19:12933:12941  "operator"
                    let _56 := var_operator_851
                    let expr_874 := _56
                    /// @src 19:12828:12955  "LSP7RevokeOperatorNotAuthorized(..."
                    {
                        let _57 := allocate_unbounded()
                        mstore(_57, 11905644929391644911568904856140006519943293229921609172028526429194550247424)
                        let _58 := abi_encode_tuple_t_address_t_address_t_address__to_t_address_t_address_t_address__fromStack(add(_57, 4) , expr_872, expr_873, expr_874)
                        revert(_57, sub(_58, _57))
                    }/// @src 19:12751:12966  "if (msg.sender != tokenOwner && msg.sender != operator) {..."
                }
                /// @src 19:13005:13015  "tokenOwner"
                let _59 := var_tokenOwner_853
                let expr_880 := _59
                /// @src 19:13029:13037  "operator"
                let _60 := var_operator_851
                let expr_881 := _60
                /// @src 19:13051:13052  "0"
                let expr_882 := 0x00
                /// @src 19:13066:13072  "notify"
                let _61 := var_notify_855
                let expr_883 := _61
                /// @src 19:13086:13110  "operatorNotificationData"
                let _62_mpos := var_operatorNotificationData_857_mpos
                let expr_884_mpos := _62_mpos
                /// @src 19:12976:13120  "_updateOperator(..."
                let _63 := convert_t_rational_0_by_1_to_t_uint256(expr_882)
                fun__updateOperator_1280(expr_880, expr_881, _63, expr_883, expr_884_mpos)
                /// @src 19:13135:13141  "notify"
                let _64 := var_notify_855
                let expr_887 := _64
                /// @src 19:13131:13360  "if (notify) {..."
                if expr_887 {
                    /// @src 19:13209:13219  "tokenOwner"
                    let _65 := var_tokenOwner_853
                    let expr_892 := _65
                    /// @src 19:13237:13238  "0"
                    let expr_893 := 0x00
                    /// @src 19:13256:13280  "operatorNotificationData"
                    let _66_mpos := var_operatorNotificationData_857_mpos
                    let expr_894_mpos := _66_mpos
                    /// @src 19:13181:13294  "abi.encode(..."

                    let expr_895_mpos := allocate_unbounded()
                    let _67 := add(expr_895_mpos, 0x20)

                    let _68 := abi_encode_tuple_t_address_t_rational_0_by_1_t_bytes_memory_ptr__to_t_address_t_uint8_t_bytes_memory_ptr__fromStack(_67, expr_892, expr_893, expr_894_mpos)
                    mstore(expr_895_mpos, sub(_68, add(expr_895_mpos, 0x20)))
                    finalize_allocation(expr_895_mpos, sub(_68, expr_895_mpos))
                    /// @src 19:13157:13294  "bytes memory lsp1Data = abi.encode(..."
                    let var_lsp1Data_889_mpos := expr_895_mpos
                    /// @src 19:13330:13338  "operator"
                    let _69 := var_operator_851
                    let expr_898 := _69
                    /// @src 19:13340:13348  "lsp1Data"
                    let _70_mpos := var_lsp1Data_889_mpos
                    let expr_899_mpos := _70_mpos
                    fun__notifyTokenOperator_1762(expr_898, expr_899_mpos)
                    /// @src 19:13131:13360  "if (notify) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))

            }

            function cleanup_t_rational_18_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
            }

            /// @ast-id 718
            /// @src 19:9709:9822  "function decimals() public view virtual override returns (uint8) {..."
            function fun_decimals_718() -> var__710 {
                /// @src 19:9767:9772  "uint8"
                let zero_t_uint8_71 := zero_value_for_split_t_uint8()
                var__710 := zero_t_uint8_71

                /// @src 19:9791:9806  "_isNonDivisible"
                let _72 := read_from_storage_split_offset_0_t_bool(0x98)
                let expr_712 := _72
                /// @src 19:9791:9815  "_isNonDivisible ? 0 : 18"
                let expr_715
                switch expr_712
                case 0 {
                    /// @src 19:9813:9815  "18"
                    let expr_714 := 0x12
                    /// @src 19:9791:9815  "_isNonDivisible ? 0 : 18"
                    expr_715 := convert_t_rational_18_by_1_to_t_uint8(expr_714)
                }
                default {
                    /// @src 19:9809:9810  "0"
                    let expr_713 := 0x00
                    /// @src 19:9791:9815  "_isNonDivisible ? 0 : 18"
                    expr_715 := convert_t_rational_0_by_1_to_t_uint8(expr_713)
                }
                /// @src 19:9784:9815  "return _isNonDivisible ? 0 : 18"
                var__710 := expr_715
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function extract_from_storage_value_offset_0t_contract$_IVault_$7828(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_IVault_$7828(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_contract$_IVault_$7828(slot) -> value {
                value := extract_from_storage_value_offset_0t_contract$_IVault_$7828(sload(slot))

            }

            function convert_t_contract$_SLYXToken_$390_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_t_uint256_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_uint256_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @ast-id 210
            /// @src 49:4991:5504  "function getNativeTokenValue(uint256 sLyxAmount) public view returns (uint256) {..."
            function fun_getNativeTokenValue_210(var_sLyxAmount_183) -> var__186 {
                /// @src 49:5061:5068  "uint256"
                let zero_t_uint256_73 := zero_value_for_split_t_uint256()
                var__186 := zero_t_uint256_73

                /// @src 49:5161:5174  "totalSupply()"
                let expr_191 := fun_totalSupply_728()
                /// @src 49:5135:5174  "uint256 totalSLYXMinted = totalSupply()"
                let var_totalSLYXMinted_189 := expr_191
                /// @src 49:5294:5306  "stakingVault"
                let _74_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_195_address := _74_address
                /// @src 49:5294:5316  "stakingVault.balanceOf"
                let expr_196_address := convert_t_contract$_IVault_$7828_to_t_address(expr_195_address)
                let expr_196_functionSelector := 0x70a08231
                /// @src 49:5325:5329  "this"
                let expr_199_address := address()
                /// @src 49:5317:5330  "address(this)"
                let expr_200 := convert_t_contract$_SLYXToken_$390_to_t_address(expr_199_address)
                /// @src 49:5294:5331  "stakingVault.balanceOf(address(this))"

                // storage for arguments and returned data
                let _75 := allocate_unbounded()
                mstore(_75, shift_left_224(expr_196_functionSelector))
                let _76 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_75, 4) , expr_200)

                let _77 := staticcall(gas(), expr_196_address,  _75, sub(_76, _75), _75, 32)

                if iszero(_77) { revert_forward_1() }

                let expr_201
                if _77 {

                    let _78 := 32

                    if gt(_78, returndatasize()) {
                        _78 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_75, _78)

                    // decode return parameters from external try-call into retVars
                    expr_201 :=  abi_decode_tuple_t_uint256_fromMemory(_75, add(_75, _78))
                }
                /// @src 49:5261:5331  "uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this))"
                let var_sLyxTokenContractStake_194 := expr_201
                /// @src 49:5439:5449  "sLyxAmount"
                let _79 := var_sLyxAmount_183
                let expr_203 := _79
                /// @src 49:5439:5456  "sLyxAmount.mulDiv"
                let expr_204_self := expr_203
                /// @src 49:5457:5479  "sLyxTokenContractStake"
                let _80 := var_sLyxTokenContractStake_194
                let expr_205 := _80
                /// @src 49:5481:5496  "totalSLYXMinted"
                let _81 := var_totalSLYXMinted_189
                let expr_206 := _81
                /// @src 49:5439:5497  "sLyxAmount.mulDiv(sLyxTokenContractStake, totalSLYXMinted)"
                let expr_207 := fun_mulDiv_2529(expr_204_self, expr_205, expr_206)
                /// @src 49:5432:5497  "return sLyxAmount.mulDiv(sLyxTokenContractStake, totalSLYXMinted)"
                var__186 := expr_207
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_105() {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_unpause_111_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 49:2673:2738  "function unpause() external onlyOwner {..."
            function fun_unpause_111_inner() {

                fun__unpause_1986()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 111
            /// @src 49:2673:2738  "function unpause() external onlyOwner {..."
            function fun_unpause_111() {

                modifier_onlyOwner_105()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_169(var_from_161, var_amount_163, var_data_165_mpos) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_burn_180_inner(var_from_161, var_amount_163, var_data_165_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 49:4811:4959  "function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {..."
            function fun_burn_180_inner(var_from_161, var_amount_163, var_data_165_mpos) {

                /// @src 49:4933:4937  "from"
                let _82 := var_from_161
                let expr_174 := _82
                /// @src 49:4939:4945  "amount"
                let _83 := var_amount_163
                let expr_175 := _83
                /// @src 49:4947:4951  "data"
                let _84_mpos := var_data_165_mpos
                let expr_176_mpos := _84_mpos
                fun_burn_1863(expr_174, expr_175, expr_176_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 180
            /// @src 49:4811:4959  "function burn(address from, uint256 amount, bytes memory data) public virtual override whenNotPaused {..."
            function fun_burn_180(var_from_161, var_amount_163, var_data_165_mpos) {

                modifier_whenNotPaused_169(var_from_161, var_amount_163, var_data_165_mpos)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function extract_from_storage_value_offset_1t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_8_unsigned(slot_value))
            }

            function read_from_storage_split_offset_1_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_1t_bool(sload(slot))

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_0t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint8(sload(slot))

            }

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_contract$_Initializable_$7229_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function store_literal_in_memory_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(memPtr) {

                mstore(add(memPtr, 0), "Initializable: contract is alrea")

                mstore(add(memPtr, 32), "dy initialized")

            }

            function abi_encode_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 46)
                store_literal_in_memory_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_1_shift_0(value, toInsert) -> result {
                let mask := 255
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function prepare_store_t_uint8(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint8_to_t_uint8(slot, value_0) {
                let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_uint8(convertedValue_0)))
            }

            function shift_left_8(value) -> newValue {
                newValue :=

                shl(8, value)

            }

            function update_byte_slice_1_shift_1(value, toInsert) -> result {
                let mask := 65280
                toInsert := shift_left_8(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_1t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_1(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            function abi_encode_t_rational_1_by_1_to_t_uint8_fromStack(value, pos) {
                mstore(pos, convert_t_rational_1_by_1_to_t_uint8(value))
            }

            function abi_encode_tuple_t_rational_1_by_1__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_rational_1_by_1_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            /// @ast-id 7131
            /// @src 23:3246:3752  "modifier initializer() {..."
            function modifier_initializer_55(var_tokenContractOwner__49, var_stakingVault__52_address) {

                /// @src 23:3302:3315  "_initializing"
                let _85 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7080 := _85
                /// @src 23:3301:3315  "!_initializing"
                let expr_7081 := cleanup_t_bool(iszero(expr_7080))
                /// @src 23:3279:3315  "bool isTopLevelCall = !_initializing"
                let var_isTopLevelCall_7079 := expr_7081
                /// @src 23:3347:3361  "isTopLevelCall"
                let _86 := var_isTopLevelCall_7079
                let expr_7084 := _86
                /// @src 23:3347:3381  "isTopLevelCall && _initialized < 1"
                let expr_7088 := expr_7084
                if expr_7088 {
                    /// @src 23:3365:3377  "_initialized"
                    let _87 := read_from_storage_split_offset_0_t_uint8(0x00)
                    let expr_7085 := _87
                    /// @src 23:3380:3381  "1"
                    let expr_7086 := 0x01
                    /// @src 23:3365:3381  "_initialized < 1"
                    let expr_7087 := lt(cleanup_t_uint8(expr_7085), convert_t_rational_1_by_1_to_t_uint8(expr_7086))
                    /// @src 23:3347:3381  "isTopLevelCall && _initialized < 1"
                    expr_7088 := expr_7087
                }
                /// @src 23:3346:3382  "(isTopLevelCall && _initialized < 1)"
                let expr_7089 := expr_7088
                /// @src 23:3346:3454  "(isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                let expr_7103 := expr_7089
                if iszero(expr_7103) {
                    /// @src 23:3388:3406  "AddressUpgradeable"
                    let expr_7090_address := linkersymbol("node_modules/@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol:AddressUpgradeable")
                    /// @src 23:3426:3430  "this"
                    let expr_7094_address := address()
                    /// @src 23:3418:3431  "address(this)"
                    let expr_7095 := convert_t_contract$_Initializable_$7229_to_t_address(expr_7094_address)
                    /// @src 23:3388:3432  "AddressUpgradeable.isContract(address(this))"
                    let expr_7096 := fun_isContract_8205(expr_7095)
                    /// @src 23:3387:3432  "!AddressUpgradeable.isContract(address(this))"
                    let expr_7097 := cleanup_t_bool(iszero(expr_7096))
                    /// @src 23:3387:3453  "!AddressUpgradeable.isContract(address(this)) && _initialized == 1"
                    let expr_7101 := expr_7097
                    if expr_7101 {
                        /// @src 23:3436:3448  "_initialized"
                        let _88 := read_from_storage_split_offset_0_t_uint8(0x00)
                        let expr_7098 := _88
                        /// @src 23:3452:3453  "1"
                        let expr_7099 := 0x01
                        /// @src 23:3436:3453  "_initialized == 1"
                        let expr_7100 := eq(cleanup_t_uint8(expr_7098), convert_t_rational_1_by_1_to_t_uint8(expr_7099))
                        /// @src 23:3387:3453  "!AddressUpgradeable.isContract(address(this)) && _initialized == 1"
                        expr_7101 := expr_7100
                    }
                    /// @src 23:3386:3454  "(!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                    let expr_7102 := expr_7101
                    /// @src 23:3346:3454  "(isTopLevelCall && _initialized < 1) || (!AddressUpgradeable.isContract(address(this)) && _initialized == 1)"
                    expr_7103 := expr_7102
                }
                /// @src 23:3325:3526  "require(..."
                require_helper_t_stringliteral_7a2a4e26842155ea933fe6eb6e3137eb5a296dcdf55721c552be7b4c3cc23759(expr_7103)
                /// @src 23:3551:3552  "1"
                let expr_7108 := 0x01
                /// @src 23:3536:3552  "_initialized = 1"
                let _89 := convert_t_rational_1_by_1_to_t_uint8(expr_7108)
                update_storage_value_offset_0t_uint8_to_t_uint8(0x00, _89)
                let expr_7109 := _89
                /// @src 23:3566:3580  "isTopLevelCall"
                let _90 := var_isTopLevelCall_7079
                let expr_7111 := _90
                /// @src 23:3562:3627  "if (isTopLevelCall) {..."
                if expr_7111 {
                    /// @src 23:3612:3616  "true"
                    let expr_7113 := 0x01
                    /// @src 23:3596:3616  "_initializing = true"
                    update_storage_value_offset_1t_bool_to_t_bool(0x00, expr_7113)
                    let expr_7114 := expr_7113
                    /// @src 23:3562:3627  "if (isTopLevelCall) {..."
                }
                /// @src 23:3636:3637  "_"
                fun_initialize_93_inner(var_tokenContractOwner__49, var_stakingVault__52_address)
                /// @src 23:3651:3665  "isTopLevelCall"
                let _91 := var_isTopLevelCall_7079
                let expr_7119 := _91
                /// @src 23:3647:3746  "if (isTopLevelCall) {..."
                if expr_7119 {
                    /// @src 23:3697:3702  "false"
                    let expr_7121 := 0x00
                    /// @src 23:3681:3702  "_initializing = false"
                    update_storage_value_offset_1t_bool_to_t_bool(0x00, expr_7121)
                    let expr_7122 := expr_7121
                    /// @src 23:3733:3734  "1"
                    let expr_7125 := 0x01
                    /// @src 23:3721:3735  "Initialized(1)"
                    let _92 := 0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498
                    {
                        let _93 := allocate_unbounded()
                        let _94 := abi_encode_tuple_t_rational_1_by_1__to_t_uint8__fromStack(_93 , expr_7125)
                        log1(_93, sub(_94, _93) , _92)
                    }/// @src 23:3647:3746  "if (isTopLevelCall) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            /// @src 14:79:122  "uint256 constant _LSP4_TOKEN_TYPE_TOKEN = 0"
            function constant__LSP4_TOKEN_TYPE_TOKEN_395() -> ret {
                /// @src 14:121:122  "0"
                let expr_394 := 0x00
                let _100 := convert_t_rational_0_by_1_to_t_uint256(expr_394)

                ret := _100
            }

            function array_allocation_size_t_string_memory_ptr(length) -> size {
                // Make sure we can allocate memory without overflow
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

                size := round_up_to_mul_of_32(length)

                // add length slot
                size := add(size, 0x20)

            }

            function allocate_memory_array_t_string_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_string_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function store_literal_in_memory_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033(memPtr) {

                mstore(add(memPtr, 0), "Stakingverse Staked LYX (sLYX)")

            }

            function copy_literal_to_memory_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(30)
                store_literal_in_memory_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033(add(memPtr, 32))
            }

            function convert_t_stringliteral_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033()
            }

            function store_literal_in_memory_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e(memPtr) {

                mstore(add(memPtr, 0), "sLYX")

            }

            function copy_literal_to_memory_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(4)
                store_literal_in_memory_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e(add(memPtr, 32))
            }

            function convert_t_stringliteral_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e_to_t_string_memory_ptr() -> converted {
                converted := copy_literal_to_memory_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e()
            }

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint160_to_t_contract$_IVault_$7828(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IVault_$7828_to_t_contract$_IVault_$7828(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IVault_$7828(value)
            }

            function prepare_store_t_contract$_IVault_$7828(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_contract$_IVault_$7828_to_t_contract$_IVault_$7828(slot, value_0) {
                let convertedValue_0 := convert_t_contract$_IVault_$7828_to_t_contract$_IVault_$7828(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_contract$_IVault_$7828(convertedValue_0)))
            }

            /// @src 49:2031:2600  "function initialize(address tokenContractOwner_, IVault stakingVault_) external initializer {..."
            function fun_initialize_93_inner(var_tokenContractOwner__49, var_stakingVault__52_address) {

                /// @src 49:2145:2158  "stakingVault_"
                let _95_address := var_stakingVault__52_address
                let expr_59_address := _95_address
                /// @src 49:2137:2159  "address(stakingVault_)"
                let expr_60 := convert_t_contract$_IVault_$7828_to_t_address(expr_59_address)
                /// @src 49:2171:2172  "0"
                let expr_63 := 0x00
                /// @src 49:2163:2173  "address(0)"
                let expr_64 := convert_t_rational_0_by_1_to_t_address(expr_63)
                /// @src 49:2137:2173  "address(stakingVault_) == address(0)"
                let expr_65 := eq(cleanup_t_address(expr_60), cleanup_t_address(expr_64))
                /// @src 49:2133:2250  "if (address(stakingVault_) == address(0)) {..."
                if expr_65 {
                    /// @src 49:2224:2237  "stakingVault_"
                    let _96_address := var_stakingVault__52_address
                    let expr_69_address := _96_address
                    /// @src 49:2216:2238  "address(stakingVault_)"
                    let expr_70 := convert_t_contract$_IVault_$7828_to_t_address(expr_69_address)
                    /// @src 49:2196:2239  "InvalidVaultAddress(address(stakingVault_))"
                    {
                        let _97 := allocate_unbounded()
                        mstore(_97, 48306680761540566994584872836294894668580865493733676558380670155633966710784)
                        let _98 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_97, 4) , expr_70)
                        revert(_97, sub(_98, _97))
                    }/// @src 49:2133:2250  "if (address(stakingVault_) == address(0)) {..."
                }
                fun___Pausable_init_1896()
                /// @src 49:2436:2455  "tokenContractOwner_"
                let _99 := var_tokenContractOwner__49
                let expr_83 := _99
                /// @src 49:2485:2507  "_LSP4_TOKEN_TYPE_TOKEN"
                let expr_84 := constant__LSP4_TOKEN_TYPE_TOKEN_395()
                /// @src 49:2538:2543  "false"
                let expr_85 := 0x00
                /// @src 49:2288:2554  "LSP7DigitalAssetInitAbstract._initialize({..."
                let _101_mpos := convert_t_stringliteral_b5810d1fc28ed29041b45d3fcc83dbdabd3986d1d17bb4c2a873744122cac033_to_t_string_memory_ptr()
                let _102_mpos := convert_t_stringliteral_48e8fedb477e9aa516d5f4bd9caf0fe73388cd36629921781d062773cd8e688e_to_t_string_memory_ptr()
                fun__initialize_531(_101_mpos, _102_mpos, expr_83, expr_84, expr_85)
                /// @src 49:2580:2593  "stakingVault_"
                let _103_address := var_stakingVault__52_address
                let expr_89_address := _103_address
                /// @src 49:2565:2593  "stakingVault = stakingVault_"
                update_storage_value_offset_0t_contract$_IVault_$7828_to_t_contract$_IVault_$7828(0xcf, expr_89_address)
                let expr_90_address := expr_89_address

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 93
            /// @src 49:2031:2600  "function initialize(address tokenContractOwner_, IVault stakingVault_) external initializer {..."
            function fun_initialize_93(var_tokenContractOwner__49, var_stakingVault__52_address) {

                modifier_initializer_55(var_tokenContractOwner__49, var_stakingVault__52_address)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            /// @ast-id 7959
            /// @src 0:1903:2054  "function getData(..."
            function fun_getData_7959(var_dataKey_7948) -> var_dataValue_7952_mpos {
                /// @src 0:1989:2011  "bytes memory dataValue"
                let zero_t_bytes_memory_ptr_104_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_dataValue_7952_mpos := zero_t_bytes_memory_ptr_104_mpos

                /// @src 0:2039:2046  "dataKey"
                let _105 := var_dataKey_7948
                let expr_7955 := _105
                /// @src 0:2030:2047  "_getData(dataKey)"
                let expr_7956_mpos := fun__getData_8071(expr_7955)
                /// @src 0:2023:2047  "return _getData(dataKey)"
                var_dataValue_7952_mpos := expr_7956_mpos
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1931
            /// @src 24:1879:1963  "function paused() public view virtual returns (bool) {..."
            function fun_paused_1931() -> var__1926 {
                /// @src 24:1926:1930  "bool"
                let zero_t_bool_106 := zero_value_for_split_t_bool()
                var__1926 := zero_t_bool_106

                /// @src 24:1949:1956  "_paused"
                let _107 := read_from_storage_split_offset_0_t_bool(0x9d)
                let expr_1928 := _107
                /// @src 24:1942:1956  "return _paused"
                var__1926 := expr_1928
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 933
            /// @src 19:13425:13753  "function authorizedAmountFor(..."
            function fun_authorizedAmountFor_933(var_operator_908, var_tokenOwner_910) -> var__914 {
                /// @src 19:13552:13559  "uint256"
                let zero_t_uint256_108 := zero_value_for_split_t_uint256()
                var__914 := zero_t_uint256_108

                /// @src 19:13575:13585  "tokenOwner"
                let _109 := var_tokenOwner_910
                let expr_916 := _109
                /// @src 19:13589:13597  "operator"
                let _110 := var_operator_908
                let expr_917 := _110
                /// @src 19:13575:13597  "tokenOwner == operator"
                let expr_918 := eq(cleanup_t_address(expr_916), cleanup_t_address(expr_917))
                /// @src 19:13571:13747  "if (tokenOwner == operator) {..."
                switch expr_918
                case 0 {
                    /// @src 19:13689:13714  "_operatorAuthorizedAmount"
                    let _111_slot := 0x9c
                    let expr_924_slot := _111_slot
                    /// @src 19:13715:13725  "tokenOwner"
                    let _112 := var_tokenOwner_910
                    let expr_925 := _112
                    /// @src 19:13689:13726  "_operatorAuthorizedAmount[tokenOwner]"
                    let _113 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_924_slot,expr_925)
                    let _114_slot := _113
                    let expr_926_slot := _114_slot
                    /// @src 19:13727:13735  "operator"
                    let _115 := var_operator_908
                    let expr_927 := _115
                    /// @src 19:13689:13736  "_operatorAuthorizedAmount[tokenOwner][operator]"
                    let _116 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_926_slot,expr_927)
                    let _117 := read_from_storage_split_offset_0_t_uint256(_116)
                    let expr_928 := _117
                    /// @src 19:13682:13736  "return _operatorAuthorizedAmount[tokenOwner][operator]"
                    var__914 := expr_928
                    leave
                    /// @src 19:13571:13747  "if (tokenOwner == operator) {..."
                }
                default {
                    /// @src 19:13620:13639  "_tokenOwnerBalances"
                    let _118_slot := 0x9a
                    let expr_919_slot := _118_slot
                    /// @src 19:13640:13650  "tokenOwner"
                    let _119 := var_tokenOwner_910
                    let expr_920 := _119
                    /// @src 19:13620:13651  "_tokenOwnerBalances[tokenOwner]"
                    let _120 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_919_slot,expr_920)
                    let _121 := read_from_storage_split_offset_0_t_uint256(_120)
                    let expr_921 := _121
                    /// @src 19:13613:13651  "return _tokenOwnerBalances[tokenOwner]"
                    var__914 := expr_921
                    leave
                    /// @src 19:13571:13747  "if (tokenOwner == operator) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 240
            /// @src 49:5536:5845  "function getSLYXTokenValue(uint256 stakedLyxAmount) public view returns (uint256) {..."
            function fun_getSLYXTokenValue_240(var_stakedLyxAmount_213) -> var__216 {
                /// @src 49:5609:5616  "uint256"
                let zero_t_uint256_122 := zero_value_for_split_t_uint256()
                var__216 := zero_t_uint256_122

                /// @src 49:5654:5667  "totalSupply()"
                let expr_221 := fun_totalSupply_728()
                /// @src 49:5628:5667  "uint256 totalSLYXMinted = totalSupply()"
                let var_totalSLYXMinted_219 := expr_221
                /// @src 49:5715:5727  "stakingVault"
                let _123_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_225_address := _123_address
                /// @src 49:5715:5737  "stakingVault.balanceOf"
                let expr_226_address := convert_t_contract$_IVault_$7828_to_t_address(expr_225_address)
                let expr_226_functionSelector := 0x70a08231
                /// @src 49:5746:5750  "this"
                let expr_229_address := address()
                /// @src 49:5738:5751  "address(this)"
                let expr_230 := convert_t_contract$_SLYXToken_$390_to_t_address(expr_229_address)
                /// @src 49:5715:5752  "stakingVault.balanceOf(address(this))"

                // storage for arguments and returned data
                let _124 := allocate_unbounded()
                mstore(_124, shift_left_224(expr_226_functionSelector))
                let _125 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_124, 4) , expr_230)

                let _126 := staticcall(gas(), expr_226_address,  _124, sub(_125, _124), _124, 32)

                if iszero(_126) { revert_forward_1() }

                let expr_231
                if _126 {

                    let _127 := 32

                    if gt(_127, returndatasize()) {
                        _127 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_124, _127)

                    // decode return parameters from external try-call into retVars
                    expr_231 :=  abi_decode_tuple_t_uint256_fromMemory(_124, add(_124, _127))
                }
                /// @src 49:5677:5752  "uint256 totalSLYXTokenContractStake = stakingVault.balanceOf(address(this))"
                let var_totalSLYXTokenContractStake_224 := expr_231
                /// @src 49:5770:5785  "stakedLyxAmount"
                let _128 := var_stakedLyxAmount_213
                let expr_233 := _128
                /// @src 49:5770:5792  "stakedLyxAmount.mulDiv"
                let expr_234_self := expr_233
                /// @src 49:5793:5808  "totalSLYXMinted"
                let _129 := var_totalSLYXMinted_219
                let expr_235 := _129
                /// @src 49:5810:5837  "totalSLYXTokenContractStake"
                let _130 := var_totalSLYXTokenContractStake_224
                let expr_236 := _130
                /// @src 49:5770:5838  "stakedLyxAmount.mulDiv(totalSLYXMinted, totalSLYXTokenContractStake)"
                let expr_237 := fun_mulDiv_2529(expr_234_self, expr_235, expr_236)
                /// @src 49:5763:5838  "return stakedLyxAmount.mulDiv(totalSLYXMinted, totalSLYXTokenContractStake)"
                var__216 := expr_237
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(value, len) -> length {

                length := len

            }

            function allocate_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_t_bytes_memory_ptr() -> ret {
                ret := 96
            }

            function zero_complex_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(dataStart, dataSizeInBytes) {
                for {let i := 0} lt(i, dataSizeInBytes) { i := add(i, 32) } {
                    mstore(add(dataStart, i), zero_value_for_t_bytes_memory_ptr())
                }
            }

            function allocate_and_zero_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length) -> memPtr {
                memPtr := allocate_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)
                let dataStart := memPtr
                let dataSize := array_allocation_size_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(length)

                dataStart := add(dataStart, 32)
                dataSize := sub(dataSize, 32)

                zero_complex_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(dataStart, dataSize)
            }

            function convert_t_contract$_LSP7DigitalAssetInitAbstract_$1826_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad() {
                revert(0, 0)
            }

            function revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a() {
                revert(0, 0)
            }

            function revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e() {
                revert(0, 0)
            }

            function access_calldata_tail_t_bytes_calldata_ptr(base_ref, ptr_to_tail) -> addr, length {
                let rel_offset_of_tail := calldataload(ptr_to_tail)
                if iszero(slt(rel_offset_of_tail, sub(sub(calldatasize(), base_ref), sub(0x20, 1)))) { revert_error_356d538aaf70fba12156cc466564b792649f8f3befb07b071c91142253e175ad() }
                addr := add(base_ref, rel_offset_of_tail)

                length := calldataload(addr)
                if gt(length, 0xffffffffffffffff) { revert_error_1e55d03107e9c4f1b5e21c76a16fba166a461117ab153bcce65e6a4ea8e5fc8a() }
                addr := add(addr, 32)
                if sgt(addr, sub(calldatasize(), mul(length, 0x01))) { revert_error_977805620ff29572292dee35f70b0f3f3f73d3fdd0e9f4d7a901c2e43ab18a2e() }

            }

            function calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(base_ref, length, index) -> addr, len {
                if iszero(lt(index, length)) { panic_error_0x32() }
                addr := add(base_ref, mul(index, 32))

                addr, len := access_calldata_tail_t_bytes_calldata_ptr(base_ref, addr)

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, length)
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos , value0, value1) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                end := pos
            }

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function extract_returndata() -> data {

                switch returndatasize()
                case 0 {
                    data := zero_value_for_split_t_bytes_memory_ptr()
                }
                default {
                    data := allocate_memory_array_t_bytes_memory_ptr(returndatasize())
                    returndatacopy(add(data, 0x20), 0, returndatasize())
                }

            }

            /// @ast-id 812
            /// @src 19:10447:11528  "function batchCalls(..."
            function fun_batchCalls_812(var_data_746_offset, var_data_746_length) -> var_results_751_mpos {
                /// @src 19:10537:10559  "bytes[] memory results"
                let zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_131_mpos := zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr()
                var_results_751_mpos := zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_131_mpos

                /// @src 19:10593:10597  "data"
                let _132_offset := var_data_746_offset
                let _132_length := var_data_746_length
                let expr_757_offset := _132_offset
                let expr_757_length := _132_length
                /// @src 19:10593:10604  "data.length"
                let expr_758 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_757_offset, expr_757_length)
                /// @src 19:10581:10605  "new bytes[](data.length)"
                let expr_759_mpos := allocate_and_zero_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_758)
                /// @src 19:10571:10605  "results = new bytes[](data.length)"
                var_results_751_mpos := expr_759_mpos
                let _133_mpos := var_results_751_mpos
                let expr_760_mpos := _133_mpos
                /// @src 19:10615:11522  "for (uint256 i; i < data.length; ) {..."
                for {
                    /// @src 19:10620:10629  "uint256 i"
                    let var_i_763
                    let zero_t_uint256_134 := zero_value_for_split_t_uint256()
                    var_i_763 := zero_t_uint256_134
                    } 1 {
                }
                {
                    /// @src 19:10631:10632  "i"
                    let _135 := var_i_763
                    let expr_765 := _135
                    /// @src 19:10635:10639  "data"
                    let _136_offset := var_data_746_offset
                    let _136_length := var_data_746_length
                    let expr_766_offset := _136_offset
                    let expr_766_length := _136_length
                    /// @src 19:10635:10646  "data.length"
                    let expr_767 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_766_offset, expr_766_length)
                    /// @src 19:10631:10646  "i < data.length"
                    let expr_768 := lt(cleanup_t_uint256(expr_765), cleanup_t_uint256(expr_767))
                    if iszero(expr_768) { break }
                    /// @src 19:10710:10714  "this"
                    let expr_775_address := address()
                    /// @src 19:10702:10715  "address(this)"
                    let expr_776 := convert_t_contract$_LSP7DigitalAssetInitAbstract_$1826_to_t_address(expr_775_address)
                    /// @src 19:10702:10728  "address(this).delegatecall"
                    let expr_777_address := expr_776
                    /// @src 19:10746:10750  "data"
                    let _137_offset := var_data_746_offset
                    let _137_length := var_data_746_length
                    let expr_778_offset := _137_offset
                    let expr_778_length := _137_length
                    /// @src 19:10751:10752  "i"
                    let _138 := var_i_763
                    let expr_779 := _138
                    /// @src 19:10746:10753  "data[i]"
                    let expr_780_offset, expr_780_length := calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_778_offset, expr_778_length, expr_779)
                    /// @src 19:10702:10767  "address(this).delegatecall(..."

                    let _139 := allocate_unbounded()
                    let _140 := sub(abi_encode_tuple_packed_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_139 , expr_780_offset, expr_780_length), _139)

                    let expr_781_component_1 := delegatecall(gas(), expr_777_address,  _139, _140, 0, 0)
                    let expr_781_component_2_mpos := extract_returndata()
                    /// @src 19:10664:10767  "(bool success, bytes memory result) = address(this).delegatecall(..."
                    let var_success_770 := expr_781_component_1
                    let var_result_772_mpos := expr_781_component_2_mpos
                    /// @src 19:10787:10794  "success"
                    let _141 := var_success_770
                    let expr_783 := _141
                    /// @src 19:10786:10794  "!success"
                    let expr_784 := cleanup_t_bool(iszero(expr_783))
                    /// @src 19:10782:11418  "if (!success) {..."
                    if expr_784 {
                        /// @src 19:10888:10894  "result"
                        let _142_mpos := var_result_772_mpos
                        let expr_785_mpos := _142_mpos
                        /// @src 19:10888:10901  "result.length"
                        let expr_786 := array_length_t_bytes_memory_ptr(expr_785_mpos)
                        /// @src 19:10905:10906  "0"
                        let expr_787 := 0x00
                        /// @src 19:10888:10906  "result.length != 0"
                        let expr_788 := iszero(eq(cleanup_t_uint256(expr_786), convert_t_rational_0_by_1_to_t_uint256(expr_787)))
                        /// @src 19:10884:11404  "if (result.length != 0) {..."
                        switch expr_788
                        case 0 {
                            /// @src 19:11382:11383  "i"
                            let _143 := var_i_763
                            let expr_792 := _143
                            /// @src 19:11350:11385  "LSP7BatchCallFailed({callIndex: i})"
                            {
                                let _144 := allocate_unbounded()
                                mstore(_144, 82979548047756279087809199063573698406850978168110233579570382672882565120000)
                                let _145 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_144, 4) , expr_792)
                                revert(_144, sub(_145, _144))
                            }/// @src 19:10884:11404  "if (result.length != 0) {..."
                        }
                        default {
                            /// @src 19:11139:11297  "assembly {..."
                            {
                                let usr$returndata_size := mload(var_result_772_mpos)
                                revert(add(32, var_result_772_mpos), usr$returndata_size)
                            }
                            /// @src 19:10884:11404  "if (result.length != 0) {..."
                        }
                        /// @src 19:10782:11418  "if (!success) {..."
                    }
                    /// @src 19:11445:11451  "result"
                    let _146_mpos := var_result_772_mpos
                    let expr_802_mpos := _146_mpos
                    /// @src 19:11432:11439  "results"
                    let _147_mpos := var_results_751_mpos
                    let expr_799_mpos := _147_mpos
                    /// @src 19:11440:11441  "i"
                    let _148 := var_i_763
                    let expr_800 := _148
                    /// @src 19:11432:11451  "results[i] = result"
                    mstore(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_799_mpos, expr_800), expr_802_mpos)
                    let _149_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_799_mpos, expr_800))
                    let expr_803_mpos := _149_mpos
                    /// @src 19:11494:11497  "++i"
                    let _151 := var_i_763
                    let _150 := increment_wrapping_t_uint256(_151)
                    var_i_763 := _150
                    let expr_806 := _150
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 742
            /// @src 19:10081:10236  "function balanceOf(..."
            function fun_balanceOf_742(var_tokenOwner_731) -> var__735 {
                /// @src 19:10172:10179  "uint256"
                let zero_t_uint256_152 := zero_value_for_split_t_uint256()
                var__735 := zero_t_uint256_152

                /// @src 19:10198:10217  "_tokenOwnerBalances"
                let _153_slot := 0x9a
                let expr_737_slot := _153_slot
                /// @src 19:10218:10228  "tokenOwner"
                let _154 := var_tokenOwner_731
                let expr_738 := _154
                /// @src 19:10198:10229  "_tokenOwnerBalances[tokenOwner]"
                let _155 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_737_slot,expr_738)
                let _156 := read_from_storage_split_offset_0_t_uint256(_155)
                let expr_739 := _156
                /// @src 19:10191:10229  "return _tokenOwnerBalances[tokenOwner]"
                var__735 := expr_739
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_9116() {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_renounceOwnership_9126_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 22:2085:2186  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_9126_inner() {

                /// @src 22:2176:2177  "0"
                let expr_9121 := 0x00
                /// @src 22:2168:2178  "address(0)"
                let expr_9122 := convert_t_rational_0_by_1_to_t_address(expr_9121)
                fun__transferOwnership_9169(expr_9122)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9126
            /// @src 22:2085:2186  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_9126() {

                modifier_onlyOwner_9116()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1124
            /// @src 19:16085:16504  "function transfer(..."
            function fun_transfer_1124(var_from_1090, var_to_1092, var_amount_1094, var_force_1096, var_data_1098_mpos) {

                /// @src 19:16260:16270  "msg.sender"
                let expr_1103 := caller()
                /// @src 19:16274:16278  "from"
                let _157 := var_from_1090
                let expr_1104 := _157
                /// @src 19:16260:16278  "msg.sender != from"
                let expr_1105 := iszero(eq(cleanup_t_address(expr_1103), cleanup_t_address(expr_1104)))
                /// @src 19:16256:16447  "if (msg.sender != from) {..."
                if expr_1105 {
                    /// @src 19:16338:16348  "msg.sender"
                    let expr_1108 := caller()
                    /// @src 19:16378:16382  "from"
                    let _158 := var_from_1090
                    let expr_1109 := _158
                    /// @src 19:16415:16421  "amount"
                    let _159 := var_amount_1094
                    let expr_1110 := _159
                    fun__spendAllowance_1519(expr_1108, expr_1109, expr_1110)
                    /// @src 19:16256:16447  "if (msg.sender != from) {..."
                }
                /// @src 19:16467:16471  "from"
                let _160 := var_from_1090
                let expr_1116 := _160
                /// @src 19:16473:16475  "to"
                let _161 := var_to_1092
                let expr_1117 := _161
                /// @src 19:16477:16483  "amount"
                let _162 := var_amount_1094
                let expr_1118 := _162
                /// @src 19:16485:16490  "force"
                let _163 := var_force_1096
                let expr_1119 := _163
                /// @src 19:16492:16496  "data"
                let _164_mpos := var_data_1098_mpos
                let expr_1120_mpos := _164_mpos
                fun__transfer_1599(expr_1116, expr_1117, expr_1118, expr_1119, expr_1120_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 1087
            /// @src 19:14861:15991  "function decreaseAllowance(..."
            function fun_decreaseAllowance_1087(var_operator_1011, var_tokenOwner_1013, var_subtractedAmount_1015, var_operatorNotificationData_1017_mpos) {

                /// @src 19:15067:15077  "msg.sender"
                let expr_1022 := caller()
                /// @src 19:15081:15091  "tokenOwner"
                let _165 := var_tokenOwner_1013
                let expr_1023 := _165
                /// @src 19:15067:15091  "msg.sender != tokenOwner"
                let expr_1024 := iszero(eq(cleanup_t_address(expr_1022), cleanup_t_address(expr_1023)))
                /// @src 19:15067:15117  "msg.sender != tokenOwner && msg.sender != operator"
                let expr_1029 := expr_1024
                if expr_1029 {
                    /// @src 19:15095:15105  "msg.sender"
                    let expr_1026 := caller()
                    /// @src 19:15109:15117  "operator"
                    let _166 := var_operator_1011
                    let expr_1027 := _166
                    /// @src 19:15095:15117  "msg.sender != operator"
                    let expr_1028 := iszero(eq(cleanup_t_address(expr_1026), cleanup_t_address(expr_1027)))
                    /// @src 19:15067:15117  "msg.sender != tokenOwner && msg.sender != operator"
                    expr_1029 := expr_1028
                }
                /// @src 19:15063:15281  "if (msg.sender != tokenOwner && msg.sender != operator) {..."
                if expr_1029 {
                    /// @src 19:15192:15202  "msg.sender"
                    let expr_1032 := caller()
                    /// @src 19:15220:15230  "tokenOwner"
                    let _167 := var_tokenOwner_1013
                    let expr_1033 := _167
                    /// @src 19:15248:15256  "operator"
                    let _168 := var_operator_1011
                    let expr_1034 := _168
                    /// @src 19:15140:15270  "LSP7DecreaseAllowanceNotAuthorized(..."
                    {
                        let _169 := allocate_unbounded()
                        mstore(_169, 69115808311837376651148862291075880864537582054411286544949254241806983364608)
                        let _170 := abi_encode_tuple_t_address_t_address_t_address__to_t_address_t_address_t_address__fromStack(add(_169, 4) , expr_1032, expr_1033, expr_1034)
                        revert(_169, sub(_170, _169))
                    }/// @src 19:15063:15281  "if (msg.sender != tokenOwner && msg.sender != operator) {..."
                }
                /// @src 19:15338:15346  "operator"
                let _171 := var_operator_1011
                let expr_1042 := _171
                /// @src 19:15348:15358  "tokenOwner"
                let _172 := var_tokenOwner_1013
                let expr_1043 := _172
                /// @src 19:15318:15359  "authorizedAmountFor(operator, tokenOwner)"
                let expr_1044 := fun_authorizedAmountFor_933(expr_1042, expr_1043)
                /// @src 19:15291:15359  "uint256 currentAllowance = authorizedAmountFor(operator, tokenOwner)"
                let var_currentAllowance_1040 := expr_1044
                /// @src 19:15373:15389  "currentAllowance"
                let _173 := var_currentAllowance_1040
                let expr_1046 := _173
                /// @src 19:15392:15408  "subtractedAmount"
                let _174 := var_subtractedAmount_1015
                let expr_1047 := _174
                /// @src 19:15373:15408  "currentAllowance < subtractedAmount"
                let expr_1048 := lt(cleanup_t_uint256(expr_1046), cleanup_t_uint256(expr_1047))
                /// @src 19:15369:15475  "if (currentAllowance < subtractedAmount) {..."
                if expr_1048 {
                    /// @src 19:15431:15464  "LSP7DecreasedAllowanceBelowZero()"
                    {
                        let _175 := allocate_unbounded()
                        mstore(_175, 6769537922648617106506564796331046364924381231468145024962172408259539894272)
                        let _176 := abi_encode_tuple__to__fromStack(add(_175, 4) )
                        revert(_175, sub(_176, _175))
                    }/// @src 19:15369:15475  "if (currentAllowance < subtractedAmount) {..."
                }
                /// @src 19:15485:15505  "uint256 newAllowance"
                let var_newAllowance_1055
                let zero_t_uint256_177 := zero_value_for_split_t_uint256()
                var_newAllowance_1055 := zero_t_uint256_177
                /// @src 19:15554:15570  "currentAllowance"
                let _178 := var_currentAllowance_1040
                let expr_1058 := _178
                /// @src 19:15573:15589  "subtractedAmount"
                let _179 := var_subtractedAmount_1015
                let expr_1059 := _179
                /// @src 19:15554:15589  "currentAllowance - subtractedAmount"
                let expr_1060 := wrapping_sub_t_uint256(expr_1058, expr_1059)

                /// @src 19:15539:15589  "newAllowance = currentAllowance - subtractedAmount"
                var_newAllowance_1055 := expr_1060
                let expr_1061 := expr_1060
                /// @src 19:15636:15646  "tokenOwner"
                let _180 := var_tokenOwner_1013
                let expr_1064 := _180
                /// @src 19:15664:15672  "operator"
                let _181 := var_operator_1011
                let expr_1065 := _181
                /// @src 19:15690:15702  "newAllowance"
                let _182 := var_newAllowance_1055
                let expr_1066 := _182
                /// @src 19:15720:15724  "true"
                let expr_1067 := 0x01
                /// @src 19:15742:15766  "operatorNotificationData"
                let _183_mpos := var_operatorNotificationData_1017_mpos
                let expr_1068_mpos := _183_mpos
                fun__updateOperator_1280(expr_1064, expr_1065, expr_1066, expr_1067, expr_1068_mpos)
                /// @src 19:15849:15859  "tokenOwner"
                let _184 := var_tokenOwner_1013
                let expr_1076 := _184
                /// @src 19:15873:15885  "newAllowance"
                let _185 := var_newAllowance_1055
                let expr_1077 := _185
                /// @src 19:15899:15923  "operatorNotificationData"
                let _186_mpos := var_operatorNotificationData_1017_mpos
                let expr_1078_mpos := _186_mpos
                /// @src 19:15825:15933  "abi.encode(..."

                let expr_1079_mpos := allocate_unbounded()
                let _187 := add(expr_1079_mpos, 0x20)

                let _188 := abi_encode_tuple_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_187, expr_1076, expr_1077, expr_1078_mpos)
                mstore(expr_1079_mpos, sub(_188, add(expr_1079_mpos, 0x20)))
                finalize_allocation(expr_1079_mpos, sub(_188, expr_1079_mpos))
                /// @src 19:15801:15933  "bytes memory lsp1Data = abi.encode(..."
                let var_lsp1Data_1073_mpos := expr_1079_mpos
                /// @src 19:15965:15973  "operator"
                let _189 := var_operator_1011
                let expr_1082 := _189
                /// @src 19:15975:15983  "lsp1Data"
                let _190_mpos := var_lsp1Data_1073_mpos
                let expr_1083_mpos := _190_mpos
                fun__notifyTokenOperator_1762(expr_1082, expr_1083_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_8015(var_dataKey_8009, var_dataValue_8011_mpos) {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_setData_8031_inner(var_dataKey_8009, var_dataValue_8011_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 0:3164:3396  "function setData(..."
            function fun_setData_8031_inner(var_dataKey_8009, var_dataValue_8011_mpos) {

                /// @src 0:3300:3309  "msg.value"
                let expr_8018 := callvalue()
                /// @src 0:3313:3314  "0"
                let expr_8019 := 0x00
                /// @src 0:3300:3314  "msg.value != 0"
                let expr_8020 := iszero(eq(cleanup_t_uint256(expr_8018), convert_t_rational_0_by_1_to_t_uint256(expr_8019)))
                /// @src 0:3296:3351  "if (msg.value != 0) revert ERC725Y_MsgValueDisallowed()"
                if expr_8020 {
                    /// @src 0:3323:3351  "ERC725Y_MsgValueDisallowed()"
                    {
                        let _191 := allocate_unbounded()
                        mstore(_191, 110102228916102000215420874069709797363119905419045491069634089035793539530752)
                        let _192 := abi_encode_tuple__to__fromStack(add(_191, 4) )
                        revert(_191, sub(_192, _191))
                    }/// @src 0:3296:3351  "if (msg.value != 0) revert ERC725Y_MsgValueDisallowed()"
                }
                /// @src 0:3370:3377  "dataKey"
                let _193 := var_dataKey_8009
                let expr_8026 := _193
                /// @src 0:3379:3388  "dataValue"
                let _194_mpos := var_dataValue_8011_mpos
                let expr_8027_mpos := _194_mpos
                fun__setData_5981(expr_8026, expr_8027_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 8031
            /// @src 0:3164:3396  "function setData(..."
            function fun_setData_8031(var_dataKey_8009, var_dataValue_8011_mpos) {

                modifier_onlyOwner_8015(var_dataKey_8009, var_dataValue_8011_mpos)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_96() {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_pause_102_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 49:2606:2667  "function pause() external onlyOwner {..."
            function fun_pause_102_inner() {

                fun__pause_1970()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 102
            /// @src 49:2606:2667  "function pause() external onlyOwner {..."
            function fun_pause_102() {

                modifier_onlyOwner_96()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            /// @ast-id 9098
            /// @src 22:1462:1547  "function owner() public view virtual returns (address) {..."
            function fun_owner_9098() -> var__9093 {
                /// @src 22:1508:1515  "address"
                let zero_t_address_195 := zero_value_for_split_t_address()
                var__9093 := zero_t_address_195

                /// @src 22:1534:1540  "_owner"
                let _196 := read_from_storage_split_offset_0_t_address(0x33)
                let expr_9095 := _196
                /// @src 22:1527:1540  "return _owner"
                var__9093 := expr_9095
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_8042(var_dataKeys_8035_mpos, var_dataValues_8038_mpos) {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_setDataBatch_8058_inner(var_dataKeys_8035_mpos, var_dataValues_8038_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 0:4051:4392  "function setDataBatch(..."
            function fun_setDataBatch_8058_inner(var_dataKeys_8035_mpos, var_dataValues_8038_mpos) {

                /// @src 0:4289:4298  "msg.value"
                let expr_8045 := callvalue()
                /// @src 0:4302:4303  "0"
                let expr_8046 := 0x00
                /// @src 0:4289:4303  "msg.value != 0"
                let expr_8047 := iszero(eq(cleanup_t_uint256(expr_8045), convert_t_rational_0_by_1_to_t_uint256(expr_8046)))
                /// @src 0:4285:4340  "if (msg.value != 0) revert ERC725Y_MsgValueDisallowed()"
                if expr_8047 {
                    /// @src 0:4312:4340  "ERC725Y_MsgValueDisallowed()"
                    {
                        let _197 := allocate_unbounded()
                        mstore(_197, 110102228916102000215420874069709797363119905419045491069634089035793539530752)
                        let _198 := abi_encode_tuple__to__fromStack(add(_197, 4) )
                        revert(_197, sub(_198, _197))
                    }/// @src 0:4285:4340  "if (msg.value != 0) revert ERC725Y_MsgValueDisallowed()"
                }
                /// @src 0:4364:4372  "dataKeys"
                let _199_mpos := var_dataKeys_8035_mpos
                let expr_8053_mpos := _199_mpos
                /// @src 0:4374:4384  "dataValues"
                let _200_mpos := var_dataValues_8038_mpos
                let expr_8054_mpos := _200_mpos
                fun__setDataBatch_8144(expr_8053_mpos, expr_8054_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 8058
            /// @src 0:4051:4392  "function setDataBatch(..."
            function fun_setDataBatch_8058(var_dataKeys_8035_mpos, var_dataValues_8038_mpos) {

                modifier_onlyOwner_8042(var_dataKeys_8035_mpos, var_dataValues_8038_mpos)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 848
            /// @src 19:12000:12506  "function authorizeOperator(..."
            function fun_authorizeOperator_848(var_operator_815, var_amount_817, var_operatorNotificationData_819_mpos) {

                /// @src 19:12193:12203  "msg.sender"
                let expr_825 := caller()
                /// @src 19:12217:12225  "operator"
                let _201 := var_operator_815
                let expr_826 := _201
                /// @src 19:12239:12245  "amount"
                let _202 := var_amount_817
                let expr_827 := _202
                /// @src 19:12259:12263  "true"
                let expr_828 := 0x01
                /// @src 19:12277:12301  "operatorNotificationData"
                let _203_mpos := var_operatorNotificationData_819_mpos
                let expr_829_mpos := _203_mpos
                fun__updateOperator_1280(expr_825, expr_826, expr_827, expr_828, expr_829_mpos)
                /// @src 19:12370:12380  "msg.sender"
                let expr_837 := caller()
                /// @src 19:12394:12400  "amount"
                let _204 := var_amount_817
                let expr_838 := _204
                /// @src 19:12414:12438  "operatorNotificationData"
                let _205_mpos := var_operatorNotificationData_819_mpos
                let expr_839_mpos := _205_mpos
                /// @src 19:12346:12448  "abi.encode(..."

                let expr_840_mpos := allocate_unbounded()
                let _206 := add(expr_840_mpos, 0x20)

                let _207 := abi_encode_tuple_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_206, expr_837, expr_838, expr_839_mpos)
                mstore(expr_840_mpos, sub(_207, add(expr_840_mpos, 0x20)))
                finalize_allocation(expr_840_mpos, sub(_207, expr_840_mpos))
                /// @src 19:12322:12448  "bytes memory lsp1Data = abi.encode(..."
                let var_lsp1Data_833_mpos := expr_840_mpos
                /// @src 19:12480:12488  "operator"
                let _208 := var_operator_815
                let expr_843 := _208
                /// @src 19:12490:12498  "lsp1Data"
                let _209_mpos := var_lsp1Data_833_mpos
                let expr_844_mpos := _209_mpos
                fun__notifyTokenOperator_1762(expr_843, expr_844_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_array$_t_address_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function mapping_index_access_t_mapping$_t_address_$_t_struct$_AddressSet_$6773_storage_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function convert_t_struct$_AddressSet_$6773_storage_to_t_struct$_AddressSet_$6773_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 950
            /// @src 19:13812:13981  "function getOperatorsOf(..."
            function fun_getOperatorsOf_950(var_tokenOwner_936) -> var__941_mpos {
                /// @src 19:13908:13924  "address[] memory"
                let zero_t_array$_t_address_$dyn_memory_ptr_210_mpos := zero_value_for_split_t_array$_t_address_$dyn_memory_ptr()
                var__941_mpos := zero_t_array$_t_address_$dyn_memory_ptr_210_mpos

                /// @src 19:13943:13953  "_operators"
                let _211_slot := 0x9b
                let expr_943_slot := _211_slot
                /// @src 19:13954:13964  "tokenOwner"
                let _212 := var_tokenOwner_936
                let expr_944 := _212
                /// @src 19:13943:13965  "_operators[tokenOwner]"
                let _213 := mapping_index_access_t_mapping$_t_address_$_t_struct$_AddressSet_$6773_storage_$_of_t_address(expr_943_slot,expr_944)
                let _214_slot := _213
                let expr_945_slot := _214_slot
                /// @src 19:13943:13972  "_operators[tokenOwner].values"
                let expr_946_self_slot := convert_t_struct$_AddressSet_$6773_storage_to_t_struct$_AddressSet_$6773_storage_ptr(expr_945_slot)
                /// @src 19:13943:13974  "_operators[tokenOwner].values()"
                let expr_947_mpos := fun_values_6926(expr_946_self_slot)
                /// @src 19:13936:13974  "return _operators[tokenOwner].values()"
                var__941_mpos := expr_947_mpos
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function array_length_t_array$_t_bytes32_$dyn_memory_ptr(value) -> length {

                length := mload(value)

            }

            function memory_array_index_access_t_array$_t_bytes32_$dyn_memory_ptr(baseRef, index) -> addr {
                if iszero(lt(index, array_length_t_array$_t_bytes32_$dyn_memory_ptr(baseRef))) {
                    panic_error_0x32()
                }

                let offset := mul(index, 32)

                offset := add(offset, 32)

                addr := add(baseRef, offset)
            }

            function read_from_memoryt_bytes32(ptr) -> returnValue {

                let value := cleanup_t_bytes32(mload(ptr))

                returnValue :=

                value

            }

            /// @ast-id 8006
            /// @src 0:2104:2562  "function getDataBatch(..."
            function fun_getDataBatch_8006(var_dataKeys_7963_mpos) -> var_dataValues_7968_mpos {
                /// @src 0:2205:2230  "bytes[] memory dataValues"
                let zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_215_mpos := zero_value_for_split_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr()
                var_dataValues_7968_mpos := zero_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr_215_mpos

                /// @src 0:2267:2275  "dataKeys"
                let _216_mpos := var_dataKeys_7963_mpos
                let expr_7974_mpos := _216_mpos
                /// @src 0:2267:2282  "dataKeys.length"
                let expr_7975 := array_length_t_array$_t_bytes32_$dyn_memory_ptr(expr_7974_mpos)
                /// @src 0:2255:2283  "new bytes[](dataKeys.length)"
                let expr_7976_mpos := allocate_and_zero_memory_array_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_7975)
                /// @src 0:2242:2283  "dataValues = new bytes[](dataKeys.length)"
                var_dataValues_7968_mpos := expr_7976_mpos
                let _217_mpos := var_dataValues_7968_mpos
                let expr_7977_mpos := _217_mpos
                /// @src 0:2294:2528  "for (uint256 i = 0; i < dataKeys.length; ) {..."
                for {
                    /// @src 0:2311:2312  "0"
                    let expr_7981 := 0x00
                    /// @src 0:2299:2312  "uint256 i = 0"
                    let var_i_7980 := convert_t_rational_0_by_1_to_t_uint256(expr_7981)
                    } 1 {
                }
                {
                    /// @src 0:2314:2315  "i"
                    let _218 := var_i_7980
                    let expr_7983 := _218
                    /// @src 0:2318:2326  "dataKeys"
                    let _219_mpos := var_dataKeys_7963_mpos
                    let expr_7984_mpos := _219_mpos
                    /// @src 0:2318:2333  "dataKeys.length"
                    let expr_7985 := array_length_t_array$_t_bytes32_$dyn_memory_ptr(expr_7984_mpos)
                    /// @src 0:2314:2333  "i < dataKeys.length"
                    let expr_7986 := lt(cleanup_t_uint256(expr_7983), cleanup_t_uint256(expr_7985))
                    if iszero(expr_7986) { break }
                    /// @src 0:2376:2384  "dataKeys"
                    let _220_mpos := var_dataKeys_7963_mpos
                    let expr_7991_mpos := _220_mpos
                    /// @src 0:2385:2386  "i"
                    let _221 := var_i_7980
                    let expr_7992 := _221
                    /// @src 0:2376:2387  "dataKeys[i]"
                    let _222 := read_from_memoryt_bytes32(memory_array_index_access_t_array$_t_bytes32_$dyn_memory_ptr(expr_7991_mpos, expr_7992))
                    let expr_7993 := _222
                    /// @src 0:2367:2388  "_getData(dataKeys[i])"
                    let expr_7994_mpos := fun__getData_8071(expr_7993)
                    /// @src 0:2351:2361  "dataValues"
                    let _223_mpos := var_dataValues_7968_mpos
                    let expr_7987_mpos := _223_mpos
                    /// @src 0:2362:2363  "i"
                    let _224 := var_i_7980
                    let expr_7988 := _224
                    /// @src 0:2351:2388  "dataValues[i] = _getData(dataKeys[i])"
                    mstore(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_7987_mpos, expr_7988), expr_7994_mpos)
                    let _225_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_7987_mpos, expr_7988))
                    let expr_7995_mpos := _225_mpos
                    /// @src 0:2500:2503  "++i"
                    let _227 := var_i_7980
                    let _226 := increment_wrapping_t_uint256(_227)
                    var_i_7980 := _226
                    let expr_7998 := _226
                }
                /// @src 0:2545:2555  "dataValues"
                let _228_mpos := var_dataValues_7968_mpos
                let expr_8003_mpos := _228_mpos
                /// @src 0:2538:2555  "return dataValues"
                var_dataValues_7968_mpos := expr_8003_mpos
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_121(var_from_114, var_amount_116, var_data_118_offset, var_data_118_length) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_onVaultStakeReceived_158_inner(var_from_114, var_amount_116, var_data_118_offset, var_data_118_length)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(value, length) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                abi_decode_available_length_t_bytes_memory_ptr(value, length, calldatasize())

            }

            /// @src 49:3731:4185  "function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external whenNotPaused {..."
            function fun_onVaultStakeReceived_158_inner(var_from_114, var_amount_116, var_data_118_offset, var_data_118_length) {

                /// @src 49:3849:3859  "msg.sender"
                let expr_124 := caller()
                /// @src 49:3871:3883  "stakingVault"
                let _229_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_127_address := _229_address
                /// @src 49:3863:3884  "address(stakingVault)"
                let expr_128 := convert_t_contract$_IVault_$7828_to_t_address(expr_127_address)
                /// @src 49:3849:3884  "msg.sender != address(stakingVault)"
                let expr_129 := iszero(eq(cleanup_t_address(expr_124), cleanup_t_address(expr_128)))
                /// @src 49:3845:3956  "if (msg.sender != address(stakingVault)) {..."
                if expr_129 {
                    /// @src 49:3934:3944  "msg.sender"
                    let expr_132 := caller()
                    /// @src 49:3907:3945  "OnlyVaultAllowedToMintSLYX(msg.sender)"
                    {
                        let _230 := allocate_unbounded()
                        mstore(_230, 92392037966530314641710770213769570022534658358392575332828099034835562004480)
                        let _231 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_230, 4) , expr_132)
                        revert(_230, sub(_231, _230))
                    }/// @src 49:3845:3956  "if (msg.sender != address(stakingVault)) {..."
                }
                /// @src 49:3983:3987  "Math"
                let expr_139_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                /// @src 49:3995:4001  "amount"
                let _232 := var_amount_116
                let expr_141 := _232
                /// @src 49:4003:4015  "stakingVault"
                let _233_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_142_address := _233_address
                /// @src 49:4003:4027  "stakingVault.totalShares"
                let expr_143_address := convert_t_contract$_IVault_$7828_to_t_address(expr_142_address)
                let expr_143_functionSelector := 0x3a98ef39
                /// @src 49:4003:4029  "stakingVault.totalShares()"

                // storage for arguments and returned data
                let _234 := allocate_unbounded()
                mstore(_234, shift_left_224(expr_143_functionSelector))
                let _235 := abi_encode_tuple__to__fromStack(add(_234, 4) )

                let _236 := staticcall(gas(), expr_143_address,  _234, sub(_235, _234), _234, 32)

                if iszero(_236) { revert_forward_1() }

                let expr_144
                if _236 {

                    let _237 := 32

                    if gt(_237, returndatasize()) {
                        _237 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_234, _237)

                    // decode return parameters from external try-call into retVars
                    expr_144 :=  abi_decode_tuple_t_uint256_fromMemory(_234, add(_234, _237))
                }
                /// @src 49:4031:4043  "stakingVault"
                let _238_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_145_address := _238_address
                /// @src 49:4031:4055  "stakingVault.totalAssets"
                let expr_146_address := convert_t_contract$_IVault_$7828_to_t_address(expr_145_address)
                let expr_146_functionSelector := 0x01e1d114
                /// @src 49:4031:4057  "stakingVault.totalAssets()"

                // storage for arguments and returned data
                let _239 := allocate_unbounded()
                mstore(_239, shift_left_224(expr_146_functionSelector))
                let _240 := abi_encode_tuple__to__fromStack(add(_239, 4) )

                let _241 := staticcall(gas(), expr_146_address,  _239, sub(_240, _239), _239, 32)

                if iszero(_241) { revert_forward_1() }

                let expr_147
                if _241 {

                    let _242 := 32

                    if gt(_242, returndatasize()) {
                        _242 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_239, _242)

                    // decode return parameters from external try-call into retVars
                    expr_147 :=  abi_decode_tuple_t_uint256_fromMemory(_239, add(_239, _242))
                }
                /// @src 49:3983:4058  "Math.mulDiv(amount, stakingVault.totalShares(), stakingVault.totalAssets())"
                let expr_148 := fun_mulDiv_2529(expr_141, expr_144, expr_147)
                /// @src 49:3966:4058  "uint256 shares = Math.mulDiv(amount, stakingVault.totalShares(), stakingVault.totalAssets())"
                let var_shares_138 := expr_148
                /// @src 49:4131:4135  "from"
                let _243 := var_from_114
                let expr_151 := _243
                /// @src 49:4145:4151  "shares"
                let _244 := var_shares_138
                let expr_152 := _244
                /// @src 49:4160:4164  "true"
                let expr_153 := 0x01
                /// @src 49:4172:4176  "data"
                let _245_offset := var_data_118_offset
                let _245_length := var_data_118_length
                let expr_154_offset := _245_offset
                let expr_154_length := _245_length
                /// @src 49:4120:4178  "_mint({to: from, amount: shares, force: true, data: data})"
                let _246_mpos := convert_array_t_bytes_calldata_ptr_to_t_bytes_memory_ptr(expr_154_offset, expr_154_length)
                fun__mint_1370(expr_151, expr_152, expr_153, _246_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 158
            /// @src 49:3731:4185  "function onVaultStakeReceived(address from, uint256 amount, bytes calldata data) external whenNotPaused {..."
            function fun_onVaultStakeReceived_158(var_from_114, var_amount_116, var_data_118_offset, var_data_118_length) {

                modifier_whenNotPaused_121(var_from_114, var_amount_116, var_data_118_offset, var_data_118_length)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_1000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000000000000000_by_1(value)))
            }

            /// @ast-id 251
            /// @src 49:5877:5988  "function getExchangeRate() external view returns (uint256) {..."
            function fun_getExchangeRate_251() -> var__244 {
                /// @src 49:5927:5934  "uint256"
                let zero_t_uint256_247 := zero_value_for_split_t_uint256()
                var__244 := zero_t_uint256_247

                /// @src 49:5973:5980  "1 ether"
                let expr_247 := 0x0de0b6b3a7640000
                /// @src 49:5953:5981  "getNativeTokenValue(1 ether)"
                let _248 := convert_t_rational_1000000000000000000_by_1_to_t_uint256(expr_247)
                let expr_248 := fun_getNativeTokenValue_210(_248)
                /// @src 49:5946:5981  "return getNativeTokenValue(1 ether)"
                var__244 := expr_248
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9089
            /// @src 22:1324:1386  "modifier onlyOwner() {..."
            function modifier_onlyOwner_9132(var_newOwner_9129) {

                fun__checkOwner_9112()
                /// @src 22:1378:1379  "_"
                fun_transferOwnership_9149_inner(var_newOwner_9129)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(memPtr) {

                mstore(add(memPtr, 0), "Ownable: new owner is the zero a")

                mstore(add(memPtr, 32), "ddress")

            }

            function abi_encode_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @src 22:2335:2533  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_9149_inner(var_newOwner_9129) {

                /// @src 22:2423:2431  "newOwner"
                let _249 := var_newOwner_9129
                let expr_9135 := _249
                /// @src 22:2443:2444  "0"
                let expr_9138 := 0x00
                /// @src 22:2435:2445  "address(0)"
                let expr_9139 := convert_t_rational_0_by_1_to_t_address(expr_9138)
                /// @src 22:2423:2445  "newOwner != address(0)"
                let expr_9140 := iszero(eq(cleanup_t_address(expr_9135), cleanup_t_address(expr_9139)))
                /// @src 22:2415:2488  "require(newOwner != address(0), \"Ownable: new owner is the zero address\")"
                require_helper_t_stringliteral_245f15ff17f551913a7a18385165551503906a406f905ac1c2437281a7cd0cfe(expr_9140)
                /// @src 22:2517:2525  "newOwner"
                let _250 := var_newOwner_9129
                let expr_9145 := _250
                fun__transferOwnership_9169(expr_9145)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 9149
            /// @src 22:2335:2533  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_9149(var_newOwner_9129) {

                modifier_onlyOwner_9132(var_newOwner_9129)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c(memPtr) {

                mstore(add(memPtr, 0), 0x0000000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c_to_t_bytes_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, 4)
                store_literal_in_memory_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c__to_t_bytes_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c_to_t_bytes_memory_ptr_fromStack( tail)

            }

            /// @ast-id 573
            /// @src 19:5830:6070  "receive() external payable virtual {..."
            function fun__573() {

                /// @src 19:5926:5935  "msg.value"
                let expr_560 := callvalue()
                /// @src 19:5939:5940  "0"
                let expr_561 := 0x00
                /// @src 19:5926:5940  "msg.value == 0"
                let expr_562 := eq(cleanup_t_uint256(expr_560), convert_t_rational_0_by_1_to_t_uint256(expr_561))
                /// @src 19:5922:6012  "if (msg.value == 0) {..."
                if expr_562 {
                    /// @src 19:5963:6001  "InvalidFunctionSelector(hex\"00000000\")"
                    {
                        let _251 := allocate_unbounded()
                        mstore(_251, 103596640544981694748731130441898205861990513516357553209329805289737062187008)
                        let _252 := abi_encode_tuple_t_stringliteral_e8e77626586f73b955364c7b4bbf0bb7f7685ebd40e852b164633a4acbd3244c__to_t_bytes_memory_ptr__fromStack(add(_251, 4) )
                        revert(_251, sub(_252, _251))
                    }/// @src 19:5922:6012  "if (msg.value == 0) {..."
                }
                /// @src 19:6029:6063  "LSP7TokenContractCannotHoldValue()"
                {
                    let _253 := allocate_unbounded()
                    mstore(_253, 25582805739285704631918188468027641267275608142841355188358646658490238500864)
                    let _254 := abi_encode_tuple__to__fromStack(add(_253, 4) )
                    revert(_253, sub(_254, _253))
                }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function array_length_t_bytes_calldata_ptr(value, len) -> length {

                length := len

            }

            function cleanup_t_rational_4_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_4_by_1(value)))
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value0, value1,  tail)

            }

            /// @ast-id 555
            /// @src 19:5411:5664  "fallback(..."
            function fun__555(var_callData_534_offset, var_callData_534_length) -> var__537_mpos {
                /// @src 19:5493:5505  "bytes memory"
                let zero_t_bytes_memory_ptr_255_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__537_mpos := zero_t_bytes_memory_ptr_255_mpos

                /// @src 19:5521:5529  "msg.data"
                let expr_540_offset := 0
                let expr_540_length := calldatasize()
                /// @src 19:5521:5536  "msg.data.length"
                let expr_541 := array_length_t_bytes_calldata_ptr(expr_540_offset, expr_540_length)
                /// @src 19:5539:5540  "4"
                let expr_542 := 0x04
                /// @src 19:5521:5540  "msg.data.length < 4"
                let expr_543 := lt(cleanup_t_uint256(expr_541), convert_t_rational_4_by_1_to_t_uint256(expr_542))
                /// @src 19:5517:5607  "if (msg.data.length < 4) {..."
                if expr_543 {
                    /// @src 19:5587:5595  "callData"
                    let _256_offset := var_callData_534_offset
                    let _256_length := var_callData_534_length
                    let expr_545_offset := _256_offset
                    let expr_545_length := _256_length
                    /// @src 19:5563:5596  "InvalidFunctionSelector(callData)"
                    {
                        let _257 := allocate_unbounded()
                        mstore(_257, 103596640544981694748731130441898205861990513516357553209329805289737062187008)
                        let _258 := abi_encode_tuple_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__fromStack(add(_257, 4) , expr_545_offset, expr_545_length)
                        revert(_257, sub(_258, _257))
                    }/// @src 19:5517:5607  "if (msg.data.length < 4) {..."
                }
                /// @src 19:5648:5656  "callData"
                let _259_offset := var_callData_534_offset
                let _259_length := var_callData_534_length
                let expr_551_offset := _259_offset
                let expr_551_length := _259_length
                /// @src 19:5623:5657  "_fallbackLSP17Extendable(callData)"
                let expr_552_mpos := fun__fallbackLSP17Extendable_628(expr_551_offset, expr_551_length)
                /// @src 19:5616:5657  "return _fallbackLSP17Extendable(callData)"
                var__537_mpos := expr_552_mpos
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_3308085256_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3308085256_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_3308085256_by_1(value)))
            }

            /// @src 18:92:138  "bytes4 constant _INTERFACEID_LSP7 = 0xc52d6008"
            function constant__INTERFACEID_LSP7_6154() -> ret {
                /// @src 18:128:138  "0xc52d6008"
                let expr_6153 := 0xc52d6008
                let _262 := convert_t_rational_3308085256_by_1_to_t_bytes4(expr_6153)

                ret := _262
            }

            /// @ast-id 705
            /// @src 19:9237:9624  "function supportsInterface(..."
            function fun_supportsInterface_705(var_interfaceId_682) -> var__688 {
                /// @src 19:9414:9418  "bool"
                let zero_t_bool_260 := zero_value_for_split_t_bool()
                var__688 := zero_t_bool_260

                /// @src 19:9453:9464  "interfaceId"
                let _261 := var_interfaceId_682
                let expr_690 := _261
                /// @src 19:9468:9485  "_INTERFACEID_LSP7"
                let expr_691 := constant__INTERFACEID_LSP7_6154()
                /// @src 19:9453:9485  "interfaceId == _INTERFACEID_LSP7"
                let expr_692 := eq(cleanup_t_bytes4(expr_690), cleanup_t_bytes4(expr_691))
                /// @src 19:9453:9537  "interfaceId == _INTERFACEID_LSP7 ||..."
                let expr_697 := expr_692
                if iszero(expr_697) {
                    /// @src 19:9525:9536  "interfaceId"
                    let _263 := var_interfaceId_682
                    let expr_695 := _263
                    /// @src 19:9501:9537  "super.supportsInterface(interfaceId)"
                    let expr_696 := fun_supportsInterface_5021(expr_695)
                    /// @src 19:9453:9537  "interfaceId == _INTERFACEID_LSP7 ||..."
                    expr_697 := expr_696
                }
                /// @src 19:9453:9617  "interfaceId == _INTERFACEID_LSP7 ||..."
                let expr_702 := expr_697
                if iszero(expr_702) {
                    /// @src 19:9605:9616  "interfaceId"
                    let _264 := var_interfaceId_682
                    let expr_700 := _264
                    /// @src 19:9553:9617  "LSP17Extendable._supportsInterfaceInERC165Extension(interfaceId)"
                    let expr_701 := fun__supportsInterfaceInERC165Extension_5053(expr_700)
                    /// @src 19:9453:9617  "interfaceId == _INTERFACEID_LSP7 ||..."
                    expr_702 := expr_701
                }
                /// @src 19:9434:9617  "return..."
                var__688 := expr_702
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 1280
            /// @src 19:18566:19564  "function _updateOperator(..."
            function fun__updateOperator_1280(var_tokenOwner_1207, var_operator_1209, var_allowance_1211, var_notified_1213, var_operatorNotificationData_1215_mpos) {

                /// @src 19:18779:18787  "operator"
                let _265 := var_operator_1209
                let expr_1218 := _265
                /// @src 19:18799:18800  "0"
                let expr_1221 := 0x00
                /// @src 19:18791:18801  "address(0)"
                let expr_1222 := convert_t_rational_0_by_1_to_t_address(expr_1221)
                /// @src 19:18779:18801  "operator == address(0)"
                let expr_1223 := eq(cleanup_t_address(expr_1218), cleanup_t_address(expr_1222))
                /// @src 19:18775:18871  "if (operator == address(0)) {..."
                if expr_1223 {
                    /// @src 19:18824:18860  "LSP7CannotUseAddressZeroAsOperator()"
                    {
                        let _266 := allocate_unbounded()
                        mstore(_266, 44930751063570203786573828631031399807858932930811416944506959708333971341312)
                        let _267 := abi_encode_tuple__to__fromStack(add(_266, 4) )
                        revert(_266, sub(_267, _266))
                    }/// @src 19:18775:18871  "if (operator == address(0)) {..."
                }
                /// @src 19:18885:18893  "operator"
                let _268 := var_operator_1209
                let expr_1229 := _268
                /// @src 19:18897:18907  "tokenOwner"
                let _269 := var_tokenOwner_1207
                let expr_1230 := _269
                /// @src 19:18885:18907  "operator == tokenOwner"
                let expr_1231 := eq(cleanup_t_address(expr_1229), cleanup_t_address(expr_1230))
                /// @src 19:18881:18973  "if (operator == tokenOwner) {..."
                if expr_1231 {
                    /// @src 19:18930:18962  "LSP7TokenOwnerCannotBeOperator()"
                    {
                        let _270 := allocate_unbounded()
                        mstore(_270, 98928088057870473610496830565923803960126624786917808715491911976869305516032)
                        let _271 := abi_encode_tuple__to__fromStack(add(_270, 4) )
                        revert(_270, sub(_271, _270))
                    }/// @src 19:18881:18973  "if (operator == tokenOwner) {..."
                }
                /// @src 19:19033:19042  "allowance"
                let _272 := var_allowance_1211
                let expr_1242 := _272
                /// @src 19:18983:19008  "_operatorAuthorizedAmount"
                let _273_slot := 0x9c
                let expr_1237_slot := _273_slot
                /// @src 19:19009:19019  "tokenOwner"
                let _274 := var_tokenOwner_1207
                let expr_1238 := _274
                /// @src 19:18983:19020  "_operatorAuthorizedAmount[tokenOwner]"
                let _275 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1237_slot,expr_1238)
                let _276_slot := _275
                let expr_1240_slot := _276_slot
                /// @src 19:19021:19029  "operator"
                let _277 := var_operator_1209
                let expr_1239 := _277
                /// @src 19:18983:19030  "_operatorAuthorizedAmount[tokenOwner][operator]"
                let _278 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1240_slot,expr_1239)
                /// @src 19:18983:19042  "_operatorAuthorizedAmount[tokenOwner][operator] = allowance"
                update_storage_value_offset_0t_uint256_to_t_uint256(_278, expr_1242)
                let expr_1243 := expr_1242
                /// @src 19:19057:19066  "allowance"
                let _279 := var_allowance_1211
                let expr_1245 := _279
                /// @src 19:19070:19071  "0"
                let expr_1246 := 0x00
                /// @src 19:19057:19071  "allowance != 0"
                let expr_1247 := iszero(eq(cleanup_t_uint256(expr_1245), convert_t_rational_0_by_1_to_t_uint256(expr_1246)))
                /// @src 19:19053:19558  "if (allowance != 0) {..."
                switch expr_1247
                case 0 {
                    /// @src 19:19338:19348  "_operators"
                    let _280_slot := 0x9b
                    let expr_1263_slot := _280_slot
                    /// @src 19:19349:19359  "tokenOwner"
                    let _281 := var_tokenOwner_1207
                    let expr_1264 := _281
                    /// @src 19:19338:19360  "_operators[tokenOwner]"
                    let _282 := mapping_index_access_t_mapping$_t_address_$_t_struct$_AddressSet_$6773_storage_$_of_t_address(expr_1263_slot,expr_1264)
                    let _283_slot := _282
                    let expr_1265_slot := _283_slot
                    /// @src 19:19338:19367  "_operators[tokenOwner].remove"
                    let expr_1266_self_slot := convert_t_struct$_AddressSet_$6773_storage_to_t_struct$_AddressSet_$6773_storage_ptr(expr_1265_slot)
                    /// @src 19:19368:19376  "operator"
                    let _284 := var_operator_1209
                    let expr_1267 := _284
                    /// @src 19:19338:19377  "_operators[tokenOwner].remove(operator)"
                    let expr_1268 := fun_remove_6827(expr_1266_self_slot, expr_1267)
                    /// @src 19:19429:19437  "operator"
                    let _285 := var_operator_1209
                    let expr_1271 := _285
                    /// @src 19:19455:19465  "tokenOwner"
                    let _286 := var_tokenOwner_1207
                    let expr_1272 := _286
                    /// @src 19:19483:19491  "notified"
                    let _287 := var_notified_1213
                    let expr_1273 := _287
                    /// @src 19:19509:19533  "operatorNotificationData"
                    let _288_mpos := var_operatorNotificationData_1215_mpos
                    let expr_1274_mpos := _288_mpos
                    /// @src 19:19396:19547  "OperatorRevoked(..."
                    let _289 := 0x0ebf5762d8855cbe012d2ca42fb33a81175e17c8a8751f8859931ba453bd4167
                    let _290 := convert_t_address_to_t_address(expr_1271)
                    let _291 := convert_t_address_to_t_address(expr_1272)
                    let _292 := convert_t_bool_to_t_bool(expr_1273)
                    {
                        let _293 := allocate_unbounded()
                        let _294 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(_293 , expr_1274_mpos)
                        log4(_293, sub(_294, _293) , _289, _290, _291, _292)
                    }/// @src 19:19053:19558  "if (allowance != 0) {..."
                }
                default {
                    /// @src 19:19087:19097  "_operators"
                    let _295_slot := 0x9b
                    let expr_1248_slot := _295_slot
                    /// @src 19:19098:19108  "tokenOwner"
                    let _296 := var_tokenOwner_1207
                    let expr_1249 := _296
                    /// @src 19:19087:19109  "_operators[tokenOwner]"
                    let _297 := mapping_index_access_t_mapping$_t_address_$_t_struct$_AddressSet_$6773_storage_$_of_t_address(expr_1248_slot,expr_1249)
                    let _298_slot := _297
                    let expr_1250_slot := _298_slot
                    /// @src 19:19087:19113  "_operators[tokenOwner].add"
                    let expr_1251_self_slot := convert_t_struct$_AddressSet_$6773_storage_to_t_struct$_AddressSet_$6773_storage_ptr(expr_1250_slot)
                    /// @src 19:19114:19122  "operator"
                    let _299 := var_operator_1209
                    let expr_1252 := _299
                    /// @src 19:19087:19123  "_operators[tokenOwner].add(operator)"
                    let expr_1253 := fun_add_6800(expr_1251_self_slot, expr_1252)
                    /// @src 19:19188:19196  "operator"
                    let _300 := var_operator_1209
                    let expr_1256 := _300
                    /// @src 19:19214:19224  "tokenOwner"
                    let _301 := var_tokenOwner_1207
                    let expr_1257 := _301
                    /// @src 19:19242:19251  "allowance"
                    let _302 := var_allowance_1211
                    let expr_1258 := _302
                    /// @src 19:19269:19293  "operatorNotificationData"
                    let _303_mpos := var_operatorNotificationData_1215_mpos
                    let expr_1259_mpos := _303_mpos
                    /// @src 19:19142:19307  "OperatorAuthorizationChanged(..."
                    let _304 := 0xf772a43bfdf4729b196e3fb54a818b91a2ca6c49d10b2e16278752f9f515c25d
                    let _305 := convert_t_address_to_t_address(expr_1256)
                    let _306 := convert_t_address_to_t_address(expr_1257)
                    let _307 := convert_t_uint256_to_t_uint256(expr_1258)
                    {
                        let _308 := allocate_unbounded()
                        let _309 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(_308 , expr_1259_mpos)
                        log4(_308, sub(_309, _308) , _304, _305, _306, _307)
                    }/// @src 19:19053:19558  "if (allowance != 0) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_25499929147308973929162392603536425004387276054373913310965843359994056150460_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_25499929147308973929162392603536425004387276054373913310965843359994056150460_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_25499929147308973929162392603536425004387276054373913310965843359994056150460_by_1(value)))
            }

            /// @src 18:969:1081  "bytes32 constant _TYPEID_LSP7_TOKENOPERATOR = 0x386072cc5a58e61263b434c722725f21031cd06e7c552cfaa06db5de8a320dbc"
            function constant__TYPEID_LSP7_TOKENOPERATOR_6175() -> ret {
                /// @src 18:1015:1081  "0x386072cc5a58e61263b434c722725f21031cd06e7c552cfaa06db5de8a320dbc"
                let expr_6174 := 0x386072cc5a58e61263b434c722725f21031cd06e7c552cfaa06db5de8a320dbc
                let _311 := convert_t_rational_25499929147308973929162392603536425004387276054373913310965843359994056150460_by_1_to_t_bytes32(expr_6174)

                ret := _311
            }

            /// @ast-id 1762
            /// @src 19:31523:31777  "function _notifyTokenOperator(..."
            function fun__notifyTokenOperator_1762(var_operator_1748, var_lsp1Data_1750_mpos) {

                /// @src 19:31643:31652  "LSP1Utils"
                let expr_1753_address := linkersymbol("node_modules/@lukso/lsp1-contracts/contracts/LSP1Utils.sol:LSP1Utils")
                /// @src 19:31690:31698  "operator"
                let _310 := var_operator_1748
                let expr_1756 := _310
                /// @src 19:31712:31738  "_TYPEID_LSP7_TOKENOPERATOR"
                let expr_1757 := constant__TYPEID_LSP7_TOKENOPERATOR_6175()
                /// @src 19:31752:31760  "lsp1Data"
                let _312_mpos := var_lsp1Data_1750_mpos
                let expr_1758_mpos := _312_mpos
                fun_notifyUniversalReceiver_4917(expr_1756, expr_1757, expr_1758_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function wrapping_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := div(x, y)
            }

            function store_literal_in_memory_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851(memPtr) {

                mstore(add(memPtr, 0), "Math: mulDiv overflow")

            }

            function abi_encode_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 21)
                store_literal_in_memory_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function wrapping_add_t_uint256(x, y) -> sum {
                sum := cleanup_t_uint256(add(x, y))
            }

            function wrapping_mul_t_uint256(x, y) -> product {
                product := cleanup_t_uint256(mul(x, y))
            }

            function cleanup_t_rational_3_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_3_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_3_by_1(value)))
            }

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @ast-id 2529
            /// @src 42:1667:5880  "function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_mulDiv_2529(var_x_2409, var_y_2411, var_denominator_2413) -> var_result_2416 {
                /// @src 42:1749:1763  "uint256 result"
                let zero_t_uint256_313 := zero_value_for_split_t_uint256()
                var_result_2416 := zero_t_uint256_313

                /// @src 42:2096:2109  "uint256 prod0"
                let var_prod0_2419
                let zero_t_uint256_314 := zero_value_for_split_t_uint256()
                var_prod0_2419 := zero_t_uint256_314
                /// @src 42:2168:2181  "uint256 prod1"
                let var_prod1_2422
                let zero_t_uint256_315 := zero_value_for_split_t_uint256()
                var_prod1_2422 := zero_t_uint256_315
                /// @src 42:2239:2405  "assembly {..."
                {
                    let usr$mm := mulmod(var_x_2409, var_y_2411, not(0))
                    var_prod0_2419 := mul(var_x_2409, var_y_2411)
                    var_prod1_2422 := sub(sub(usr$mm, var_prod0_2419), lt(usr$mm, var_prod0_2419))
                }
                /// @src 42:2486:2491  "prod1"
                let _316 := var_prod1_2422
                let expr_2425 := _316
                /// @src 42:2495:2496  "0"
                let expr_2426 := 0x00
                /// @src 42:2486:2496  "prod1 == 0"
                let expr_2427 := eq(cleanup_t_uint256(expr_2425), convert_t_rational_0_by_1_to_t_uint256(expr_2426))
                /// @src 42:2482:2850  "if (prod1 == 0) {..."
                if expr_2427 {
                    /// @src 42:2816:2821  "prod0"
                    let _317 := var_prod0_2419
                    let expr_2428 := _317
                    /// @src 42:2824:2835  "denominator"
                    let _318 := var_denominator_2413
                    let expr_2429 := _318
                    /// @src 42:2816:2835  "prod0 / denominator"
                    let expr_2430 := wrapping_div_t_uint256(expr_2428, expr_2429)

                    /// @src 42:2809:2835  "return prod0 / denominator"
                    var_result_2416 := expr_2430
                    leave
                    /// @src 42:2482:2850  "if (prod1 == 0) {..."
                }
                /// @src 42:2960:2971  "denominator"
                let _319 := var_denominator_2413
                let expr_2435 := _319
                /// @src 42:2974:2979  "prod1"
                let _320 := var_prod1_2422
                let expr_2436 := _320
                /// @src 42:2960:2979  "denominator > prod1"
                let expr_2437 := gt(cleanup_t_uint256(expr_2435), cleanup_t_uint256(expr_2436))
                /// @src 42:2952:3005  "require(denominator > prod1, \"Math: mulDiv overflow\")"
                require_helper_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851(expr_2437)
                /// @src 42:3261:3278  "uint256 remainder"
                let var_remainder_2442
                let zero_t_uint256_321 := zero_value_for_split_t_uint256()
                var_remainder_2442 := zero_t_uint256_321
                /// @src 42:3292:3592  "assembly {..."
                {
                    var_remainder_2442 := mulmod(var_x_2409, var_y_2411, var_denominator_2413)
                    var_prod1_2422 := sub(var_prod1_2422, gt(var_remainder_2442, var_prod0_2419))
                    var_prod0_2419 := sub(var_prod0_2419, var_remainder_2442)
                }
                /// @src 42:3914:3925  "denominator"
                let _322 := var_denominator_2413
                let expr_2447 := _322
                /// @src 42:3930:3941  "denominator"
                let _323 := var_denominator_2413
                let expr_2448 := _323
                /// @src 42:3929:3941  "~denominator"
                let expr_2449 := cleanup_t_uint256(not(expr_2448))
                /// @src 42:3944:3945  "1"
                let expr_2450 := 0x01
                /// @src 42:3929:3945  "~denominator + 1"
                let expr_2451 := wrapping_add_t_uint256(expr_2449, convert_t_rational_1_by_1_to_t_uint256(expr_2450))

                /// @src 42:3928:3946  "(~denominator + 1)"
                let expr_2452 := expr_2451
                /// @src 42:3914:3946  "denominator & (~denominator + 1)"
                let expr_2453 := and(expr_2447, expr_2452)

                /// @src 42:3899:3946  "uint256 twos = denominator & (~denominator + 1)"
                let var_twos_2446 := expr_2453
                /// @src 42:3960:4331  "assembly {..."
                {
                    var_denominator_2413 := div(var_denominator_2413, var_twos_2446)
                    var_prod0_2419 := div(var_prod0_2419, var_twos_2446)
                    var_twos_2446 := add(div(sub(0, var_twos_2446), var_twos_2446), 1)
                }
                /// @src 42:4406:4411  "prod1"
                let _324 := var_prod1_2422
                let expr_2457 := _324
                /// @src 42:4414:4418  "twos"
                let _325 := var_twos_2446
                let expr_2458 := _325
                /// @src 42:4406:4418  "prod1 * twos"
                let expr_2459 := wrapping_mul_t_uint256(expr_2457, expr_2458)

                /// @src 42:4397:4418  "prod0 |= prod1 * twos"
                let _326 := var_prod0_2419
                let expr_2460 := or(_326, expr_2459)

                var_prod0_2419 := expr_2460
                /// @src 42:4755:4756  "3"
                let expr_2464 := 0x03
                /// @src 42:4759:4770  "denominator"
                let _327 := var_denominator_2413
                let expr_2465 := _327
                /// @src 42:4755:4770  "3 * denominator"
                let expr_2466 := wrapping_mul_t_uint256(convert_t_rational_3_by_1_to_t_uint256(expr_2464), expr_2465)

                /// @src 42:4754:4771  "(3 * denominator)"
                let expr_2467 := expr_2466
                /// @src 42:4774:4775  "2"
                let expr_2468 := 0x02
                /// @src 42:4754:4775  "(3 * denominator) ^ 2"
                let expr_2469 := xor(expr_2467, convert_t_rational_2_by_1_to_t_uint256(expr_2468))

                /// @src 42:4736:4775  "uint256 inverse = (3 * denominator) ^ 2"
                let var_inverse_2463 := expr_2469
                /// @src 42:5003:5004  "2"
                let expr_2472 := 0x02
                /// @src 42:5007:5018  "denominator"
                let _328 := var_denominator_2413
                let expr_2473 := _328
                /// @src 42:5021:5028  "inverse"
                let _329 := var_inverse_2463
                let expr_2474 := _329
                /// @src 42:5007:5028  "denominator * inverse"
                let expr_2475 := wrapping_mul_t_uint256(expr_2473, expr_2474)

                /// @src 42:5003:5028  "2 - denominator * inverse"
                let expr_2476 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2472), expr_2475)

                /// @src 42:4992:5028  "inverse *= 2 - denominator * inverse"
                let _330 := var_inverse_2463
                let expr_2477 := wrapping_mul_t_uint256(_330, expr_2476)

                var_inverse_2463 := expr_2477
                /// @src 42:5072:5073  "2"
                let expr_2480 := 0x02
                /// @src 42:5076:5087  "denominator"
                let _331 := var_denominator_2413
                let expr_2481 := _331
                /// @src 42:5090:5097  "inverse"
                let _332 := var_inverse_2463
                let expr_2482 := _332
                /// @src 42:5076:5097  "denominator * inverse"
                let expr_2483 := wrapping_mul_t_uint256(expr_2481, expr_2482)

                /// @src 42:5072:5097  "2 - denominator * inverse"
                let expr_2484 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2480), expr_2483)

                /// @src 42:5061:5097  "inverse *= 2 - denominator * inverse"
                let _333 := var_inverse_2463
                let expr_2485 := wrapping_mul_t_uint256(_333, expr_2484)

                var_inverse_2463 := expr_2485
                /// @src 42:5142:5143  "2"
                let expr_2488 := 0x02
                /// @src 42:5146:5157  "denominator"
                let _334 := var_denominator_2413
                let expr_2489 := _334
                /// @src 42:5160:5167  "inverse"
                let _335 := var_inverse_2463
                let expr_2490 := _335
                /// @src 42:5146:5167  "denominator * inverse"
                let expr_2491 := wrapping_mul_t_uint256(expr_2489, expr_2490)

                /// @src 42:5142:5167  "2 - denominator * inverse"
                let expr_2492 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2488), expr_2491)

                /// @src 42:5131:5167  "inverse *= 2 - denominator * inverse"
                let _336 := var_inverse_2463
                let expr_2493 := wrapping_mul_t_uint256(_336, expr_2492)

                var_inverse_2463 := expr_2493
                /// @src 42:5212:5213  "2"
                let expr_2496 := 0x02
                /// @src 42:5216:5227  "denominator"
                let _337 := var_denominator_2413
                let expr_2497 := _337
                /// @src 42:5230:5237  "inverse"
                let _338 := var_inverse_2463
                let expr_2498 := _338
                /// @src 42:5216:5237  "denominator * inverse"
                let expr_2499 := wrapping_mul_t_uint256(expr_2497, expr_2498)

                /// @src 42:5212:5237  "2 - denominator * inverse"
                let expr_2500 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2496), expr_2499)

                /// @src 42:5201:5237  "inverse *= 2 - denominator * inverse"
                let _339 := var_inverse_2463
                let expr_2501 := wrapping_mul_t_uint256(_339, expr_2500)

                var_inverse_2463 := expr_2501
                /// @src 42:5282:5283  "2"
                let expr_2504 := 0x02
                /// @src 42:5286:5297  "denominator"
                let _340 := var_denominator_2413
                let expr_2505 := _340
                /// @src 42:5300:5307  "inverse"
                let _341 := var_inverse_2463
                let expr_2506 := _341
                /// @src 42:5286:5307  "denominator * inverse"
                let expr_2507 := wrapping_mul_t_uint256(expr_2505, expr_2506)

                /// @src 42:5282:5307  "2 - denominator * inverse"
                let expr_2508 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2504), expr_2507)

                /// @src 42:5271:5307  "inverse *= 2 - denominator * inverse"
                let _342 := var_inverse_2463
                let expr_2509 := wrapping_mul_t_uint256(_342, expr_2508)

                var_inverse_2463 := expr_2509
                /// @src 42:5353:5354  "2"
                let expr_2512 := 0x02
                /// @src 42:5357:5368  "denominator"
                let _343 := var_denominator_2413
                let expr_2513 := _343
                /// @src 42:5371:5378  "inverse"
                let _344 := var_inverse_2463
                let expr_2514 := _344
                /// @src 42:5357:5378  "denominator * inverse"
                let expr_2515 := wrapping_mul_t_uint256(expr_2513, expr_2514)

                /// @src 42:5353:5378  "2 - denominator * inverse"
                let expr_2516 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2512), expr_2515)

                /// @src 42:5342:5378  "inverse *= 2 - denominator * inverse"
                let _345 := var_inverse_2463
                let expr_2517 := wrapping_mul_t_uint256(_345, expr_2516)

                var_inverse_2463 := expr_2517
                /// @src 42:5821:5826  "prod0"
                let _346 := var_prod0_2419
                let expr_2520 := _346
                /// @src 42:5829:5836  "inverse"
                let _347 := var_inverse_2463
                let expr_2521 := _347
                /// @src 42:5821:5836  "prod0 * inverse"
                let expr_2522 := wrapping_mul_t_uint256(expr_2520, expr_2521)

                /// @src 42:5812:5836  "result = prod0 * inverse"
                var_result_2416 := expr_2522
                let expr_2523 := expr_2522
                /// @src 42:5857:5863  "result"
                let _348 := var_result_2416
                let expr_2525 := _348
                /// @src 42:5850:5863  "return result"
                var_result_2416 := expr_2525
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(memPtr) {

                mstore(add(memPtr, 0), "Ownable: caller is not the owner")

            }

            function abi_encode_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 32)
                store_literal_in_memory_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 9112
            /// @src 22:1620:1750  "function _checkOwner() internal view virtual {..."
            function fun__checkOwner_9112() {

                /// @src 22:1683:1690  "owner()"
                let expr_9104 := fun_owner_9098()
                /// @src 22:1694:1706  "_msgSender()"
                let expr_9106 := fun__msgSender_7257()
                /// @src 22:1683:1706  "owner() == _msgSender()"
                let expr_9107 := eq(cleanup_t_address(expr_9104), cleanup_t_address(expr_9106))
                /// @src 22:1675:1743  "require(owner() == _msgSender(), \"Ownable: caller is not the owner\")"
                require_helper_t_stringliteral_9924ebdf1add33d25d4ef888e16131f0a5687b0580a36c21b5c301a6c462effe(expr_9107)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1922
            /// @src 24:1718:1784  "modifier whenPaused() {..."
            function modifier_whenPaused_1974() {

                fun__requirePaused_1954()
                /// @src 24:1776:1777  "_"
                fun__unpause_1986_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            /// @src 24:2697:2814  "function _unpause() internal virtual whenPaused {..."
            function fun__unpause_1986_inner() {

                /// @src 24:2765:2770  "false"
                let expr_1977 := 0x00
                /// @src 24:2755:2770  "_paused = false"
                update_storage_value_offset_0t_bool_to_t_bool(0x9d, expr_1977)
                let expr_1978 := expr_1977
                /// @src 24:2794:2806  "_msgSender()"
                let expr_1982 := fun__msgSender_7257()
                /// @src 24:2785:2807  "Unpaused(_msgSender())"
                let _349 := 0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa
                {
                    let _350 := allocate_unbounded()
                    let _351 := abi_encode_tuple_t_address__to_t_address__fromStack(_350 , expr_1982)
                    log1(_350, sub(_351, _350) , _349)
                }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1986
            /// @src 24:2697:2814  "function _unpause() internal virtual whenPaused {..."
            function fun__unpause_1986() {

                modifier_whenPaused_1974()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a(memPtr) {

                mstore(add(memPtr, 0), "Pausable: paused")

            }

            function abi_encode_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 16)
                store_literal_in_memory_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 1943
            /// @src 24:2031:2137  "function _requireNotPaused() internal view virtual {..."
            function fun__requireNotPaused_1943() {

                /// @src 24:2101:2109  "paused()"
                let expr_1937 := fun_paused_1931()
                /// @src 24:2100:2109  "!paused()"
                let expr_1938 := cleanup_t_bool(iszero(expr_1937))
                /// @src 24:2092:2130  "require(!paused(), \"Pausable: paused\")"
                require_helper_t_stringliteral_68571e1369f7a6dcdcd736cb0343b35a58ed0f64d245c2ed839c98d412744f8a(expr_1938)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1863
            /// @src 21:475:724  "function burn(..."
            function fun_burn_1863(var_from_1836, var_amount_1838, var_data_1840_mpos) {

                /// @src 21:597:607  "msg.sender"
                let expr_1844 := caller()
                /// @src 21:611:615  "from"
                let _352 := var_from_1836
                let expr_1845 := _352
                /// @src 21:597:615  "msg.sender != from"
                let expr_1846 := iszero(eq(cleanup_t_address(expr_1844), cleanup_t_address(expr_1845)))
                /// @src 21:593:683  "if (msg.sender != from) {..."
                if expr_1846 {
                    /// @src 21:647:657  "msg.sender"
                    let expr_1849 := caller()
                    /// @src 21:659:663  "from"
                    let _353 := var_from_1836
                    let expr_1850 := _353
                    /// @src 21:665:671  "amount"
                    let _354 := var_amount_1838
                    let expr_1851 := _354
                    fun__spendAllowance_1519(expr_1849, expr_1850, expr_1851)
                    /// @src 21:593:683  "if (msg.sender != from) {..."
                }
                /// @src 21:698:702  "from"
                let _355 := var_from_1836
                let expr_1857 := _355
                /// @src 21:704:710  "amount"
                let _356 := var_amount_1838
                let expr_1858 := _356
                /// @src 21:712:716  "data"
                let _357_mpos := var_data_1840_mpos
                let expr_1859_mpos := _357_mpos
                fun__burn_1474(expr_1857, expr_1858, expr_1859_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 8205
            /// @src 26:1423:1743  "function isContract(address account) internal view returns (bool) {..."
            function fun_isContract_8205(var_account_8193) -> var__8196 {
                /// @src 26:1483:1487  "bool"
                let zero_t_bool_358 := zero_value_for_split_t_bool()
                var__8196 := zero_t_bool_358

                /// @src 26:1713:1720  "account"
                let _359 := var_account_8193
                let expr_8198 := _359
                /// @src 26:1713:1732  "account.code.length"
                let expr_8200 := extcodesize(expr_8198)
                /// @src 26:1735:1736  "0"
                let expr_8201 := 0x00
                /// @src 26:1713:1736  "account.code.length > 0"
                let expr_8202 := gt(cleanup_t_uint256(expr_8200), convert_t_rational_0_by_1_to_t_uint256(expr_8201))
                /// @src 26:1706:1736  "return account.code.length > 0"
                var__8196 := expr_8202
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(memPtr) {

                mstore(add(memPtr, 0), "Initializable: contract is not i")

                mstore(add(memPtr, 32), "nitializing")

            }

            function abi_encode_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 43)
                store_literal_in_memory_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_1890() {

                /// @src 23:5374:5387  "_initializing"
                let _360 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7168 := _360
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___Pausable_init_1896_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 24:1084:1181  "function __Pausable_init() internal onlyInitializing {..."
            function fun___Pausable_init_1896_inner() {

                fun___Pausable_init_unchained_1906()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1896
            /// @src 24:1084:1181  "function __Pausable_init() internal onlyInitializing {..."
            function fun___Pausable_init_1896() {

                modifier_onlyInitializing_1890()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_515(var_name__504_mpos, var_symbol__506_mpos, var_newOwner__508, var_lsp4TokenType__510, var_isNonDivisible__512) {

                /// @src 23:5374:5387  "_initializing"
                let _361 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7168 := _361
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun__initialize_531_inner(var_name__504_mpos, var_symbol__506_mpos, var_newOwner__508, var_lsp4TokenType__510, var_isNonDivisible__512)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 19:3253:3673  "function _initialize(..."
            function fun__initialize_531_inner(var_name__504_mpos, var_symbol__506_mpos, var_newOwner__508, var_lsp4TokenType__510, var_isNonDivisible__512) {

                /// @src 19:3535:3540  "name_"
                let _362_mpos := var_name__504_mpos
                let expr_520_mpos := _362_mpos
                /// @src 19:3554:3561  "symbol_"
                let _363_mpos := var_symbol__506_mpos
                let expr_521_mpos := _363_mpos
                /// @src 19:3575:3584  "newOwner_"
                let _364 := var_newOwner__508
                let expr_522 := _364
                /// @src 19:3598:3612  "lsp4TokenType_"
                let _365 := var_lsp4TokenType__510
                let expr_523 := _365
                fun__initialize_5935(expr_520_mpos, expr_521_mpos, expr_522, expr_523)
                /// @src 19:3651:3666  "isNonDivisible_"
                let _366 := var_isNonDivisible__512
                let expr_527 := _366
                /// @src 19:3633:3666  "_isNonDivisible = isNonDivisible_"
                update_storage_value_offset_0t_bool_to_t_bool(0x98, expr_527)
                let expr_528 := expr_527

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 531
            /// @src 19:3253:3673  "function _initialize(..."
            function fun__initialize_531(var_name__504_mpos, var_symbol__506_mpos, var_newOwner__508, var_lsp4TokenType__510, var_isNonDivisible__512) {

                modifier_onlyInitializing_515(var_name__504_mpos, var_symbol__506_mpos, var_newOwner__508, var_lsp4TokenType__510, var_isNonDivisible__512)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_bytes32_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(value)
            }

            function mapping_index_access_t_mapping$_t_bytes32_$_t_bytes_storage_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_dataslot_t_bytes_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // bytes -> bytes
            function abi_encode_t_bytes_storage_to_t_bytes_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, mul(0x20, iszero(iszero(length))))
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_bytes_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_bytes_storage_to_t_bytes_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_bytes_storage_to_t_bytes_memory_ptr(value0, pos)
            }

            function copy_array_from_storage_to_memory_t_bytes_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_bytes_storage_to_t_bytes_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_bytes_storage_to_t_bytes_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_bytes_storage(value)

            }

            /// @ast-id 8071
            /// @src 0:4887:5030  "function _getData(..."
            function fun__getData_8071(var_dataKey_8061) -> var_dataValue_8064_mpos {
                /// @src 0:4967:4989  "bytes memory dataValue"
                let zero_t_bytes_memory_ptr_367_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var_dataValue_8064_mpos := zero_t_bytes_memory_ptr_367_mpos

                /// @src 0:5008:5014  "_store"
                let _368_slot := 0x97
                let expr_8066_slot := _368_slot
                /// @src 0:5015:5022  "dataKey"
                let _369 := var_dataKey_8061
                let expr_8067 := _369
                /// @src 0:5008:5023  "_store[dataKey]"
                let _370 := mapping_index_access_t_mapping$_t_bytes32_$_t_bytes_storage_$_of_t_bytes32(expr_8066_slot,expr_8067)
                let _371_slot := _370
                let expr_8068_slot := _371_slot
                /// @src 0:5001:5023  "return _store[dataKey]"
                var_dataValue_8064_mpos := convert_array_t_bytes_storage_to_t_bytes_memory_ptr(expr_8068_slot)
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            /// @ast-id 9169
            /// @src 22:2687:2874  "function _transferOwnership(address newOwner) internal virtual {..."
            function fun__transferOwnership_9169(var_newOwner_9152) {

                /// @src 22:2779:2785  "_owner"
                let _372 := read_from_storage_split_offset_0_t_address(0x33)
                let expr_9157 := _372
                /// @src 22:2760:2785  "address oldOwner = _owner"
                let var_oldOwner_9156 := expr_9157
                /// @src 22:2804:2812  "newOwner"
                let _373 := var_newOwner_9152
                let expr_9160 := _373
                /// @src 22:2795:2812  "_owner = newOwner"
                update_storage_value_offset_0t_address_to_t_address(0x33, expr_9160)
                let expr_9161 := expr_9160
                /// @src 22:2848:2856  "oldOwner"
                let _374 := var_oldOwner_9156
                let expr_9164 := _374
                /// @src 22:2858:2866  "newOwner"
                let _375 := var_newOwner_9152
                let expr_9165 := _375
                /// @src 22:2827:2867  "OwnershipTransferred(oldOwner, newOwner)"
                let _376 := 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0
                let _377 := convert_t_address_to_t_address(expr_9164)
                let _378 := convert_t_address_to_t_address(expr_9165)
                {
                    let _379 := allocate_unbounded()
                    let _380 := abi_encode_tuple__to__fromStack(_379 )
                    log3(_379, sub(_380, _379) , _376, _377, _378)
                }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_tuple_t_address_t_uint256_t_address_t_uint256__to_t_address_t_uint256_t_address_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(add(memPtr, 32))
            }

            function convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470()
            }

            /// @ast-id 1519
            /// @src 19:24656:25407  "function _spendAllowance(..."
            function fun__spendAllowance_1519(var_operator_1477, var_tokenOwner_1479, var_amountToSpend_1481) {

                /// @src 19:24826:24851  "_operatorAuthorizedAmount"
                let _381_slot := 0x9c
                let expr_1486_slot := _381_slot
                /// @src 19:24852:24862  "tokenOwner"
                let _382 := var_tokenOwner_1479
                let expr_1487 := _382
                /// @src 19:24826:24863  "_operatorAuthorizedAmount[tokenOwner]"
                let _383 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_1486_slot,expr_1487)
                let _384_slot := _383
                let expr_1488_slot := _384_slot
                /// @src 19:24877:24885  "operator"
                let _385 := var_operator_1477
                let expr_1489 := _385
                /// @src 19:24826:24895  "_operatorAuthorizedAmount[tokenOwner][..."
                let _386 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1488_slot,expr_1489)
                let _387 := read_from_storage_split_offset_0_t_uint256(_386)
                let expr_1490 := _387
                /// @src 19:24799:24895  "uint256 authorizedAmount = _operatorAuthorizedAmount[tokenOwner][..."
                let var_authorizedAmount_1485 := expr_1490
                /// @src 19:24910:24926  "authorizedAmount"
                let _388 := var_authorizedAmount_1485
                let expr_1492 := _388
                /// @src 19:24930:24931  "0"
                let expr_1493 := 0x00
                /// @src 19:24910:24931  "authorizedAmount == 0"
                let expr_1494 := eq(cleanup_t_uint256(expr_1492), convert_t_rational_0_by_1_to_t_uint256(expr_1493))
                /// @src 19:24910:24967  "authorizedAmount == 0 || amountToSpend > authorizedAmount"
                let expr_1498 := expr_1494
                if iszero(expr_1498) {
                    /// @src 19:24935:24948  "amountToSpend"
                    let _389 := var_amountToSpend_1481
                    let expr_1495 := _389
                    /// @src 19:24951:24967  "authorizedAmount"
                    let _390 := var_authorizedAmount_1485
                    let expr_1496 := _390
                    /// @src 19:24935:24967  "amountToSpend > authorizedAmount"
                    let expr_1497 := gt(cleanup_t_uint256(expr_1495), cleanup_t_uint256(expr_1496))
                    /// @src 19:24910:24967  "authorizedAmount == 0 || amountToSpend > authorizedAmount"
                    expr_1498 := expr_1497
                }
                /// @src 19:24906:25167  "if (authorizedAmount == 0 || amountToSpend > authorizedAmount) {..."
                if expr_1498 {
                    /// @src 19:25041:25051  "tokenOwner"
                    let _391 := var_tokenOwner_1479
                    let expr_1500 := _391
                    /// @src 19:25069:25085  "authorizedAmount"
                    let _392 := var_authorizedAmount_1485
                    let expr_1501 := _392
                    /// @src 19:25103:25111  "operator"
                    let _393 := var_operator_1477
                    let expr_1502 := _393
                    /// @src 19:25129:25142  "amountToSpend"
                    let _394 := var_amountToSpend_1481
                    let expr_1503 := _394
                    /// @src 19:24990:25156  "LSP7AmountExceedsAuthorizedAmount(..."
                    {
                        let _395 := allocate_unbounded()
                        mstore(_395, 110206578845514326792880681663622921542702274362938733172613114538858083516416)
                        let _396 := abi_encode_tuple_t_address_t_uint256_t_address_t_uint256__to_t_address_t_uint256_t_address_t_uint256__fromStack(add(_395, 4) , expr_1500, expr_1501, expr_1502, expr_1503)
                        revert(_395, sub(_396, _395))
                    }/// @src 19:24906:25167  "if (authorizedAmount == 0 || amountToSpend > authorizedAmount) {..."
                }
                /// @src 19:25219:25229  "tokenOwner"
                let _397 := var_tokenOwner_1479
                let expr_1509 := _397
                /// @src 19:25253:25261  "operator"
                let _398 := var_operator_1477
                let expr_1510 := _398
                /// @src 19:25286:25302  "authorizedAmount"
                let _399 := var_authorizedAmount_1485
                let expr_1511 := _399
                /// @src 19:25305:25318  "amountToSpend"
                let _400 := var_amountToSpend_1481
                let expr_1512 := _400
                /// @src 19:25286:25318  "authorizedAmount - amountToSpend"
                let expr_1513 := checked_sub_t_uint256(expr_1511, expr_1512)

                /// @src 19:25342:25347  "false"
                let expr_1514 := 0x00
                /// @src 19:25177:25400  "_updateOperator({..."
                let _401_mpos := convert_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr()
                fun__updateOperator_1280(expr_1509, expr_1510, expr_1513, expr_1514, _401_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_tuple_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 160)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_address_to_t_address_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

                mstore(add(headStart, 128), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value4,  tail)

            }

            /// @ast-id 1599
            /// @src 19:26815:27442  "function _transfer(..."
            function fun__transfer_1599(var_from_1522, var_to_1524, var_amount_1526, var_force_1528, var_data_1530_mpos) {

                /// @src 19:26984:26988  "from"
                let _402 := var_from_1522
                let expr_1533 := _402
                /// @src 19:27000:27001  "0"
                let expr_1536 := 0x00
                /// @src 19:26992:27002  "address(0)"
                let expr_1537 := convert_t_rational_0_by_1_to_t_address(expr_1536)
                /// @src 19:26984:27002  "from == address(0)"
                let expr_1538 := eq(cleanup_t_address(expr_1533), cleanup_t_address(expr_1537))
                /// @src 19:26984:27022  "from == address(0) || to == address(0)"
                let expr_1545 := expr_1538
                if iszero(expr_1545) {
                    /// @src 19:27006:27008  "to"
                    let _403 := var_to_1524
                    let expr_1539 := _403
                    /// @src 19:27020:27021  "0"
                    let expr_1542 := 0x00
                    /// @src 19:27012:27022  "address(0)"
                    let expr_1543 := convert_t_rational_0_by_1_to_t_address(expr_1542)
                    /// @src 19:27006:27022  "to == address(0)"
                    let expr_1544 := eq(cleanup_t_address(expr_1539), cleanup_t_address(expr_1543))
                    /// @src 19:26984:27022  "from == address(0) || to == address(0)"
                    expr_1545 := expr_1544
                }
                /// @src 19:26980:27087  "if (from == address(0) || to == address(0)) {..."
                if expr_1545 {
                    /// @src 19:27045:27076  "LSP7CannotSendWithAddressZero()"
                    {
                        let _404 := allocate_unbounded()
                        mstore(_404, 95363666733499020016883860753997762609705839162368146519871948951056675766272)
                        let _405 := abi_encode_tuple__to__fromStack(add(_404, 4) )
                        revert(_404, sub(_405, _404))
                    }/// @src 19:26980:27087  "if (from == address(0) || to == address(0)) {..."
                }
                /// @src 19:27118:27122  "from"
                let _406 := var_from_1522
                let expr_1552 := _406
                /// @src 19:27124:27126  "to"
                let _407 := var_to_1524
                let expr_1553 := _407
                /// @src 19:27128:27134  "amount"
                let _408 := var_amount_1526
                let expr_1554 := _408
                /// @src 19:27136:27141  "force"
                let _409 := var_force_1528
                let expr_1555 := _409
                /// @src 19:27143:27147  "data"
                let _410_mpos := var_data_1530_mpos
                let expr_1556_mpos := _410_mpos
                fun__beforeTokenTransfer_332(expr_1552, expr_1553, expr_1554, expr_1555, expr_1556_mpos)
                /// @src 19:27167:27171  "from"
                let _411 := var_from_1522
                let expr_1560 := _411
                /// @src 19:27173:27175  "to"
                let _412 := var_to_1524
                let expr_1561 := _412
                /// @src 19:27177:27183  "amount"
                let _413 := var_amount_1526
                let expr_1562 := _413
                /// @src 19:27185:27190  "force"
                let _414 := var_force_1528
                let expr_1563 := _414
                /// @src 19:27192:27196  "data"
                let _415_mpos := var_data_1530_mpos
                let expr_1564_mpos := _415_mpos
                fun__update_1715(expr_1560, expr_1561, expr_1562, expr_1563, expr_1564_mpos)
                /// @src 19:27228:27232  "from"
                let _416 := var_from_1522
                let expr_1568 := _416
                /// @src 19:27234:27236  "to"
                let _417 := var_to_1524
                let expr_1569 := _417
                /// @src 19:27238:27244  "amount"
                let _418 := var_amount_1526
                let expr_1570 := _418
                /// @src 19:27246:27251  "force"
                let _419 := var_force_1528
                let expr_1571 := _419
                /// @src 19:27253:27257  "data"
                let _420_mpos := var_data_1530_mpos
                let expr_1572_mpos := _420_mpos
                fun__afterTokenTransfer_389(expr_1568, expr_1569, expr_1570, expr_1571, expr_1572_mpos)
                /// @src 19:27304:27314  "msg.sender"
                let expr_1580 := caller()
                /// @src 19:27316:27320  "from"
                let _421 := var_from_1522
                let expr_1581 := _421
                /// @src 19:27322:27324  "to"
                let _422 := var_to_1524
                let expr_1582 := _422
                /// @src 19:27326:27332  "amount"
                let _423 := var_amount_1526
                let expr_1583 := _423
                /// @src 19:27334:27338  "data"
                let _424_mpos := var_data_1530_mpos
                let expr_1584_mpos := _424_mpos
                /// @src 19:27293:27339  "abi.encode(msg.sender, from, to, amount, data)"

                let expr_1585_mpos := allocate_unbounded()
                let _425 := add(expr_1585_mpos, 0x20)

                let _426 := abi_encode_tuple_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_425, expr_1580, expr_1581, expr_1582, expr_1583, expr_1584_mpos)
                mstore(expr_1585_mpos, sub(_426, add(expr_1585_mpos, 0x20)))
                finalize_allocation(expr_1585_mpos, sub(_426, expr_1585_mpos))
                /// @src 19:27269:27339  "bytes memory lsp1Data = abi.encode(msg.sender, from, to, amount, data)"
                let var_lsp1Data_1576_mpos := expr_1585_mpos
                /// @src 19:27369:27373  "from"
                let _427 := var_from_1522
                let expr_1588 := _427
                /// @src 19:27375:27383  "lsp1Data"
                let _428_mpos := var_lsp1Data_1576_mpos
                let expr_1589_mpos := _428_mpos
                fun__notifyTokenSender_1779(expr_1588, expr_1589_mpos)
                /// @src 19:27415:27417  "to"
                let _429 := var_to_1524
                let expr_1593 := _429
                /// @src 19:27419:27424  "force"
                let _430 := var_force_1528
                let expr_1594 := _430
                /// @src 19:27426:27434  "lsp1Data"
                let _431_mpos := var_lsp1Data_1576_mpos
                let expr_1595_mpos := _431_mpos
                fun__notifyTokenReceiver_1825(expr_1593, expr_1594, expr_1595_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_100742294102289264549068743044138917200237013684961480918773254279156963117809_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100742294102289264549068743044138917200237013684961480918773254279156963117809_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_100742294102289264549068743044138917200237013684961480918773254279156963117809_by_1(value)))
            }

            /// @src 14:593:699  "bytes32 constant _LSP4_TOKEN_NAME_KEY = 0xdeba1e292f8ba88238e10ab3c7f88bd4be4fac56cad5194b6ecceaf653468af1"
            function constant__LSP4_TOKEN_NAME_KEY_410() -> ret {
                /// @src 14:633:699  "0xdeba1e292f8ba88238e10ab3c7f88bd4be4fac56cad5194b6ecceaf653468af1"
                let expr_409 := 0xdeba1e292f8ba88238e10ab3c7f88bd4be4fac56cad5194b6ecceaf653468af1
                let _433 := convert_t_rational_100742294102289264549068743044138917200237013684961480918773254279156963117809_by_1_to_t_bytes32(expr_409)

                ret := _433
            }

            function cleanup_t_rational_21277094746618207019470167271284656117398221945515764204453433194201650243414_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_21277094746618207019470167271284656117398221945515764204453433194201650243414_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_21277094746618207019470167271284656117398221945515764204453433194201650243414_by_1(value)))
            }

            /// @src 14:734:842  "bytes32 constant _LSP4_TOKEN_SYMBOL_KEY = 0x2f0a68ab07768e01943a599e73362a0e17a63a72e94dd2e384d2c1d4db932756"
            function constant__LSP4_TOKEN_SYMBOL_KEY_413() -> ret {
                /// @src 14:776:842  "0x2f0a68ab07768e01943a599e73362a0e17a63a72e94dd2e384d2c1d4db932756"
                let expr_412 := 0x2f0a68ab07768e01943a599e73362a0e17a63a72e94dd2e384d2c1d4db932756
                let _435 := convert_t_rational_21277094746618207019470167271284656117398221945515764204453433194201650243414_by_1_to_t_bytes32(expr_412)

                ret := _435
            }

            function cleanup_t_rational_101385436791348632936915532486413845551797772917774025249609027894947960716723_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_101385436791348632936915532486413845551797772917774025249609027894947960716723_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_101385436791348632936915532486413845551797772917774025249609027894947960716723_by_1(value)))
            }

            /// @src 14:875:981  "bytes32 constant _LSP4_TOKEN_TYPE_KEY = 0xe0261fa95db2eb3b5439bd033cda66d56b96f92f243a8228fd87550ed7bdfdb3"
            function constant__LSP4_TOKEN_TYPE_KEY_416() -> ret {
                /// @src 14:915:981  "0xe0261fa95db2eb3b5439bd033cda66d56b96f92f243a8228fd87550ed7bdfdb3"
                let expr_415 := 0xe0261fa95db2eb3b5439bd033cda66d56b96f92f243a8228fd87550ed7bdfdb3
                let _437 := convert_t_rational_101385436791348632936915532486413845551797772917774025249609027894947960716723_by_1_to_t_bytes32(expr_415)

                ret := _437
            }

            function panic_error_0x00() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x00)
                revert(0, 0x24)
            }

            function divide_by_32_ceil(value) -> result {
                result := div(add(value, 31), 32)
            }

            function shift_left_dynamic(bits, value) -> newValue {
                newValue :=

                shl(bits, value)

            }

            function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
                let shiftBits := mul(shiftBytes, 8)
                let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                toInsert := shift_left_dynamic(shiftBits, toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
            }

            function storage_set_to_zero_t_uint256(slot, offset) {
                let zero_0 := zero_value_for_split_t_uint256()
                update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
            }

            function clear_storage_range_t_bytes1(start, end) {
                for {} lt(start, end) { start := add(start, 1) }
                {
                    storage_set_to_zero_t_uint256(start, 0)
                }
            }

            function clean_up_bytearray_end_slots_t_bytes_storage(array, len, startIndex) {

                if gt(len, 31) {
                    let dataArea := array_dataslot_t_bytes_storage(array)
                    let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                    // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                    if lt(startIndex, 32) { deleteStart := dataArea }
                    clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
                }

            }

            function mask_bytes_dynamic(data, bytes) -> result {
                let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
                result := and(data, mask)
            }
            function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
                // we want to save only elements that are part of the array after resizing
                // others should be set to zero
                data := mask_bytes_dynamic(data, len)
                used := or(data, mul(2, len))
            }
            function copy_byte_array_to_storage_from_t_bytes_memory_ptr_to_t_bytes_storage(slot, src) {

                let newLen := array_length_t_bytes_memory_ptr(src)
                // Make sure array length is sane
                if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

                let oldLen := extract_byte_array_length(sload(slot))

                // potentially truncate data
                clean_up_bytearray_end_slots_t_bytes_storage(slot, oldLen, newLen)

                let srcOffset := 0

                srcOffset := 0x20

                switch gt(newLen, 31)
                case 1 {
                    let loopEnd := and(newLen, not(0x1f))

                    let dstPtr := array_dataslot_t_bytes_storage(slot)
                    let i := 0
                    for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                        sstore(dstPtr, mload(add(src, srcOffset)))
                        dstPtr := add(dstPtr, 1)
                        srcOffset := add(srcOffset, 32)
                    }
                    if lt(loopEnd, newLen) {
                        let lastValue := mload(add(src, srcOffset))
                        sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                    }
                    sstore(slot, add(mul(newLen, 2), 1))
                }
                default {
                    let value := 0
                    if newLen {
                        value := mload(add(src, srcOffset))
                    }
                    sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
                }
            }

            function update_storage_value_offset_0t_bytes_memory_ptr_to_t_bytes_storage(slot, value_0) {

                copy_byte_array_to_storage_from_t_bytes_memory_ptr_to_t_bytes_storage(slot, value_0)
            }

            /// @ast-id 5981
            /// @src 15:2156:2689  "function _setData(..."
            function fun__setData_5981(var_dataKey_5938, var_dataValue_5940_mpos) {

                /// @src 15:2277:2284  "dataKey"
                let _432 := var_dataKey_5938
                let expr_5944 := _432
                /// @src 15:2288:2308  "_LSP4_TOKEN_NAME_KEY"
                let expr_5945 := constant__LSP4_TOKEN_NAME_KEY_410()
                /// @src 15:2277:2308  "dataKey == _LSP4_TOKEN_NAME_KEY"
                let expr_5946 := eq(cleanup_t_bytes32(expr_5944), cleanup_t_bytes32(expr_5945))
                /// @src 15:2273:2683  "if (dataKey == _LSP4_TOKEN_NAME_KEY) {..."
                switch expr_5946
                case 0 {
                    /// @src 15:2378:2385  "dataKey"
                    let _434 := var_dataKey_5938
                    let expr_5951 := _434
                    /// @src 15:2389:2411  "_LSP4_TOKEN_SYMBOL_KEY"
                    let expr_5952 := constant__LSP4_TOKEN_SYMBOL_KEY_413()
                    /// @src 15:2378:2411  "dataKey == _LSP4_TOKEN_SYMBOL_KEY"
                    let expr_5953 := eq(cleanup_t_bytes32(expr_5951), cleanup_t_bytes32(expr_5952))
                    /// @src 15:2374:2683  "if (dataKey == _LSP4_TOKEN_SYMBOL_KEY) {..."
                    switch expr_5953
                    case 0 {
                        /// @src 15:2483:2490  "dataKey"
                        let _436 := var_dataKey_5938
                        let expr_5958 := _436
                        /// @src 15:2494:2514  "_LSP4_TOKEN_TYPE_KEY"
                        let expr_5959 := constant__LSP4_TOKEN_TYPE_KEY_416()
                        /// @src 15:2483:2514  "dataKey == _LSP4_TOKEN_TYPE_KEY"
                        let expr_5960 := eq(cleanup_t_bytes32(expr_5958), cleanup_t_bytes32(expr_5959))
                        /// @src 15:2479:2683  "if (dataKey == _LSP4_TOKEN_TYPE_KEY) {..."
                        switch expr_5960
                        case 0 {
                            /// @src 15:2612:2621  "dataValue"
                            let _438_mpos := var_dataValue_5940_mpos
                            let expr_5968_mpos := _438_mpos
                            /// @src 15:2594:2600  "_store"
                            let _439_slot := 0x97
                            let expr_5965_slot := _439_slot
                            /// @src 15:2601:2608  "dataKey"
                            let _440 := var_dataKey_5938
                            let expr_5966 := _440
                            /// @src 15:2594:2609  "_store[dataKey]"
                            let _441 := mapping_index_access_t_mapping$_t_bytes32_$_t_bytes_storage_$_of_t_bytes32(expr_5965_slot,expr_5966)
                            /// @src 15:2594:2621  "_store[dataKey] = dataValue"
                            update_storage_value_offset_0t_bytes_memory_ptr_to_t_bytes_storage(_441, expr_5968_mpos)
                            let _442_slot := _441
                            let expr_5969_slot := _442_slot
                            /// @src 15:2653:2660  "dataKey"
                            let _443 := var_dataKey_5938
                            let expr_5972 := _443
                            /// @src 15:2662:2671  "dataValue"
                            let _444_mpos := var_dataValue_5940_mpos
                            let expr_5973_mpos := _444_mpos
                            /// @src 15:2641:2672  "DataChanged(dataKey, dataValue)"
                            let _445 := 0xece574603820d07bc9b91f2a932baadf4628aabcb8afba49776529c14a6104b2
                            let _446 := convert_t_bytes32_to_t_bytes32(expr_5972)
                            {
                                let _447 := allocate_unbounded()
                                let _448 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(_447 , expr_5973_mpos)
                                log2(_447, sub(_448, _447) , _445, _446)
                            }/// @src 15:2479:2683  "if (dataKey == _LSP4_TOKEN_TYPE_KEY) {..."
                        }
                        default {
                            /// @src 15:2537:2563  "LSP4TokenTypeNotEditable()"
                            {
                                let _449 := allocate_unbounded()
                                mstore(_449, 35716537209841434264221662613948531281336335562796028310263200452643305553920)
                                let _450 := abi_encode_tuple__to__fromStack(add(_449, 4) )
                                revert(_449, sub(_450, _449))
                            }/// @src 15:2479:2683  "if (dataKey == _LSP4_TOKEN_TYPE_KEY) {..."
                        }
                        /// @src 15:2374:2683  "if (dataKey == _LSP4_TOKEN_SYMBOL_KEY) {..."
                    }
                    default {
                        /// @src 15:2434:2462  "LSP4TokenSymbolNotEditable()"
                        {
                            let _451 := allocate_unbounded()
                            mstore(_451, 53580266808079076096353981774165316074883939947349700072486286785705234399232)
                            let _452 := abi_encode_tuple__to__fromStack(add(_451, 4) )
                            revert(_451, sub(_452, _451))
                        }/// @src 15:2374:2683  "if (dataKey == _LSP4_TOKEN_SYMBOL_KEY) {..."
                    }
                    /// @src 15:2273:2683  "if (dataKey == _LSP4_TOKEN_NAME_KEY) {..."
                }
                default {
                    /// @src 15:2331:2357  "LSP4TokenNameNotEditable()"
                    {
                        let _453 := allocate_unbounded()
                        mstore(_453, 60499340123872990929930291564369663434831580796780442495798408932086429777920)
                        let _454 := abi_encode_tuple__to__fromStack(add(_453, 4) )
                        revert(_453, sub(_454, _453))
                    }/// @src 15:2273:2683  "if (dataKey == _LSP4_TOKEN_NAME_KEY) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_1958() {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun__pause_1970_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 24:2450:2565  "function _pause() internal virtual whenNotPaused {..."
            function fun__pause_1970_inner() {

                /// @src 24:2519:2523  "true"
                let expr_1961 := 0x01
                /// @src 24:2509:2523  "_paused = true"
                update_storage_value_offset_0t_bool_to_t_bool(0x9d, expr_1961)
                let expr_1962 := expr_1961
                /// @src 24:2545:2557  "_msgSender()"
                let expr_1966 := fun__msgSender_7257()
                /// @src 24:2538:2558  "Paused(_msgSender())"
                let _455 := 0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258
                {
                    let _456 := allocate_unbounded()
                    let _457 := abi_encode_tuple_t_address__to_t_address__fromStack(_456 , expr_1966)
                    log1(_456, sub(_457, _456) , _455)
                }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1970
            /// @src 24:2450:2565  "function _pause() internal virtual whenNotPaused {..."
            function fun__pause_1970() {

                modifier_whenNotPaused_1958()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 8144
            /// @src 0:6414:7003  "function _setDataBatch(..."
            function fun__setDataBatch_8144(var_dataKeys_8095_mpos, var_dataValues_8098_mpos) {

                /// @src 0:6544:6552  "dataKeys"
                let _458_mpos := var_dataKeys_8095_mpos
                let expr_8101_mpos := _458_mpos
                /// @src 0:6544:6559  "dataKeys.length"
                let expr_8102 := array_length_t_array$_t_bytes32_$dyn_memory_ptr(expr_8101_mpos)
                /// @src 0:6563:6573  "dataValues"
                let _459_mpos := var_dataValues_8098_mpos
                let expr_8103_mpos := _459_mpos
                /// @src 0:6563:6580  "dataValues.length"
                let expr_8104 := array_length_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_8103_mpos)
                /// @src 0:6544:6580  "dataKeys.length != dataValues.length"
                let expr_8105 := iszero(eq(cleanup_t_uint256(expr_8102), cleanup_t_uint256(expr_8104)))
                /// @src 0:6540:6652  "if (dataKeys.length != dataValues.length) {..."
                if expr_8105 {
                    /// @src 0:6603:6641  "ERC725Y_DataKeysValuesLengthMismatch()"
                    {
                        let _460 := allocate_unbounded()
                        mstore(_460, 27047843669030564349727411857634554122149420805395637481292875208742924189696)
                        let _461 := abi_encode_tuple__to__fromStack(add(_460, 4) )
                        revert(_460, sub(_461, _460))
                    }/// @src 0:6540:6652  "if (dataKeys.length != dataValues.length) {..."
                }
                /// @src 0:6666:6674  "dataKeys"
                let _462_mpos := var_dataKeys_8095_mpos
                let expr_8111_mpos := _462_mpos
                /// @src 0:6666:6681  "dataKeys.length"
                let expr_8112 := array_length_t_array$_t_bytes32_$dyn_memory_ptr(expr_8111_mpos)
                /// @src 0:6685:6686  "0"
                let expr_8113 := 0x00
                /// @src 0:6666:6686  "dataKeys.length == 0"
                let expr_8114 := eq(cleanup_t_uint256(expr_8112), convert_t_rational_0_by_1_to_t_uint256(expr_8113))
                /// @src 0:6662:6754  "if (dataKeys.length == 0) {..."
                if expr_8114 {
                    /// @src 0:6709:6743  "ERC725Y_DataKeysValuesEmptyArray()"
                    {
                        let _463 := allocate_unbounded()
                        mstore(_463, 68685072479129910937226242751072378667620562234429686523287359593288489238528)
                        let _464 := abi_encode_tuple__to__fromStack(add(_463, 4) )
                        revert(_463, sub(_464, _463))
                    }/// @src 0:6662:6754  "if (dataKeys.length == 0) {..."
                }
                /// @src 0:6764:6997  "for (uint256 i = 0; i < dataKeys.length; ) {..."
                for {
                    /// @src 0:6781:6782  "0"
                    let expr_8122 := 0x00
                    /// @src 0:6769:6782  "uint256 i = 0"
                    let var_i_8121 := convert_t_rational_0_by_1_to_t_uint256(expr_8122)
                    } 1 {
                }
                {
                    /// @src 0:6784:6785  "i"
                    let _465 := var_i_8121
                    let expr_8124 := _465
                    /// @src 0:6788:6796  "dataKeys"
                    let _466_mpos := var_dataKeys_8095_mpos
                    let expr_8125_mpos := _466_mpos
                    /// @src 0:6788:6803  "dataKeys.length"
                    let expr_8126 := array_length_t_array$_t_bytes32_$dyn_memory_ptr(expr_8125_mpos)
                    /// @src 0:6784:6803  "i < dataKeys.length"
                    let expr_8127 := lt(cleanup_t_uint256(expr_8124), cleanup_t_uint256(expr_8126))
                    if iszero(expr_8127) { break }
                    /// @src 0:6830:6838  "dataKeys"
                    let _467_mpos := var_dataKeys_8095_mpos
                    let expr_8129_mpos := _467_mpos
                    /// @src 0:6839:6840  "i"
                    let _468 := var_i_8121
                    let expr_8130 := _468
                    /// @src 0:6830:6841  "dataKeys[i]"
                    let _469 := read_from_memoryt_bytes32(memory_array_index_access_t_array$_t_bytes32_$dyn_memory_ptr(expr_8129_mpos, expr_8130))
                    let expr_8131 := _469
                    /// @src 0:6843:6853  "dataValues"
                    let _470_mpos := var_dataValues_8098_mpos
                    let expr_8132_mpos := _470_mpos
                    /// @src 0:6854:6855  "i"
                    let _471 := var_i_8121
                    let expr_8133 := _471
                    /// @src 0:6843:6856  "dataValues[i]"
                    let _472_mpos := mload(memory_array_index_access_t_array$_t_bytes_memory_ptr_$dyn_memory_ptr(expr_8132_mpos, expr_8133))
                    let expr_8134_mpos := _472_mpos
                    fun__setData_5981(expr_8131, expr_8134_mpos)
                    /// @src 0:6969:6972  "++i"
                    let _474 := var_i_8121
                    let _473 := increment_wrapping_t_uint256(_474)
                    var_i_8121 := _473
                    let expr_8138 := _473
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_struct$_Set_$6458_storage_to_t_struct$_Set_$6458_storage_ptr(value) -> converted {
                converted := value
            }

            /// @ast-id 6926
            /// @src 43:10259:10559  "function values(AddressSet storage set) internal view returns (address[] memory) {..."
            function fun_values_6926(var_set_6900_slot) -> var__6904_mpos {
                /// @src 43:10322:10338  "address[] memory"
                let zero_t_array$_t_address_$dyn_memory_ptr_475_mpos := zero_value_for_split_t_array$_t_address_$dyn_memory_ptr()
                var__6904_mpos := zero_t_array$_t_address_$dyn_memory_ptr_475_mpos

                /// @src 43:10383:10386  "set"
                let _476_slot := var_set_6900_slot
                let expr_6912_slot := _476_slot
                /// @src 43:10383:10393  "set._inner"
                let _477 := add(expr_6912_slot, 0)
                let _478_slot := _477
                let expr_6913_slot := _478_slot
                /// @src 43:10375:10394  "_values(set._inner)"
                let _479_slot := convert_t_struct$_Set_$6458_storage_to_t_struct$_Set_$6458_storage_ptr(expr_6913_slot)
                let expr_6914_mpos := fun__values_6648(_479_slot)
                /// @src 43:10350:10394  "bytes32[] memory store = _values(set._inner)"
                let var_store_6910_mpos := expr_6914_mpos
                /// @src 43:10404:10427  "address[] memory result"
                let var_result_6920_mpos
                let zero_t_array$_t_address_$dyn_memory_ptr_480_mpos := zero_value_for_split_t_array$_t_address_$dyn_memory_ptr()
                var_result_6920_mpos := zero_t_array$_t_address_$dyn_memory_ptr_480_mpos
                /// @src 43:10481:10529  "assembly {..."
                {
                    var_result_6920_mpos := var_store_6910_mpos
                }
                /// @src 43:10546:10552  "result"
                let _481_mpos := var_result_6920_mpos
                let expr_6923_mpos := _481_mpos
                /// @src 43:10539:10552  "return result"
                var__6904_mpos := expr_6923_mpos
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_tuple_t_uint256_t_bool_t_bytes_memory_ptr__to_t_uint256_t_bool_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_bool_to_t_bool_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value2,  tail)

            }

            /// @ast-id 1370
            /// @src 19:20421:21303  "function _mint(..."
            function fun__mint_1370(var_to_1283, var_amount_1285, var_force_1287, var_data_1289_mpos) {

                /// @src 19:20564:20566  "to"
                let _482 := var_to_1283
                let expr_1292 := _482
                /// @src 19:20578:20579  "0"
                let expr_1295 := 0x00
                /// @src 19:20570:20580  "address(0)"
                let expr_1296 := convert_t_rational_0_by_1_to_t_address(expr_1295)
                /// @src 19:20564:20580  "to == address(0)"
                let expr_1297 := eq(cleanup_t_address(expr_1292), cleanup_t_address(expr_1296))
                /// @src 19:20560:20645  "if (to == address(0)) {..."
                if expr_1297 {
                    /// @src 19:20603:20634  "LSP7CannotSendWithAddressZero()"
                    {
                        let _483 := allocate_unbounded()
                        mstore(_483, 95363666733499020016883860753997762609705839162368146519871948951056675766272)
                        let _484 := abi_encode_tuple__to__fromStack(add(_483, 4) )
                        revert(_483, sub(_484, _483))
                    }/// @src 19:20560:20645  "if (to == address(0)) {..."
                }
                /// @src 19:20684:20685  "0"
                let expr_1306 := 0x00
                /// @src 19:20676:20686  "address(0)"
                let expr_1307 := convert_t_rational_0_by_1_to_t_address(expr_1306)
                /// @src 19:20688:20690  "to"
                let _485 := var_to_1283
                let expr_1308 := _485
                /// @src 19:20692:20698  "amount"
                let _486 := var_amount_1285
                let expr_1309 := _486
                /// @src 19:20700:20705  "force"
                let _487 := var_force_1287
                let expr_1310 := _487
                /// @src 19:20707:20711  "data"
                let _488_mpos := var_data_1289_mpos
                let expr_1311_mpos := _488_mpos
                fun__beforeTokenTransfer_332(expr_1307, expr_1308, expr_1309, expr_1310, expr_1311_mpos)
                /// @src 19:20773:20779  "amount"
                let _489 := var_amount_1285
                let expr_1315 := _489
                /// @src 19:20754:20779  "_existingTokens += amount"
                let _490 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_1316 := checked_add_t_uint256(_490, expr_1315)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_1316)
                /// @src 19:20817:20823  "amount"
                let _491 := var_amount_1285
                let expr_1321 := _491
                /// @src 19:20790:20809  "_tokenOwnerBalances"
                let _492_slot := 0x9a
                let expr_1318_slot := _492_slot
                /// @src 19:20810:20812  "to"
                let _493 := var_to_1283
                let expr_1319 := _493
                /// @src 19:20790:20813  "_tokenOwnerBalances[to]"
                let _494 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1318_slot,expr_1319)
                /// @src 19:20790:20823  "_tokenOwnerBalances[to] += amount"
                let _495 := read_from_storage_split_offset_0_t_uint256(_494)
                let expr_1322 := checked_add_t_uint256(_495, expr_1321)

                update_storage_value_offset_0t_uint256_to_t_uint256(_494, expr_1322)
                /// @src 19:20872:20882  "msg.sender"
                let expr_1326 := caller()
                /// @src 19:20910:20911  "0"
                let expr_1329 := 0x00
                /// @src 19:20902:20912  "address(0)"
                let expr_1330 := convert_t_rational_0_by_1_to_t_address(expr_1329)
                /// @src 19:20930:20932  "to"
                let _496 := var_to_1283
                let expr_1331 := _496
                /// @src 19:20954:20960  "amount"
                let _497 := var_amount_1285
                let expr_1332 := _497
                /// @src 19:20981:20986  "force"
                let _498 := var_force_1287
                let expr_1333 := _498
                /// @src 19:21006:21010  "data"
                let _499_mpos := var_data_1289_mpos
                let expr_1334_mpos := _499_mpos
                /// @src 19:20839:21021  "Transfer({..."
                let _500 := 0x3997e418d2cef0b3b0e907b1e39605c3f7d32dbd061e82ea5b4a770d46a160a6
                let _501 := convert_t_address_to_t_address(expr_1326)
                let _502 := convert_t_address_to_t_address(expr_1330)
                let _503 := convert_t_address_to_t_address(expr_1331)
                {
                    let _504 := allocate_unbounded()
                    let _505 := abi_encode_tuple_t_uint256_t_bool_t_bytes_memory_ptr__to_t_uint256_t_bool_t_bytes_memory_ptr__fromStack(_504 , expr_1332, expr_1333, expr_1334_mpos)
                    log4(_504, sub(_505, _504) , _500, _501, _502, _503)
                }/// @src 19:21060:21061  "0"
                let expr_1340 := 0x00
                /// @src 19:21052:21062  "address(0)"
                let expr_1341 := convert_t_rational_0_by_1_to_t_address(expr_1340)
                /// @src 19:21064:21066  "to"
                let _506 := var_to_1283
                let expr_1342 := _506
                /// @src 19:21068:21074  "amount"
                let _507 := var_amount_1285
                let expr_1343 := _507
                /// @src 19:21076:21081  "force"
                let _508 := var_force_1287
                let expr_1344 := _508
                /// @src 19:21083:21087  "data"
                let _509_mpos := var_data_1289_mpos
                let expr_1345_mpos := _509_mpos
                fun__afterTokenTransfer_389(expr_1341, expr_1342, expr_1343, expr_1344, expr_1345_mpos)
                /// @src 19:21147:21157  "msg.sender"
                let expr_1353 := caller()
                /// @src 19:21179:21180  "0"
                let expr_1356 := 0x00
                /// @src 19:21171:21181  "address(0)"
                let expr_1357 := convert_t_rational_0_by_1_to_t_address(expr_1356)
                /// @src 19:21195:21197  "to"
                let _510 := var_to_1283
                let expr_1358 := _510
                /// @src 19:21211:21217  "amount"
                let _511 := var_amount_1285
                let expr_1359 := _511
                /// @src 19:21231:21235  "data"
                let _512_mpos := var_data_1289_mpos
                let expr_1360_mpos := _512_mpos
                /// @src 19:21123:21245  "abi.encode(..."

                let expr_1361_mpos := allocate_unbounded()
                let _513 := add(expr_1361_mpos, 0x20)

                let _514 := abi_encode_tuple_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_513, expr_1353, expr_1357, expr_1358, expr_1359, expr_1360_mpos)
                mstore(expr_1361_mpos, sub(_514, add(expr_1361_mpos, 0x20)))
                finalize_allocation(expr_1361_mpos, sub(_514, expr_1361_mpos))
                /// @src 19:21099:21245  "bytes memory lsp1Data = abi.encode(..."
                let var_lsp1Data_1349_mpos := expr_1361_mpos
                /// @src 19:21276:21278  "to"
                let _515 := var_to_1283
                let expr_1364 := _515
                /// @src 19:21280:21285  "force"
                let _516 := var_force_1287
                let expr_1365 := _516
                /// @src 19:21287:21295  "lsp1Data"
                let _517_mpos := var_lsp1Data_1349_mpos
                let expr_1366_mpos := _517_mpos
                fun__notifyTokenReceiver_1825(expr_1364, expr_1365, expr_1366_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_t_bytes4_to_t_bytes4_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes4(value))
            }

            function abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes4_to_t_bytes4_fromStack(value0,  add(headStart, 0))

            }

            function shift_left_96(value) -> newValue {
                newValue :=

                shl(96, value)

            }

            function leftAlign_t_uint160(value) -> aligned {
                aligned := shift_left_96(value)
            }

            function leftAlign_t_address(value) -> aligned {
                aligned := leftAlign_t_uint160(value)
            }

            function abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_address(cleanup_t_address(value)))
            }

            function leftAlign_t_uint256(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr_t_address_t_uint256__to_t_bytes_memory_ptr_t_address_t_uint256__nonPadded_inplace_fromStack(pos , value0, value1, value2, value3) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 20)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value3,  pos)
                pos := add(pos, 32)

                end := pos
            }

            /// @ast-id 628
            /// @src 19:6998:8029  "function _fallbackLSP17Extendable(..."
            function fun__fallbackLSP17Extendable_628(var_callData_576_offset, var_callData_576_length) -> var__580_mpos {
                /// @src 19:7106:7118  "bytes memory"
                let zero_t_bytes_memory_ptr_518_mpos := zero_value_for_split_t_bytes_memory_ptr()
                var__580_mpos := zero_t_bytes_memory_ptr_518_mpos

                /// @src 19:7226:7233  "msg.sig"
                let expr_586 := and(calldataload(0), 0xffffffff00000000000000000000000000000000000000000000000000000000)
                /// @src 19:7197:7234  "_getExtensionAndForwardValue(msg.sig)"
                let expr_587_component_1, expr_587_component_2 := fun__getExtensionAndForwardValue_679(expr_586)
                /// @src 19:7173:7234  "(address extension, ) = _getExtensionAndForwardValue(msg.sig)"
                let var_extension_583 := expr_587_component_1
                /// @src 19:7294:7303  "extension"
                let _519 := var_extension_583
                let expr_589 := _519
                /// @src 19:7315:7316  "0"
                let expr_592 := 0x00
                /// @src 19:7307:7317  "address(0)"
                let expr_593 := convert_t_rational_0_by_1_to_t_address(expr_592)
                /// @src 19:7294:7317  "extension == address(0)"
                let expr_594 := eq(cleanup_t_address(expr_589), cleanup_t_address(expr_593))
                /// @src 19:7290:7382  "if (extension == address(0))..."
                if expr_594 {
                    /// @src 19:7374:7381  "msg.sig"
                    let expr_597 := and(calldataload(0), 0xffffffff00000000000000000000000000000000000000000000000000000000)
                    /// @src 19:7338:7382  "NoExtensionFoundForFunctionSelector(msg.sig)"
                    {
                        let _520 := allocate_unbounded()
                        mstore(_520, 84679756352121147147617872271101989497187916654153693849390943884573090512896)
                        let _521 := abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(add(_520, 4) , expr_597)
                        revert(_520, sub(_521, _520))
                    }/// @src 19:7290:7382  "if (extension == address(0))..."
                }
                /// @src 19:7431:7440  "extension"
                let _522 := var_extension_583
                let expr_605 := _522
                /// @src 19:7431:7445  "extension.call"
                let expr_606_address := expr_605
                /// @src 19:7453:7462  "msg.value"
                let expr_608 := callvalue()
                /// @src 19:7431:7463  "extension.call{value: msg.value}"
                let expr_609_address := expr_606_address
                let expr_609_value := expr_608
                /// @src 19:7494:7502  "callData"
                let _523_offset := var_callData_576_offset
                let _523_length := var_callData_576_length
                let expr_612_offset := _523_offset
                let expr_612_length := _523_length
                /// @src 19:7504:7514  "msg.sender"
                let expr_614 := caller()
                /// @src 19:7516:7525  "msg.value"
                let expr_616 := callvalue()
                /// @src 19:7477:7526  "abi.encodePacked(callData, msg.sender, msg.value)"

                let expr_617_mpos := allocate_unbounded()
                let _524 := add(expr_617_mpos, 0x20)

                let _525 := abi_encode_tuple_packed_t_bytes_calldata_ptr_t_address_t_uint256__to_t_bytes_memory_ptr_t_address_t_uint256__nonPadded_inplace_fromStack(_524, expr_612_offset, expr_612_length, expr_614, expr_616)
                mstore(expr_617_mpos, sub(_525, add(expr_617_mpos, 0x20)))
                finalize_allocation(expr_617_mpos, sub(_525, expr_617_mpos))
                /// @src 19:7431:7536  "extension.call{value: msg.value}(..."

                let _526 := add(expr_617_mpos, 0x20)
                let _527 := mload(expr_617_mpos)

                let expr_618_component_1 := call(gas(), expr_609_address,  expr_609_value,  _526, _527, 0, 0)
                let expr_618_component_2_mpos := extract_returndata()
                /// @src 19:7393:7536  "(bool success, bytes memory result) = extension.call{value: msg.value}(..."
                let var_success_602 := expr_618_component_1
                let var_result_604_mpos := expr_618_component_2_mpos
                /// @src 19:7551:7558  "success"
                let _528 := var_success_602
                let expr_620 := _528
                /// @src 19:7547:8023  "if (success) {..."
                switch expr_620
                case 0 {
                    /// @src 19:7879:8013  "assembly {..."
                    {
                        let usr$resultdata_size := mload(var_result_604_mpos)
                        revert(add(var_result_604_mpos, 32), usr$resultdata_size)
                    }
                    /// @src 19:7547:8023  "if (success) {..."
                }
                default {
                    /// @src 19:7581:7587  "result"
                    let _529_mpos := var_result_604_mpos
                    let expr_621_mpos := _529_mpos
                    /// @src 19:7574:7587  "return result"
                    var__580_mpos := expr_621_mpos
                    leave
                    /// @src 19:7547:8023  "if (success) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_2836986475_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2836986475_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_2836986475_by_1(value)))
            }

            /// @src 10:134:192  "bytes4 constant _INTERFACEID_LSP17_EXTENDABLE = 0xa918fa6b"
            function constant__INTERFACEID_LSP17_EXTENDABLE_4966() -> ret {
                /// @src 10:182:192  "0xa918fa6b"
                let expr_4965 := 0xa918fa6b
                let _532 := convert_t_rational_2836986475_by_1_to_t_bytes4(expr_4965)

                ret := _532
            }

            /// @ast-id 5021
            /// @src 12:998:1235  "function supportsInterface(..."
            function fun_supportsInterface_5021(var_interfaceId_5005) -> var__5009 {
                /// @src 12:1097:1101  "bool"
                let zero_t_bool_530 := zero_value_for_split_t_bool()
                var__5009 := zero_t_bool_530

                /// @src 12:1132:1143  "interfaceId"
                let _531 := var_interfaceId_5005
                let expr_5011 := _531
                /// @src 12:1147:1176  "_INTERFACEID_LSP17_EXTENDABLE"
                let expr_5012 := constant__INTERFACEID_LSP17_EXTENDABLE_4966()
                /// @src 12:1132:1176  "interfaceId == _INTERFACEID_LSP17_EXTENDABLE"
                let expr_5013 := eq(cleanup_t_bytes4(expr_5011), cleanup_t_bytes4(expr_5012))
                /// @src 12:1132:1228  "interfaceId == _INTERFACEID_LSP17_EXTENDABLE ||..."
                let expr_5018 := expr_5013
                if iszero(expr_5018) {
                    /// @src 12:1216:1227  "interfaceId"
                    let _533 := var_interfaceId_5005
                    let expr_5016 := _533
                    /// @src 12:1192:1228  "super.supportsInterface(interfaceId)"
                    let expr_5017 := fun_supportsInterface_7534(expr_5016)
                    /// @src 12:1132:1228  "interfaceId == _INTERFACEID_LSP17_EXTENDABLE ||..."
                    expr_5018 := expr_5017
                }
                /// @src 12:1113:1228  "return..."
                var__5009 := expr_5018
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 5053
            /// @src 12:1658:2115  "function _supportsInterfaceInERC165Extension(..."
            function fun__supportsInterfaceInERC165Extension_5053(var_interfaceId_5024) -> var__5027 {
                /// @src 12:1768:1772  "bool"
                let zero_t_bool_534 := zero_value_for_split_t_bool()
                var__5027 := zero_t_bool_534

                /// @src 12:1856:1880  "ERC165.supportsInterface"
                let expr_5033_functionIdentifier := 1
                /// @src 12:1856:1889  "ERC165.supportsInterface.selector"
                let expr_5034 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 12:1814:1899  "_getExtensionAndForwardValue(..."
                let expr_5035_component_1, expr_5035_component_2 := fun__getExtensionAndForwardValue_679(expr_5034)
                /// @src 12:1784:1899  "(address erc165Extension, ) = _getExtensionAndForwardValue(..."
                let var_erc165Extension_5030 := expr_5035_component_1
                /// @src 12:1913:1928  "erc165Extension"
                let _535 := var_erc165Extension_5030
                let expr_5037 := _535
                /// @src 12:1940:1941  "0"
                let expr_5040 := 0x00
                /// @src 12:1932:1942  "address(0)"
                let expr_5041 := convert_t_rational_0_by_1_to_t_address(expr_5040)
                /// @src 12:1913:1942  "erc165Extension == address(0)"
                let expr_5042 := eq(cleanup_t_address(expr_5037), cleanup_t_address(expr_5041))
                /// @src 12:1909:1956  "if (erc165Extension == address(0)) return false"
                if expr_5042 {
                    /// @src 12:1951:1956  "false"
                    let expr_5043 := 0x00
                    /// @src 12:1944:1956  "return false"
                    var__5027 := expr_5043
                    leave
                    /// @src 12:1909:1956  "if (erc165Extension == address(0)) return false"
                }
                /// @src 12:1986:1999  "ERC165Checker"
                let expr_5046_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol:ERC165Checker")
                /// @src 12:2050:2065  "erc165Extension"
                let _536 := var_erc165Extension_5030
                let expr_5048 := _536
                /// @src 12:2083:2094  "interfaceId"
                let _537 := var_interfaceId_5024
                let expr_5049 := _537
                /// @src 12:1986:2108  "ERC165Checker.supportsERC165InterfaceUnchecked(..."
                let expr_5050 := fun_supportsERC165InterfaceUnchecked_6446(expr_5048, expr_5049)
                /// @src 12:1967:2108  "return..."
                var__5027 := expr_5050
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_address_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_uint160_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint256_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_uint256(value)))
            }

            /// @ast-id 6827
            /// @src 43:8623:8779  "function remove(AddressSet storage set, address value) internal returns (bool) {..."
            function fun_remove_6827(var_set_6804_slot, var_value_6806) -> var__6809 {
                /// @src 43:8696:8700  "bool"
                let zero_t_bool_538 := zero_value_for_split_t_bool()
                var__6809 := zero_t_bool_538

                /// @src 43:8727:8730  "set"
                let _539_slot := var_set_6804_slot
                let expr_6812_slot := _539_slot
                /// @src 43:8727:8737  "set._inner"
                let _540 := add(expr_6812_slot, 0)
                let _541_slot := _540
                let expr_6813_slot := _541_slot
                /// @src 43:8763:8768  "value"
                let _542 := var_value_6806
                let expr_6820 := _542
                /// @src 43:8755:8769  "uint160(value)"
                let expr_6821 := convert_t_address_to_t_uint160(expr_6820)
                /// @src 43:8747:8770  "uint256(uint160(value))"
                let expr_6822 := convert_t_uint160_to_t_uint256(expr_6821)
                /// @src 43:8739:8771  "bytes32(uint256(uint160(value)))"
                let expr_6823 := convert_t_uint256_to_t_bytes32(expr_6822)
                /// @src 43:8719:8772  "_remove(set._inner, bytes32(uint256(uint160(value))))"
                let _543_slot := convert_t_struct$_Set_$6458_storage_to_t_struct$_Set_$6458_storage_ptr(expr_6813_slot)
                let expr_6824 := fun__remove_6584(_543_slot, expr_6823)
                /// @src 43:8712:8772  "return _remove(set._inner, bytes32(uint256(uint160(value))))"
                var__6809 := expr_6824
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 6800
            /// @src 43:8305:8455  "function add(AddressSet storage set, address value) internal returns (bool) {..."
            function fun_add_6800(var_set_6777_slot, var_value_6779) -> var__6782 {
                /// @src 43:8375:8379  "bool"
                let zero_t_bool_544 := zero_value_for_split_t_bool()
                var__6782 := zero_t_bool_544

                /// @src 43:8403:8406  "set"
                let _545_slot := var_set_6777_slot
                let expr_6785_slot := _545_slot
                /// @src 43:8403:8413  "set._inner"
                let _546 := add(expr_6785_slot, 0)
                let _547_slot := _546
                let expr_6786_slot := _547_slot
                /// @src 43:8439:8444  "value"
                let _548 := var_value_6779
                let expr_6793 := _548
                /// @src 43:8431:8445  "uint160(value)"
                let expr_6794 := convert_t_address_to_t_uint160(expr_6793)
                /// @src 43:8423:8446  "uint256(uint160(value))"
                let expr_6795 := convert_t_uint160_to_t_uint256(expr_6794)
                /// @src 43:8415:8447  "bytes32(uint256(uint160(value)))"
                let expr_6796 := convert_t_uint256_to_t_bytes32(expr_6795)
                /// @src 43:8398:8448  "_add(set._inner, bytes32(uint256(uint160(value))))"
                let _549_slot := convert_t_struct$_Set_$6458_storage_to_t_struct$_Set_$6458_storage_ptr(expr_6786_slot)
                let expr_6797 := fun__add_6500(_549_slot, expr_6796)
                /// @src 43:8391:8448  "return _add(set._inner, bytes32(uint256(uint160(value))))"
                var__6782 := expr_6797
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_1807051284_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1807051284_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_1807051284_by_1(value)))
            }

            /// @src 8:92:138  "bytes4 constant _INTERFACEID_LSP1 = 0x6bb56a14"
            function constant__INTERFACEID_LSP1_4867() -> ret {
                /// @src 8:128:138  "0x6bb56a14"
                let expr_4866 := 0x6bb56a14
                let _551 := convert_t_rational_1807051284_by_1_to_t_bytes4(expr_4866)

                ret := _551
            }

            function convert_t_uint160_to_t_contract$_ILSP1UniversalReceiver_$4862(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ILSP1UniversalReceiver_$4862(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ILSP1UniversalReceiver_$4862(value)
            }

            function convert_t_contract$_ILSP1UniversalReceiver_$4862_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_available_length_t_bytes_memory_ptr_fromMemory(src, length, end) -> array {
                array := allocate_memory(array_allocation_size_t_bytes_memory_ptr(length))
                mstore(array, length)
                let dst := add(array, 0x20)
                if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
                copy_memory_to_memory_with_cleanup(src, dst, length)
            }

            // bytes
            function abi_decode_t_bytes_memory_ptr_fromMemory(offset, end) -> array {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                let length := mload(offset)
                array := abi_decode_available_length_t_bytes_memory_ptr_fromMemory(add(offset, 0x20), length, end)
            }

            function abi_decode_tuple_t_bytes_memory_ptr_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := mload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0 := abi_decode_t_bytes_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes32_t_bytes_memory_ptr__to_t_bytes32_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value1,  tail)

            }

            /// @ast-id 4917
            /// @src 9:1352:1713  "function notifyUniversalReceiver(..."
            function fun_notifyUniversalReceiver_4917(var_lsp1Implementation_4895, var_typeId_4897, var_data_4899_mpos) {

                /// @src 9:1514:1532  "lsp1Implementation"
                let _550 := var_lsp1Implementation_4895
                let expr_4902 := _550
                /// @src 9:1514:1565  "lsp1Implementation.supportsERC165InterfaceUnchecked"
                let expr_4903_self := expr_4902
                /// @src 9:1583:1600  "_INTERFACEID_LSP1"
                let expr_4904 := constant__INTERFACEID_LSP1_4867()
                /// @src 9:1514:1614  "lsp1Implementation.supportsERC165InterfaceUnchecked(..."
                let expr_4905 := fun_supportsERC165InterfaceUnchecked_6446(expr_4903_self, expr_4904)
                /// @src 9:1497:1707  "if (..."
                if expr_4905 {
                    /// @src 9:1645:1663  "lsp1Implementation"
                    let _552 := var_lsp1Implementation_4895
                    let expr_4907 := _552
                    /// @src 9:1639:1664  "ILSP1(lsp1Implementation)"
                    let expr_4908_address := convert_t_address_to_t_contract$_ILSP1UniversalReceiver_$4862(expr_4907)
                    /// @src 9:1639:1682  "ILSP1(lsp1Implementation).universalReceiver"
                    let expr_4909_address := convert_t_contract$_ILSP1UniversalReceiver_$4862_to_t_address(expr_4908_address)
                    let expr_4909_functionSelector := 0x6bb56a14
                    /// @src 9:1683:1689  "typeId"
                    let _553 := var_typeId_4897
                    let expr_4910 := _553
                    /// @src 9:1691:1695  "data"
                    let _554_mpos := var_data_4899_mpos
                    let expr_4911_mpos := _554_mpos
                    /// @src 9:1639:1696  "ILSP1(lsp1Implementation).universalReceiver(typeId, data)"

                    // storage for arguments and returned data
                    let _555 := allocate_unbounded()
                    mstore(_555, shift_left_224(expr_4909_functionSelector))
                    let _556 := abi_encode_tuple_t_bytes32_t_bytes_memory_ptr__to_t_bytes32_t_bytes_memory_ptr__fromStack(add(_555, 4) , expr_4910, expr_4911_mpos)

                    let _557 := call(gas(), expr_4909_address,  0,  _555, sub(_556, _555), _555, 0)

                    if iszero(_557) { revert_forward_1() }

                    let expr_4912_mpos
                    if _557 {

                        let _558 := returndatasize()
                        returndatacopy(_555, 0, _558)

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_555, _558)

                        // decode return parameters from external try-call into retVars
                        expr_4912_mpos :=  abi_decode_tuple_t_bytes_memory_ptr_fromMemory(_555, add(_555, _558))
                    }
                    /// @src 9:1497:1707  "if (..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7257
            /// @src 27:886:982  "function _msgSender() internal view virtual returns (address) {..."
            function fun__msgSender_7257() -> var__7251 {
                /// @src 27:939:946  "address"
                let zero_t_address_559 := zero_value_for_split_t_address()
                var__7251 := zero_t_address_559

                /// @src 27:965:975  "msg.sender"
                let expr_7254 := caller()
                /// @src 27:958:975  "return msg.sender"
                var__7251 := expr_7254
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function store_literal_in_memory_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a(memPtr) {

                mstore(add(memPtr, 0), "Pausable: not paused")

            }

            function abi_encode_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 20)
                store_literal_in_memory_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 1954
            /// @src 24:2209:2315  "function _requirePaused() internal view virtual {..."
            function fun__requirePaused_1954() {

                /// @src 24:2275:2283  "paused()"
                let expr_1949 := fun_paused_1931()
                /// @src 24:2267:2308  "require(paused(), \"Pausable: not paused\")"
                require_helper_t_stringliteral_0d1d997348c4b502650619e51f7d09f80514d98b6993be5051d07f703984619a(expr_1949)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_encode_tuple_t_uint256_t_address_t_uint256__to_t_uint256_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @ast-id 1474
            /// @src 19:22762:23793  "function _burn(..."
            function fun__burn_1474(var_from_1373, var_amount_1375, var_data_1377_mpos) {

                /// @src 19:22887:22891  "from"
                let _560 := var_from_1373
                let expr_1380 := _560
                /// @src 19:22903:22904  "0"
                let expr_1383 := 0x00
                /// @src 19:22895:22905  "address(0)"
                let expr_1384 := convert_t_rational_0_by_1_to_t_address(expr_1383)
                /// @src 19:22887:22905  "from == address(0)"
                let expr_1385 := eq(cleanup_t_address(expr_1380), cleanup_t_address(expr_1384))
                /// @src 19:22883:22970  "if (from == address(0)) {..."
                if expr_1385 {
                    /// @src 19:22928:22959  "LSP7CannotSendWithAddressZero()"
                    {
                        let _561 := allocate_unbounded()
                        mstore(_561, 95363666733499020016883860753997762609705839162368146519871948951056675766272)
                        let _562 := abi_encode_tuple__to__fromStack(add(_561, 4) )
                        revert(_561, sub(_562, _561))
                    }/// @src 19:22883:22970  "if (from == address(0)) {..."
                }
                /// @src 19:23001:23005  "from"
                let _563 := var_from_1373
                let expr_1392 := _563
                /// @src 19:23015:23016  "0"
                let expr_1395 := 0x00
                /// @src 19:23007:23017  "address(0)"
                let expr_1396 := convert_t_rational_0_by_1_to_t_address(expr_1395)
                /// @src 19:23019:23025  "amount"
                let _564 := var_amount_1375
                let expr_1397 := _564
                /// @src 19:23027:23032  "false"
                let expr_1398 := 0x00
                /// @src 19:23034:23038  "data"
                let _565_mpos := var_data_1377_mpos
                let expr_1399_mpos := _565_mpos
                fun__beforeTokenTransfer_332(expr_1392, expr_1396, expr_1397, expr_1398, expr_1399_mpos)
                /// @src 19:23068:23087  "_tokenOwnerBalances"
                let _566_slot := 0x9a
                let expr_1404_slot := _566_slot
                /// @src 19:23088:23092  "from"
                let _567 := var_from_1373
                let expr_1405 := _567
                /// @src 19:23068:23093  "_tokenOwnerBalances[from]"
                let _568 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1404_slot,expr_1405)
                let _569 := read_from_storage_split_offset_0_t_uint256(_568)
                let expr_1406 := _569
                /// @src 19:23050:23093  "uint256 balance = _tokenOwnerBalances[from]"
                let var_balance_1403 := expr_1406
                /// @src 19:23107:23113  "amount"
                let _570 := var_amount_1375
                let expr_1408 := _570
                /// @src 19:23116:23123  "balance"
                let _571 := var_balance_1403
                let expr_1409 := _571
                /// @src 19:23107:23123  "amount > balance"
                let expr_1410 := gt(cleanup_t_uint256(expr_1408), cleanup_t_uint256(expr_1409))
                /// @src 19:23103:23204  "if (amount > balance) {..."
                if expr_1410 {
                    /// @src 19:23171:23178  "balance"
                    let _572 := var_balance_1403
                    let expr_1412 := _572
                    /// @src 19:23180:23184  "from"
                    let _573 := var_from_1373
                    let expr_1413 := _573
                    /// @src 19:23186:23192  "amount"
                    let _574 := var_amount_1375
                    let expr_1414 := _574
                    /// @src 19:23146:23193  "LSP7AmountExceedsBalance(balance, from, amount)"
                    {
                        let _575 := allocate_unbounded()
                        mstore(_575, 3993911445783216945073236967830432718282899366636074307589795800915948601344)
                        let _576 := abi_encode_tuple_t_uint256_t_address_t_uint256__to_t_uint256_t_address_t_uint256__fromStack(add(_575, 4) , expr_1412, expr_1413, expr_1414)
                        revert(_575, sub(_576, _575))
                    }/// @src 19:23103:23204  "if (amount > balance) {..."
                }
                /// @src 19:23262:23268  "amount"
                let _577 := var_amount_1375
                let expr_1420 := _577
                /// @src 19:23243:23268  "_existingTokens -= amount"
                let _578 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_1421 := checked_sub_t_uint256(_578, expr_1420)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_1421)
                /// @src 19:23308:23314  "amount"
                let _579 := var_amount_1375
                let expr_1426 := _579
                /// @src 19:23279:23298  "_tokenOwnerBalances"
                let _580_slot := 0x9a
                let expr_1423_slot := _580_slot
                /// @src 19:23299:23303  "from"
                let _581 := var_from_1373
                let expr_1424 := _581
                /// @src 19:23279:23304  "_tokenOwnerBalances[from]"
                let _582 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1423_slot,expr_1424)
                /// @src 19:23279:23314  "_tokenOwnerBalances[from] -= amount"
                let _583 := read_from_storage_split_offset_0_t_uint256(_582)
                let expr_1427 := checked_sub_t_uint256(_583, expr_1426)

                update_storage_value_offset_0t_uint256_to_t_uint256(_582, expr_1427)
                /// @src 19:23363:23373  "msg.sender"
                let expr_1431 := caller()
                /// @src 19:23393:23397  "from"
                let _584 := var_from_1373
                let expr_1432 := _584
                /// @src 19:23423:23424  "0"
                let expr_1435 := 0x00
                /// @src 19:23415:23425  "address(0)"
                let expr_1436 := convert_t_rational_0_by_1_to_t_address(expr_1435)
                /// @src 19:23447:23453  "amount"
                let _585 := var_amount_1375
                let expr_1437 := _585
                /// @src 19:23474:23479  "false"
                let expr_1438 := 0x00
                /// @src 19:23499:23503  "data"
                let _586_mpos := var_data_1377_mpos
                let expr_1439_mpos := _586_mpos
                /// @src 19:23330:23514  "Transfer({..."
                let _587 := 0x3997e418d2cef0b3b0e907b1e39605c3f7d32dbd061e82ea5b4a770d46a160a6
                let _588 := convert_t_address_to_t_address(expr_1431)
                let _589 := convert_t_address_to_t_address(expr_1432)
                let _590 := convert_t_address_to_t_address(expr_1436)
                {
                    let _591 := allocate_unbounded()
                    let _592 := abi_encode_tuple_t_uint256_t_bool_t_bytes_memory_ptr__to_t_uint256_t_bool_t_bytes_memory_ptr__fromStack(_591 , expr_1437, expr_1438, expr_1439_mpos)
                    log4(_591, sub(_592, _591) , _587, _588, _589, _590)
                }/// @src 19:23545:23549  "from"
                let _593 := var_from_1373
                let expr_1443 := _593
                /// @src 19:23559:23560  "0"
                let expr_1446 := 0x00
                /// @src 19:23551:23561  "address(0)"
                let expr_1447 := convert_t_rational_0_by_1_to_t_address(expr_1446)
                /// @src 19:23563:23569  "amount"
                let _594 := var_amount_1375
                let expr_1448 := _594
                /// @src 19:23571:23576  "false"
                let expr_1449 := 0x00
                /// @src 19:23578:23582  "data"
                let _595_mpos := var_data_1377_mpos
                let expr_1450_mpos := _595_mpos
                fun__afterTokenTransfer_389(expr_1443, expr_1447, expr_1448, expr_1449, expr_1450_mpos)
                /// @src 19:23642:23652  "msg.sender"
                let expr_1458 := caller()
                /// @src 19:23666:23670  "from"
                let _596 := var_from_1373
                let expr_1459 := _596
                /// @src 19:23692:23693  "0"
                let expr_1462 := 0x00
                /// @src 19:23684:23694  "address(0)"
                let expr_1463 := convert_t_rational_0_by_1_to_t_address(expr_1462)
                /// @src 19:23708:23714  "amount"
                let _597 := var_amount_1375
                let expr_1464 := _597
                /// @src 19:23728:23732  "data"
                let _598_mpos := var_data_1377_mpos
                let expr_1465_mpos := _598_mpos
                /// @src 19:23618:23742  "abi.encode(..."

                let expr_1466_mpos := allocate_unbounded()
                let _599 := add(expr_1466_mpos, 0x20)

                let _600 := abi_encode_tuple_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_599, expr_1458, expr_1459, expr_1463, expr_1464, expr_1465_mpos)
                mstore(expr_1466_mpos, sub(_600, add(expr_1466_mpos, 0x20)))
                finalize_allocation(expr_1466_mpos, sub(_600, expr_1466_mpos))
                /// @src 19:23594:23742  "bytes memory lsp1Data = abi.encode(..."
                let var_lsp1Data_1454_mpos := expr_1466_mpos
                /// @src 19:23771:23775  "from"
                let _601 := var_from_1373
                let expr_1469 := _601
                /// @src 19:23777:23785  "lsp1Data"
                let _602_mpos := var_lsp1Data_1454_mpos
                let expr_1470_mpos := _602_mpos
                fun__notifyTokenSender_1779(expr_1469, expr_1470_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_1899() {

                /// @src 23:5374:5387  "_initializing"
                let _603 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7168 := _603
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___Pausable_init_unchained_1906_inner()

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 24:1187:1282  "function __Pausable_init_unchained() internal onlyInitializing {..."
            function fun___Pausable_init_unchained_1906_inner() {

                /// @src 24:1270:1275  "false"
                let expr_1902 := 0x00
                /// @src 24:1260:1275  "_paused = false"
                update_storage_value_offset_0t_bool_to_t_bool(0x9d, expr_1902)
                let expr_1903 := expr_1902

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1906
            /// @src 24:1187:1282  "function __Pausable_init_unchained() internal onlyInitializing {..."
            function fun___Pausable_init_unchained_1906() {

                modifier_onlyInitializing_1899()
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_5889(var_name__5880_mpos, var_symbol__5882_mpos, var_initialOwner__5884, var_lsp4TokenType__5886) {

                /// @src 23:5374:5387  "_initializing"
                let _604 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7168 := _604
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun__initialize_5935_inner(var_name__5880_mpos, var_symbol__5882_mpos, var_initialOwner__5884, var_lsp4TokenType__5886)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_106291344305384829327323777171026204092068863755428044681309751323096797562892_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_106291344305384829327323777171026204092068863755428044681309751323096797562892_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_106291344305384829327323777171026204092068863755428044681309751323096797562892_by_1(value)))
            }

            /// @src 14:339:454  "bytes32 constant _LSP4_SUPPORTED_STANDARDS_KEY = 0xeafec4d89fa9619884b60000a4d96624a38f7ac2d8d9a604ecf07c12c77e480c"
            function constant__LSP4_SUPPORTED_STANDARDS_KEY_404() -> ret {
                /// @src 14:388:454  "0xeafec4d89fa9619884b60000a4d96624a38f7ac2d8d9a604ecf07c12c77e480c"
                let expr_403 := 0xeafec4d89fa9619884b60000a4d96624a38f7ac2d8d9a604ecf07c12c77e480c
                let _606 := convert_t_rational_106291344305384829327323777171026204092068863755428044681309751323096797562892_by_1_to_t_bytes32(expr_403)

                ret := _606
            }

            function store_literal_in_memory_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278(memPtr) {

                mstore(add(memPtr, 0), 0xa4d9662400000000000000000000000000000000000000000000000000000000)

            }

            function copy_literal_to_memory_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278() -> memPtr {
                memPtr := allocate_memory_array_t_string_memory_ptr(4)
                store_literal_in_memory_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278(add(memPtr, 32))
            }

            function convert_t_stringliteral_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278_to_t_bytes_memory_ptr() -> converted {
                converted := copy_literal_to_memory_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278()
            }

            /// @src 14:498:560  "bytes constant _LSP4_SUPPORTED_STANDARDS_VALUE = hex\"a4d96624\""
            function constant__LSP4_SUPPORTED_STANDARDS_VALUE_407() -> ret_mpos {
                /// @src 14:547:560  "hex\"a4d96624\""
                let _607_mpos := convert_t_stringliteral_8031d7c868dca389fb4e96c3f4df5650d21c8966ab67d753610d01e72b8a0278_to_t_bytes_memory_ptr()

                ret_mpos := _607_mpos
            }

            function convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(value) -> converted  {
                converted := value

            }

            /// @src 15:1249:1968  "function _initialize(..."
            function fun__initialize_5935_inner(var_name__5880_mpos, var_symbol__5882_mpos, var_initialOwner__5884, var_lsp4TokenType__5886) {

                /// @src 15:1475:1488  "initialOwner_"
                let _605 := var_initialOwner__5884
                let expr_5894 := _605
                fun__initialize_7945(expr_5894)
                /// @src 15:1602:1631  "_LSP4_SUPPORTED_STANDARDS_KEY"
                let expr_5900 := constant__LSP4_SUPPORTED_STANDARDS_KEY_404()
                /// @src 15:1645:1676  "_LSP4_SUPPORTED_STANDARDS_VALUE"
                let expr_5901_mpos := constant__LSP4_SUPPORTED_STANDARDS_VALUE_407()
                fun__setData_8091(expr_5900, expr_5901_mpos)
                /// @src 15:1726:1746  "_LSP4_TOKEN_NAME_KEY"
                let expr_5907 := constant__LSP4_TOKEN_NAME_KEY_410()
                /// @src 15:1754:1759  "name_"
                let _608_mpos := var_name__5880_mpos
                let expr_5910_mpos := _608_mpos
                /// @src 15:1748:1760  "bytes(name_)"
                let expr_5911_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_5910_mpos)
                fun__setData_8091(expr_5907, expr_5911_mpos)
                /// @src 15:1800:1822  "_LSP4_TOKEN_SYMBOL_KEY"
                let expr_5917 := constant__LSP4_TOKEN_SYMBOL_KEY_413()
                /// @src 15:1830:1837  "symbol_"
                let _609_mpos := var_symbol__5882_mpos
                let expr_5920_mpos := _609_mpos
                /// @src 15:1824:1838  "bytes(symbol_)"
                let expr_5921_mpos := convert_array_t_string_memory_ptr_to_t_bytes_memory_ptr(expr_5920_mpos)
                fun__setData_8091(expr_5917, expr_5921_mpos)
                /// @src 15:1891:1911  "_LSP4_TOKEN_TYPE_KEY"
                let expr_5927 := constant__LSP4_TOKEN_TYPE_KEY_416()
                /// @src 15:1936:1950  "lsp4TokenType_"
                let _610 := var_lsp4TokenType__5886
                let expr_5930 := _610
                /// @src 15:1925:1951  "abi.encode(lsp4TokenType_)"

                let expr_5931_mpos := allocate_unbounded()
                let _611 := add(expr_5931_mpos, 0x20)

                let _612 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_611, expr_5930)
                mstore(expr_5931_mpos, sub(_612, add(expr_5931_mpos, 0x20)))
                finalize_allocation(expr_5931_mpos, sub(_612, expr_5931_mpos))
                fun__setData_8091(expr_5927, expr_5931_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 5935
            /// @src 15:1249:1968  "function _initialize(..."
            function fun__initialize_5935(var_name__5880_mpos, var_symbol__5882_mpos, var_initialOwner__5884, var_lsp4TokenType__5886) {

                modifier_onlyInitializing_5889(var_name__5880_mpos, var_symbol__5882_mpos, var_initialOwner__5884, var_lsp4TokenType__5886)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function convert_t_uint160_to_t_contract$_ITransparentUpgradeableProxy_$2026(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_ITransparentUpgradeableProxy_$2026(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_ITransparentUpgradeableProxy_$2026(value)
            }

            function convert_t_contract$_ITransparentUpgradeableProxy_$2026_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_decode_t_address_fromMemory(offset, end) -> value {
                value := mload(offset)
                validator_revert_t_address(value)
            }

            function abi_decode_tuple_t_address_fromMemory(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
                }

            }

            /// @ast-id 332
            /// @src 49:6372:7448  "function _beforeTokenTransfer(..."
            function fun__beforeTokenTransfer_332(var__275, var_to_277, var__279, var__281, var__283_mpos) {

                /// @src 49:6585:6587  "to"
                let _613 := var_to_277
                let expr_287 := _613
                /// @src 49:6599:6603  "this"
                let expr_290_address := address()
                /// @src 49:6591:6604  "address(this)"
                let expr_291 := convert_t_contract$_SLYXToken_$390_to_t_address(expr_290_address)
                /// @src 49:6585:6604  "to == address(this)"
                let expr_292 := eq(cleanup_t_address(expr_287), cleanup_t_address(expr_291))
                /// @src 49:6585:6635  "to == address(this) || to == address(stakingVault)"
                let expr_299 := expr_292
                if iszero(expr_299) {
                    /// @src 49:6608:6610  "to"
                    let _614 := var_to_277
                    let expr_293 := _614
                    /// @src 49:6622:6634  "stakingVault"
                    let _615_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                    let expr_296_address := _615_address
                    /// @src 49:6614:6635  "address(stakingVault)"
                    let expr_297 := convert_t_contract$_IVault_$7828_to_t_address(expr_296_address)
                    /// @src 49:6608:6635  "to == address(stakingVault)"
                    let expr_298 := eq(cleanup_t_address(expr_293), cleanup_t_address(expr_297))
                    /// @src 49:6585:6635  "to == address(this) || to == address(stakingVault)"
                    expr_299 := expr_298
                }
                /// @src 49:6581:6710  "if (to == address(this) || to == address(stakingVault)) {..."
                if expr_299 {
                    /// @src 49:6696:6698  "to"
                    let _616 := var_to_277
                    let expr_301 := _616
                    /// @src 49:6658:6699  "InvalidRecipientForSLYXTokensTransfer(to)"
                    {
                        let _617 := allocate_unbounded()
                        mstore(_617, 95751140856427895782249731153569637363948316360357806051252880993731001450496)
                        let _618 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_617, 4) , expr_301)
                        revert(_617, sub(_618, _617))
                    }/// @src 49:6581:6710  "if (to == address(this) || to == address(stakingVault)) {..."
                }
                /// @src 49:7237:7249  "stakingVault"
                let _619_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                let expr_309_address := _619_address
                /// @src 49:7229:7250  "address(stakingVault)"
                let expr_310 := convert_t_contract$_IVault_$7828_to_t_address(expr_309_address)
                /// @src 49:7211:7251  "ITransparentProxy(address(stakingVault))"
                let expr_311_address := convert_t_address_to_t_contract$_ITransparentUpgradeableProxy_$2026(expr_310)
                /// @src 49:7211:7266  "ITransparentProxy(address(stakingVault)).implementation"
                let expr_312_address := convert_t_contract$_ITransparentUpgradeableProxy_$2026_to_t_address(expr_311_address)
                let expr_312_functionSelector := 0x5c60da1b
                /// @src 49:7211:7268  "ITransparentProxy(address(stakingVault)).implementation()"

                // storage for arguments and returned data
                let _620 := allocate_unbounded()
                mstore(_620, shift_left_224(expr_312_functionSelector))
                let _621 := abi_encode_tuple__to__fromStack(add(_620, 4) )

                let trySuccessCondition_313 := staticcall(gas(), expr_312_address,  _620, sub(_621, _620), _620, 32)

                let expr_313
                if trySuccessCondition_313 {

                    let _622 := 32

                    if gt(_622, returndatasize()) {
                        _622 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_620, _622)

                    // decode return parameters from external try-call into retVars
                    expr_313 :=  abi_decode_tuple_t_address_fromMemory(_620, add(_620, _622))
                }
                /// @src 49:7207:7442  "try ITransparentProxy(address(stakingVault)).implementation() returns (address implementation) {..."
                switch iszero(trySuccessCondition_313)
                case 0 { // success case
                    let var_implementation_315 := expr_313
                    /// @src 49:7320:7322  "to"
                    let _623 := var_to_277
                    let expr_317 := _623
                    /// @src 49:7326:7340  "implementation"
                    let _624 := var_implementation_315
                    let expr_318 := _624
                    /// @src 49:7320:7340  "to == implementation"
                    let expr_319 := eq(cleanup_t_address(expr_317), cleanup_t_address(expr_318))
                    /// @src 49:7316:7423  "if (to == implementation) {..."
                    if expr_319 {
                        /// @src 49:7405:7407  "to"
                        let _625 := var_to_277
                        let expr_321 := _625
                        /// @src 49:7367:7408  "InvalidRecipientForSLYXTokensTransfer(to)"
                        {
                            let _626 := allocate_unbounded()
                            mstore(_626, 95751140856427895782249731153569637363948316360357806051252880993731001450496)
                            let _627 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_626, 4) , expr_321)
                            revert(_626, sub(_627, _626))
                        }/// @src 49:7316:7423  "if (to == implementation) {..."
                    }
                    /// @src 49:7207:7442  "try ITransparentProxy(address(stakingVault)).implementation() returns (address implementation) {..."
                }
                default { // failure case
                    let _628 := 1
                    if _628 {
                    }
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 1715
            /// @src 19:27756:29376  "function _update(..."
            function fun__update_1715(var_from_1602, var_to_1604, var_amount_1606, var_force_1608, var_data_1610_mpos) {

                /// @src 19:27923:27927  "from"
                let _629 := var_from_1602
                let expr_1613 := _629
                /// @src 19:27939:27940  "0"
                let expr_1616 := 0x00
                /// @src 19:27931:27941  "address(0)"
                let expr_1617 := convert_t_rational_0_by_1_to_t_address(expr_1616)
                /// @src 19:27923:27941  "from == address(0)"
                let expr_1618 := eq(cleanup_t_address(expr_1613), cleanup_t_address(expr_1617))
                /// @src 19:27919:28487  "if (from == address(0)) {..."
                switch expr_1618
                case 0 {
                    /// @src 19:28137:28156  "_tokenOwnerBalances"
                    let _630_slot := 0x9a
                    let expr_1626_slot := _630_slot
                    /// @src 19:28157:28161  "from"
                    let _631 := var_from_1602
                    let expr_1627 := _631
                    /// @src 19:28137:28162  "_tokenOwnerBalances[from]"
                    let _632 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1626_slot,expr_1627)
                    let _633 := read_from_storage_split_offset_0_t_uint256(_632)
                    let expr_1628 := _633
                    /// @src 19:28115:28162  "uint256 fromBalance = _tokenOwnerBalances[from]"
                    let var_fromBalance_1625 := expr_1628
                    /// @src 19:28180:28191  "fromBalance"
                    let _634 := var_fromBalance_1625
                    let expr_1630 := _634
                    /// @src 19:28194:28200  "amount"
                    let _635 := var_amount_1606
                    let expr_1631 := _635
                    /// @src 19:28180:28200  "fromBalance < amount"
                    let expr_1632 := lt(cleanup_t_uint256(expr_1630), cleanup_t_uint256(expr_1631))
                    /// @src 19:28176:28293  "if (fromBalance < amount) {..."
                    if expr_1632 {
                        /// @src 19:28252:28263  "fromBalance"
                        let _636 := var_fromBalance_1625
                        let expr_1634 := _636
                        /// @src 19:28265:28269  "from"
                        let _637 := var_from_1602
                        let expr_1635 := _637
                        /// @src 19:28271:28277  "amount"
                        let _638 := var_amount_1606
                        let expr_1636 := _638
                        /// @src 19:28227:28278  "LSP7AmountExceedsBalance(fromBalance, from, amount)"
                        {
                            let _639 := allocate_unbounded()
                            mstore(_639, 3993911445783216945073236967830432718282899366636074307589795800915948601344)
                            let _640 := abi_encode_tuple_t_uint256_t_address_t_uint256__to_t_uint256_t_address_t_uint256__fromStack(add(_639, 4) , expr_1634, expr_1635, expr_1636)
                            revert(_639, sub(_640, _639))
                        }/// @src 19:28176:28293  "if (fromBalance < amount) {..."
                    }
                    /// @src 19:28442:28453  "fromBalance"
                    let _641 := var_fromBalance_1625
                    let expr_1644 := _641
                    /// @src 19:28456:28462  "amount"
                    let _642 := var_amount_1606
                    let expr_1645 := _642
                    /// @src 19:28442:28462  "fromBalance - amount"
                    let expr_1646 := wrapping_sub_t_uint256(expr_1644, expr_1645)

                    /// @src 19:28414:28433  "_tokenOwnerBalances"
                    let _643_slot := 0x9a
                    let expr_1641_slot := _643_slot
                    /// @src 19:28434:28438  "from"
                    let _644 := var_from_1602
                    let expr_1642 := _644
                    /// @src 19:28414:28439  "_tokenOwnerBalances[from]"
                    let _645 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1641_slot,expr_1642)
                    /// @src 19:28414:28462  "_tokenOwnerBalances[from] = fromBalance - amount"
                    update_storage_value_offset_0t_uint256_to_t_uint256(_645, expr_1646)
                    let expr_1647 := expr_1646
                    /// @src 19:27919:28487  "if (from == address(0)) {..."
                }
                default {
                    /// @src 19:28078:28084  "amount"
                    let _646 := var_amount_1606
                    let expr_1620 := _646
                    /// @src 19:28059:28084  "_existingTokens += amount"
                    let _647 := read_from_storage_split_offset_0_t_uint256(0x99)
                    let expr_1621 := checked_add_t_uint256(_647, expr_1620)

                    update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_1621)
                    /// @src 19:27919:28487  "if (from == address(0)) {..."
                }
                /// @src 19:28501:28503  "to"
                let _648 := var_to_1604
                let expr_1652 := _648
                /// @src 19:28515:28516  "0"
                let expr_1655 := 0x00
                /// @src 19:28507:28517  "address(0)"
                let expr_1656 := convert_t_rational_0_by_1_to_t_address(expr_1655)
                /// @src 19:28501:28517  "to == address(0)"
                let expr_1657 := eq(cleanup_t_address(expr_1652), cleanup_t_address(expr_1656))
                /// @src 19:28497:28940  "if (to == address(0)) {..."
                switch expr_1657
                case 0 {
                    /// @src 19:28909:28915  "amount"
                    let _649 := var_amount_1606
                    let expr_1667 := _649
                    /// @src 19:28882:28901  "_tokenOwnerBalances"
                    let _650_slot := 0x9a
                    let expr_1664_slot := _650_slot
                    /// @src 19:28902:28904  "to"
                    let _651 := var_to_1604
                    let expr_1665 := _651
                    /// @src 19:28882:28905  "_tokenOwnerBalances[to]"
                    let _652 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_1664_slot,expr_1665)
                    /// @src 19:28882:28915  "_tokenOwnerBalances[to] += amount"
                    let _653 := read_from_storage_split_offset_0_t_uint256(_652)
                    let expr_1668 := wrapping_add_t_uint256(_653, expr_1667)

                    update_storage_value_offset_0t_uint256_to_t_uint256(_652, expr_1668)
                    /// @src 19:28497:28940  "if (to == address(0)) {..."
                }
                default {
                    /// @src 19:28685:28691  "amount"
                    let _654 := var_amount_1606
                    let expr_1659 := _654
                    /// @src 19:28666:28691  "_existingTokens -= amount"
                    let _655 := read_from_storage_split_offset_0_t_uint256(0x99)
                    let expr_1660 := wrapping_sub_t_uint256(_655, expr_1659)

                    update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_1660)
                    /// @src 19:28497:28940  "if (to == address(0)) {..."
                }
                /// @src 19:28988:28998  "msg.sender"
                let expr_1675 := caller()
                /// @src 19:29018:29022  "from"
                let _656 := var_from_1602
                let expr_1676 := _656
                /// @src 19:29040:29042  "to"
                let _657 := var_to_1604
                let expr_1677 := _657
                /// @src 19:29064:29070  "amount"
                let _658 := var_amount_1606
                let expr_1678 := _658
                /// @src 19:29091:29096  "force"
                let _659 := var_force_1608
                let expr_1679 := _659
                /// @src 19:29116:29120  "data"
                let _660_mpos := var_data_1610_mpos
                let expr_1680_mpos := _660_mpos
                /// @src 19:28955:29131  "Transfer({..."
                let _661 := 0x3997e418d2cef0b3b0e907b1e39605c3f7d32dbd061e82ea5b4a770d46a160a6
                let _662 := convert_t_address_to_t_address(expr_1675)
                let _663 := convert_t_address_to_t_address(expr_1676)
                let _664 := convert_t_address_to_t_address(expr_1677)
                {
                    let _665 := allocate_unbounded()
                    let _666 := abi_encode_tuple_t_uint256_t_bool_t_bytes_memory_ptr__to_t_uint256_t_bool_t_bytes_memory_ptr__fromStack(_665 , expr_1678, expr_1679, expr_1680_mpos)
                    log4(_665, sub(_666, _665) , _661, _662, _663, _664)
                }/// @src 19:29162:29166  "from"
                let _667 := var_from_1602
                let expr_1684 := _667
                /// @src 19:29168:29170  "to"
                let _668 := var_to_1604
                let expr_1685 := _668
                /// @src 19:29172:29178  "amount"
                let _669 := var_amount_1606
                let expr_1686 := _669
                /// @src 19:29180:29185  "force"
                let _670 := var_force_1608
                let expr_1687 := _670
                /// @src 19:29187:29191  "data"
                let _671_mpos := var_data_1610_mpos
                let expr_1688_mpos := _671_mpos
                fun__afterTokenTransfer_389(expr_1684, expr_1685, expr_1686, expr_1687, expr_1688_mpos)
                /// @src 19:29238:29248  "msg.sender"
                let expr_1696 := caller()
                /// @src 19:29250:29254  "from"
                let _672 := var_from_1602
                let expr_1697 := _672
                /// @src 19:29256:29258  "to"
                let _673 := var_to_1604
                let expr_1698 := _673
                /// @src 19:29260:29266  "amount"
                let _674 := var_amount_1606
                let expr_1699 := _674
                /// @src 19:29268:29272  "data"
                let _675_mpos := var_data_1610_mpos
                let expr_1700_mpos := _675_mpos
                /// @src 19:29227:29273  "abi.encode(msg.sender, from, to, amount, data)"

                let expr_1701_mpos := allocate_unbounded()
                let _676 := add(expr_1701_mpos, 0x20)

                let _677 := abi_encode_tuple_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_address_t_address_t_uint256_t_bytes_memory_ptr__fromStack(_676, expr_1696, expr_1697, expr_1698, expr_1699, expr_1700_mpos)
                mstore(expr_1701_mpos, sub(_677, add(expr_1701_mpos, 0x20)))
                finalize_allocation(expr_1701_mpos, sub(_677, expr_1701_mpos))
                /// @src 19:29203:29273  "bytes memory lsp1Data = abi.encode(msg.sender, from, to, amount, data)"
                let var_lsp1Data_1692_mpos := expr_1701_mpos
                /// @src 19:29303:29307  "from"
                let _678 := var_from_1602
                let expr_1704 := _678
                /// @src 19:29309:29317  "lsp1Data"
                let _679_mpos := var_lsp1Data_1692_mpos
                let expr_1705_mpos := _679_mpos
                fun__notifyTokenSender_1779(expr_1704, expr_1705_mpos)
                /// @src 19:29349:29351  "to"
                let _680 := var_to_1604
                let expr_1709 := _680
                /// @src 19:29353:29358  "force"
                let _681 := var_force_1608
                let expr_1710 := _681
                /// @src 19:29360:29368  "lsp1Data"
                let _682_mpos := var_lsp1Data_1692_mpos
                let expr_1711_mpos := _682_mpos
                fun__notifyTokenReceiver_1825(expr_1709, expr_1710, expr_1711_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            /// @ast-id 389
            /// @src 49:8008:9156  "function _afterTokenTransfer(address from, address to, uint256 amount, bool, /* force *\/ bytes memory data)..."
            function fun__afterTokenTransfer_389(var_from_335, var_to_337, var_amount_339, var__341, var_data_343_mpos) {

                /// @src 49:8184:8186  "to"
                let _683 := var_to_337
                let expr_347 := _683
                /// @src 49:8198:8199  "0"
                let expr_350 := 0x00
                /// @src 49:8190:8200  "address(0)"
                let expr_351 := convert_t_rational_0_by_1_to_t_address(expr_350)
                /// @src 49:8184:8200  "to == address(0)"
                let expr_352 := eq(cleanup_t_address(expr_347), cleanup_t_address(expr_351))
                /// @src 49:8180:9150  "if (to == address(0)) {..."
                if expr_352 {
                    /// @src 49:8500:8512  "stakingVault"
                    let _684_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                    let expr_355_address := _684_address
                    /// @src 49:8500:8522  "stakingVault.balanceOf"
                    let expr_356_address := convert_t_contract$_IVault_$7828_to_t_address(expr_355_address)
                    let expr_356_functionSelector := 0x70a08231
                    /// @src 49:8531:8535  "this"
                    let expr_359_address := address()
                    /// @src 49:8523:8536  "address(this)"
                    let expr_360 := convert_t_contract$_SLYXToken_$390_to_t_address(expr_359_address)
                    /// @src 49:8500:8537  "stakingVault.balanceOf(address(this))"

                    // storage for arguments and returned data
                    let _685 := allocate_unbounded()
                    mstore(_685, shift_left_224(expr_356_functionSelector))
                    let _686 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_685, 4) , expr_360)

                    let _687 := staticcall(gas(), expr_356_address,  _685, sub(_686, _685), _685, 32)

                    if iszero(_687) { revert_forward_1() }

                    let expr_361
                    if _687 {

                        let _688 := 32

                        if gt(_688, returndatasize()) {
                            _688 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_685, _688)

                        // decode return parameters from external try-call into retVars
                        expr_361 :=  abi_decode_tuple_t_uint256_fromMemory(_685, add(_685, _688))
                    }
                    /// @src 49:8467:8537  "uint256 sLyxTokenContractStake = stakingVault.balanceOf(address(this))"
                    let var_sLyxTokenContractStake_354 := expr_361
                    /// @src 49:8801:8814  "totalSupply()"
                    let expr_366 := fun_totalSupply_728()
                    /// @src 49:8817:8823  "amount"
                    let _689 := var_amount_339
                    let expr_367 := _689
                    /// @src 49:8801:8823  "totalSupply() + amount"
                    let expr_368 := checked_add_t_uint256(expr_366, expr_367)

                    /// @src 49:8762:8823  "uint256 totalSLYXMintedBeforeBurning = totalSupply() + amount"
                    let var_totalSLYXMintedBeforeBurning_364 := expr_368
                    /// @src 49:9000:9006  "amount"
                    let _690 := var_amount_339
                    let expr_372 := _690
                    /// @src 49:9000:9013  "amount.mulDiv"
                    let expr_373_self := expr_372
                    /// @src 49:9014:9036  "sLyxTokenContractStake"
                    let _691 := var_sLyxTokenContractStake_354
                    let expr_374 := _691
                    /// @src 49:9038:9066  "totalSLYXMintedBeforeBurning"
                    let _692 := var_totalSLYXMintedBeforeBurning_364
                    let expr_375 := _692
                    /// @src 49:9000:9067  "amount.mulDiv(sLyxTokenContractStake, totalSLYXMintedBeforeBurning)"
                    let expr_376 := fun_mulDiv_2529(expr_373_self, expr_374, expr_375)
                    /// @src 49:8972:9067  "uint256 amountAsStakedLYX = amount.mulDiv(sLyxTokenContractStake, totalSLYXMintedBeforeBurning)"
                    let var_amountAsStakedLYX_371 := expr_376
                    /// @src 49:9082:9094  "stakingVault"
                    let _693_address := read_from_storage_split_offset_0_t_contract$_IVault_$7828(0xcf)
                    let expr_378_address := _693_address
                    /// @src 49:9082:9108  "stakingVault.transferStake"
                    let expr_380_address := convert_t_contract$_IVault_$7828_to_t_address(expr_378_address)
                    let expr_380_functionSelector := 0xf2f1042f
                    /// @src 49:9109:9113  "from"
                    let _694 := var_from_335
                    let expr_381 := _694
                    /// @src 49:9115:9132  "amountAsStakedLYX"
                    let _695 := var_amountAsStakedLYX_371
                    let expr_382 := _695
                    /// @src 49:9134:9138  "data"
                    let _696_mpos := var_data_343_mpos
                    let expr_383_mpos := _696_mpos
                    /// @src 49:9082:9139  "stakingVault.transferStake(from, amountAsStakedLYX, data)"

                    if iszero(extcodesize(expr_380_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _697 := allocate_unbounded()
                    mstore(_697, shift_left_224(expr_380_functionSelector))
                    let _698 := abi_encode_tuple_t_address_t_uint256_t_bytes_memory_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(add(_697, 4) , expr_381, expr_382, expr_383_mpos)

                    let _699 := call(gas(), expr_380_address,  0,  _697, sub(_698, _697), _697, 0)

                    if iszero(_699) { revert_forward_1() }

                    if _699 {

                        let _700 := 0

                        if gt(_700, returndatasize()) {
                            _700 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_697, _700)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_697, add(_697, _700))
                    }
                    /// @src 49:8180:9150  "if (to == address(0)) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_30126120226645308825175209506809961281114499779192639813518124737519344507114_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_30126120226645308825175209506809961281114499779192639813518124737519344507114_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_30126120226645308825175209506809961281114499779192639813518124737519344507114_by_1(value)))
            }

            /// @src 18:641:752  "bytes32 constant _TYPEID_LSP7_TOKENSSENDER = 0x429ac7a06903dbc9c13dfcb3c9d11df8194581fa047c96d7a4171fc7402958ea"
            function constant__TYPEID_LSP7_TOKENSSENDER_6169() -> ret {
                /// @src 18:686:752  "0x429ac7a06903dbc9c13dfcb3c9d11df8194581fa047c96d7a4171fc7402958ea"
                let expr_6168 := 0x429ac7a06903dbc9c13dfcb3c9d11df8194581fa047c96d7a4171fc7402958ea
                let _702 := convert_t_rational_30126120226645308825175209506809961281114499779192639813518124737519344507114_by_1_to_t_bytes32(expr_6168)

                ret := _702
            }

            /// @ast-id 1779
            /// @src 19:32383:32626  "function _notifyTokenSender(..."
            function fun__notifyTokenSender_1779(var_from_1765, var_lsp1Data_1767_mpos) {

                /// @src 19:32497:32506  "LSP1Utils"
                let expr_1770_address := linkersymbol("node_modules/@lukso/lsp1-contracts/contracts/LSP1Utils.sol:LSP1Utils")
                /// @src 19:32544:32548  "from"
                let _701 := var_from_1765
                let expr_1773 := _701
                /// @src 19:32562:32587  "_TYPEID_LSP7_TOKENSSENDER"
                let expr_1774 := constant__TYPEID_LSP7_TOKENSSENDER_6169()
                /// @src 19:32601:32609  "lsp1Data"
                let _703_mpos := var_lsp1Data_1767_mpos
                let expr_1775_mpos := _703_mpos
                fun_notifyUniversalReceiver_4917(expr_1773, expr_1774, expr_1775_mpos)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_14700651178463773754784378975248309303000044702861470394749468040853262214492_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_14700651178463773754784378975248309303000044702861470394749468040853262214492_by_1_to_t_bytes32(value) -> converted {
                converted := cleanup_t_bytes32(shift_left_0(cleanup_t_rational_14700651178463773754784378975248309303000044702861470394749468040853262214492_by_1(value)))
            }

            /// @src 18:804:918  "bytes32 constant _TYPEID_LSP7_TOKENSRECIPIENT = 0x20804611b3e2ea21c480dc465142210acf4a2485947541770ec1fb87dee4a55c"
            function constant__TYPEID_LSP7_TOKENSRECIPIENT_6172() -> ret {
                /// @src 18:852:918  "0x20804611b3e2ea21c480dc465142210acf4a2485947541770ec1fb87dee4a55c"
                let expr_6171 := 0x20804611b3e2ea21c480dc465142210acf4a2485947541770ec1fb87dee4a55c
                let _714 := convert_t_rational_14700651178463773754784378975248309303000044702861470394749468040853262214492_by_1_to_t_bytes32(expr_6171)

                ret := _714
            }

            /// @ast-id 1825
            /// @src 19:33522:34137  "function _notifyTokenReceiver(..."
            function fun__notifyTokenReceiver_1825(var_to_1782, var_force_1784, var_lsp1Data_1786_mpos) {

                /// @src 19:33673:33686  "ERC165Checker"
                let expr_1789_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol:ERC165Checker")
                /// @src 19:33737:33739  "to"
                let _704 := var_to_1782
                let expr_1791 := _704
                /// @src 19:33757:33774  "_INTERFACEID_LSP1"
                let expr_1792 := constant__INTERFACEID_LSP1_4867()
                /// @src 19:33673:33788  "ERC165Checker.supportsERC165InterfaceUnchecked(..."
                let expr_1793 := fun_supportsERC165InterfaceUnchecked_6446(expr_1791, expr_1792)
                /// @src 19:33656:34131  "if (..."
                switch expr_1793
                case 0 {
                    /// @src 19:33902:33907  "force"
                    let _705 := var_force_1784
                    let expr_1803 := _705
                    /// @src 19:33901:33907  "!force"
                    let expr_1804 := cleanup_t_bool(iszero(expr_1803))
                    /// @src 19:33897:34131  "if (!force) {..."
                    if expr_1804 {
                        /// @src 19:33927:33929  "to"
                        let _706 := var_to_1782
                        let expr_1805 := _706
                        /// @src 19:33927:33941  "to.code.length"
                        let expr_1807 := extcodesize(expr_1805)
                        /// @src 19:33945:33946  "0"
                        let expr_1808 := 0x00
                        /// @src 19:33927:33946  "to.code.length != 0"
                        let expr_1809 := iszero(eq(cleanup_t_uint256(expr_1807), convert_t_rational_0_by_1_to_t_uint256(expr_1808)))
                        /// @src 19:33923:34121  "if (to.code.length != 0) {..."
                        switch expr_1809
                        case 0 {
                            /// @src 19:34103:34105  "to"
                            let _707 := var_to_1782
                            let expr_1816 := _707
                            /// @src 19:34074:34106  "LSP7NotifyTokenReceiverIsEOA(to)"
                            {
                                let _708 := allocate_unbounded()
                                mstore(_708, 17531153178948738232910495568789140415637303621000154499827678657726163976192)
                                let _709 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_708, 4) , expr_1816)
                                revert(_708, sub(_709, _708))
                            }/// @src 19:33923:34121  "if (to.code.length != 0) {..."
                        }
                        default {
                            /// @src 19:34025:34027  "to"
                            let _710 := var_to_1782
                            let expr_1811 := _710
                            /// @src 19:33973:34028  "LSP7NotifyTokenReceiverContractMissingLSP1Interface(to)"
                            {
                                let _711 := allocate_unbounded()
                                mstore(_711, 75099804886383785397535565724695185967692723383113607865410287334178749939712)
                                let _712 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_711, 4) , expr_1811)
                                revert(_711, sub(_712, _711))
                            }/// @src 19:33923:34121  "if (to.code.length != 0) {..."
                        }
                        /// @src 19:33897:34131  "if (!force) {..."
                    }
                    /// @src 19:33656:34131  "if (..."
                }
                default {
                    /// @src 19:33819:33821  "to"
                    let _713 := var_to_1782
                    let expr_1795 := _713
                    /// @src 19:33813:33822  "ILSP1(to)"
                    let expr_1796_address := convert_t_address_to_t_contract$_ILSP1UniversalReceiver_$4862(expr_1795)
                    /// @src 19:33813:33840  "ILSP1(to).universalReceiver"
                    let expr_1797_address := convert_t_contract$_ILSP1UniversalReceiver_$4862_to_t_address(expr_1796_address)
                    let expr_1797_functionSelector := 0x6bb56a14
                    /// @src 19:33841:33869  "_TYPEID_LSP7_TOKENSRECIPIENT"
                    let expr_1798 := constant__TYPEID_LSP7_TOKENSRECIPIENT_6172()
                    /// @src 19:33871:33879  "lsp1Data"
                    let _715_mpos := var_lsp1Data_1786_mpos
                    let expr_1799_mpos := _715_mpos
                    /// @src 19:33813:33880  "ILSP1(to).universalReceiver(_TYPEID_LSP7_TOKENSRECIPIENT, lsp1Data)"

                    // storage for arguments and returned data
                    let _716 := allocate_unbounded()
                    mstore(_716, shift_left_224(expr_1797_functionSelector))
                    let _717 := abi_encode_tuple_t_bytes32_t_bytes_memory_ptr__to_t_bytes32_t_bytes_memory_ptr__fromStack(add(_716, 4) , expr_1798, expr_1799_mpos)

                    let _718 := call(gas(), expr_1797_address,  0,  _716, sub(_717, _716), _716, 0)

                    if iszero(_718) { revert_forward_1() }

                    let expr_1800_mpos
                    if _718 {

                        let _719 := returndatasize()
                        returndatacopy(_716, 0, _719)

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_716, _719)

                        // decode return parameters from external try-call into retVars
                        expr_1800_mpos :=  abi_decode_tuple_t_bytes_memory_ptr_fromMemory(_716, add(_716, _719))
                    }
                    /// @src 19:33656:34131  "if (..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function zero_value_for_split_t_array$_t_bytes32_$dyn_memory_ptr() -> ret {
                ret := 96
            }

            function array_length_t_array$_t_bytes32_$dyn_storage(value) -> length {

                length := sload(value)

            }

            function array_storeLengthForEncoding_t_array$_t_bytes32_$dyn_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function abi_encode_t_bytes32_to_t_bytes32(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encodeUpdatedPos_t_bytes32_to_t_bytes32(value0, pos) -> updatedPos {
                abi_encode_t_bytes32_to_t_bytes32(value0, pos)
                updatedPos := add(pos, 0x20)
            }

            function cleanup_from_storage_t_bytes32(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0t_bytes32(slot_value) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_offset_0_t_bytes32(slot) -> value {
                value := extract_from_storage_value_offset_0t_bytes32(sload(slot))

            }

            function array_nextElement_t_array$_t_bytes32_$dyn_storage(ptr) -> next {
                next := add(ptr, 0x01)
            }

            // bytes32[] -> bytes32[]
            function abi_encode_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(value, pos)  -> end  {
                let length := array_length_t_array$_t_bytes32_$dyn_storage(value)
                pos := array_storeLengthForEncoding_t_array$_t_bytes32_$dyn_memory_ptr(pos, length)
                let baseRef := array_dataslot_t_array$_t_bytes32_$dyn_storage(value)
                let srcPtr := baseRef
                for { let i := 0 } lt(i, length) { i := add(i, 1) }
                {
                    let elementValue0 := read_from_storage_offset_0_t_bytes32(srcPtr)
                    pos := abi_encodeUpdatedPos_t_bytes32_to_t_bytes32(elementValue0, pos)
                    srcPtr := array_nextElement_t_array$_t_bytes32_$dyn_storage(srcPtr)
                }
                end := pos
            }

            function abi_encodeUpdatedPos_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(value0, pos)
            }

            function copy_array_from_storage_to_memory_t_array$_t_bytes32_$dyn_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_array$_t_bytes32_$dyn_storage(value)

            }

            /// @ast-id 6648
            /// @src 43:5570:5679  "function _values(Set storage set) private view returns (bytes32[] memory) {..."
            function fun__values_6648(var_set_6638_slot) -> var__6642_mpos {
                /// @src 43:5626:5642  "bytes32[] memory"
                let zero_t_array$_t_bytes32_$dyn_memory_ptr_720_mpos := zero_value_for_split_t_array$_t_bytes32_$dyn_memory_ptr()
                var__6642_mpos := zero_t_array$_t_bytes32_$dyn_memory_ptr_720_mpos

                /// @src 43:5661:5664  "set"
                let _721_slot := var_set_6638_slot
                let expr_6644_slot := _721_slot
                /// @src 43:5661:5672  "set._values"
                let _722 := add(expr_6644_slot, 0)
                let _723_slot := _722
                let expr_6645_slot := _723_slot
                /// @src 43:5654:5672  "return set._values"
                var__6642_mpos := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_memory_ptr(expr_6645_slot)
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_977078727535809873907862_by_1(value) -> cleaned {
                cleaned := value
            }

            function cleanup_t_bytes10(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffff00000000000000000000000000000000000000000000)
            }

            function shift_left_176(value) -> newValue {
                newValue :=

                shl(176, value)

            }

            function convert_t_rational_977078727535809873907862_by_1_to_t_bytes10(value) -> converted {
                converted := cleanup_t_bytes10(shift_left_176(cleanup_t_rational_977078727535809873907862_by_1(value)))
            }

            /// @src 10:390:455  "bytes10 constant _LSP17_EXTENSION_PREFIX = 0xcee78b4094da86011096"
            function constant__LSP17_EXTENSION_PREFIX_4972() -> ret {
                /// @src 10:433:455  "0xcee78b4094da86011096"
                let expr_4971 := 0xcee78b4094da86011096
                let _726 := convert_t_rational_977078727535809873907862_by_1_to_t_bytes10(expr_4971)

                ret := _726
            }

            function convert_t_bytes4_to_t_bytes20(value) -> converted {
                converted := cleanup_t_bytes4(value)
            }

            function cleanup_t_rational_20_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_20_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_20_by_1(value)))
            }

            function array_dataslot_t_bytes_memory_ptr(ptr) -> data {
                data := ptr

                data := add(ptr, 0x20)

            }

            function cleanup_t_bytes20(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000)
            }

            function read_from_memoryt_bytes20(ptr) -> returnValue {

                let value := cleanup_t_bytes20(mload(ptr))

                returnValue :=

                value

            }

            function convert_bytes_to_fixedbytes_from_t_bytes_memory_ptr_to_t_bytes20(array) -> value {

                let length := array_length_t_bytes_memory_ptr(array)
                let dataArea := array

                dataArea := array_dataslot_t_bytes_memory_ptr(array)

                value := read_from_memoryt_bytes20(dataArea)

                if lt(length, 20) {
                    value := and(
                        value,
                        shift_left_dynamic(
                            mul(8, sub(20, length)),
                            0xffffffffffffffffffffffffffffffffffffffff000000000000000000000000
                        )
                    )
                }

            }

            function shift_right_96_unsigned(value) -> newValue {
                newValue :=

                shr(96, value)

            }

            function convert_t_bytes20_to_t_uint160(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(shift_right_96_unsigned(value))
            }

            function convert_t_bytes20_to_t_address(value) -> converted {
                converted := convert_t_bytes20_to_t_uint160(value)
            }

            /// @ast-id 679
            /// @src 19:8411:9170  "function _getExtensionAndForwardValue(..."
            function fun__getExtensionAndForwardValue_679(var_functionSelector_631) -> var__635, var__637 {
                /// @src 19:8528:8535  "address"
                let zero_t_address_724 := zero_value_for_split_t_address()
                var__635 := zero_t_address_724
                /// @src 19:8537:8541  "bool"
                let zero_t_bool_725 := zero_value_for_split_t_bool()
                var__637 := zero_t_bool_725

                /// @src 19:8666:8675  "LSP2Utils"
                let expr_641_address := linkersymbol("node_modules/@lukso/lsp2-contracts/contracts/LSP2Utils.sol:LSP2Utils")
                /// @src 19:8708:8731  "_LSP17_EXTENSION_PREFIX"
                let expr_643 := constant__LSP17_EXTENSION_PREFIX_4972()
                /// @src 19:8745:8761  "functionSelector"
                let _727 := var_functionSelector_631
                let expr_644 := _727
                /// @src 19:8666:8771  "LSP2Utils.generateMappingKey(..."
                let _728 := convert_t_bytes4_to_t_bytes20(expr_644)
                let expr_645 := fun_generateMappingKey_5350(expr_643, _728)
                /// @src 19:8633:8771  "bytes32 mappedExtensionDataKey = LSP2Utils.generateMappingKey(..."
                let var_mappedExtensionDataKey_640 := expr_645
                /// @src 19:8934:8956  "mappedExtensionDataKey"
                let _729 := var_mappedExtensionDataKey_640
                let expr_651 := _729
                /// @src 19:8892:8966  "ERC725YInitAbstract._getData(..."
                let expr_652_mpos := fun__getData_8071(expr_651)
                /// @src 19:8860:8966  "bytes memory extensionAddress = ERC725YInitAbstract._getData(..."
                let var_extensionAddress_648_mpos := expr_652_mpos
                /// @src 19:8980:8996  "extensionAddress"
                let _730_mpos := var_extensionAddress_648_mpos
                let expr_654_mpos := _730_mpos
                /// @src 19:8980:9003  "extensionAddress.length"
                let expr_655 := array_length_t_bytes_memory_ptr(expr_654_mpos)
                /// @src 19:9007:9009  "20"
                let expr_656 := 0x14
                /// @src 19:8980:9009  "extensionAddress.length != 20"
                let expr_657 := iszero(eq(cleanup_t_uint256(expr_655), convert_t_rational_20_by_1_to_t_uint256(expr_656)))
                /// @src 19:8980:9041  "extensionAddress.length != 20 && extensionAddress.length != 0"
                let expr_662 := expr_657
                if expr_662 {
                    /// @src 19:9013:9029  "extensionAddress"
                    let _731_mpos := var_extensionAddress_648_mpos
                    let expr_658_mpos := _731_mpos
                    /// @src 19:9013:9036  "extensionAddress.length"
                    let expr_659 := array_length_t_bytes_memory_ptr(expr_658_mpos)
                    /// @src 19:9040:9041  "0"
                    let expr_660 := 0x00
                    /// @src 19:9013:9041  "extensionAddress.length != 0"
                    let expr_661 := iszero(eq(cleanup_t_uint256(expr_659), convert_t_rational_0_by_1_to_t_uint256(expr_660)))
                    /// @src 19:8980:9041  "extensionAddress.length != 20 && extensionAddress.length != 0"
                    expr_662 := expr_661
                }
                /// @src 19:8976:9103  "if (extensionAddress.length != 20 && extensionAddress.length != 0)..."
                if expr_662 {
                    /// @src 19:9086:9102  "extensionAddress"
                    let _732_mpos := var_extensionAddress_648_mpos
                    let expr_664_mpos := _732_mpos
                    /// @src 19:9062:9103  "InvalidExtensionAddress(extensionAddress)"
                    {
                        let _733 := allocate_unbounded()
                        mstore(_733, 30191714385905881736776429175853833508945010660392235680669152200056721375232)
                        let _734 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(add(_733, 4) , expr_664_mpos)
                        revert(_733, sub(_734, _733))
                    }/// @src 19:8976:9103  "if (extensionAddress.length != 20 && extensionAddress.length != 0)..."
                }
                /// @src 19:9138:9154  "extensionAddress"
                let _735_mpos := var_extensionAddress_648_mpos
                let expr_672_mpos := _735_mpos
                /// @src 19:9130:9155  "bytes20(extensionAddress)"
                let expr_673 := convert_bytes_to_fixedbytes_from_t_bytes_memory_ptr_to_t_bytes20(expr_672_mpos)
                /// @src 19:9122:9156  "address(bytes20(extensionAddress))"
                let expr_674 := convert_t_bytes20_to_t_address(expr_673)
                /// @src 19:9121:9163  "(address(bytes20(extensionAddress)), true)"
                let expr_676_component_1 := expr_674
                /// @src 19:9158:9162  "true"
                let expr_675 := 0x01
                /// @src 19:9121:9163  "(address(bytes20(extensionAddress)), true)"
                let expr_676_component_2 := expr_675
                /// @src 19:9114:9163  "return (address(bytes20(extensionAddress)), true)"
                var__635 := expr_676_component_1
                var__637 := expr_676_component_2
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7534
            /// @src 39:829:984  "function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {..."
            function fun_supportsInterface_7534(var_interfaceId_7520) -> var__7524 {
                /// @src 39:914:918  "bool"
                let zero_t_bool_736 := zero_value_for_split_t_bool()
                var__7524 := zero_t_bool_736

                /// @src 39:937:948  "interfaceId"
                let _737 := var_interfaceId_7520
                let expr_7526 := _737
                /// @src 39:952:977  "type(IERC165).interfaceId"
                let expr_7530 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 39:937:977  "interfaceId == type(IERC165).interfaceId"
                let expr_7531 := eq(cleanup_t_bytes4(expr_7526), cleanup_t_bytes4(expr_7530))
                /// @src 39:930:977  "return interfaceId == type(IERC165).interfaceId"
                var__7524 := expr_7531
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_rational_32_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32_by_1(value)))
            }

            /// @ast-id 6446
            /// @src 40:4421:5068  "function supportsERC165InterfaceUnchecked(address account, bytes4 interfaceId) internal view returns (bool) {..."
            function fun_supportsERC165InterfaceUnchecked_6446(var_account_6408, var_interfaceId_6410) -> var__6413 {
                /// @src 40:4523:4527  "bool"
                let zero_t_bool_738 := zero_value_for_split_t_bool()
                var__6413 := zero_t_bool_738

                /// @src 40:4615:4649  "IERC165.supportsInterface.selector"
                let expr_6421 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 40:4651:4662  "interfaceId"
                let _739 := var_interfaceId_6410
                let expr_6422 := _739
                /// @src 40:4592:4663  "abi.encodeWithSelector(IERC165.supportsInterface.selector, interfaceId)"

                let expr_6423_mpos := allocate_unbounded()
                let _740 := add(expr_6423_mpos, 0x20)

                mstore(_740, expr_6421)
                _740 := add(_740, 4)

                let _741 := abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(_740, expr_6422)
                mstore(expr_6423_mpos, sub(_741, add(expr_6423_mpos, 0x20)))
                finalize_allocation(expr_6423_mpos, sub(_741, expr_6423_mpos))
                /// @src 40:4563:4663  "bytes memory encodedParams = abi.encodeWithSelector(IERC165.supportsInterface.selector, interfaceId)"
                let var_encodedParams_6416_mpos := expr_6423_mpos
                /// @src 40:4705:4717  "bool success"
                let var_success_6426
                let zero_t_bool_742 := zero_value_for_split_t_bool()
                var_success_6426 := zero_t_bool_742
                /// @src 40:4727:4745  "uint256 returnSize"
                let var_returnSize_6429
                let zero_t_uint256_743 := zero_value_for_split_t_uint256()
                var_returnSize_6429 := zero_t_uint256_743
                /// @src 40:4755:4774  "uint256 returnValue"
                let var_returnValue_6432
                let zero_t_uint256_744 := zero_value_for_split_t_uint256()
                var_returnValue_6432 := zero_t_uint256_744
                /// @src 40:4784:4996  "assembly {..."
                {
                    var_success_6426 := staticcall(30000, var_account_6408, add(var_encodedParams_6416_mpos, 0x20), mload(var_encodedParams_6416_mpos), 0x00, 0x20)
                    var_returnSize_6429 := returndatasize()
                    var_returnValue_6432 := mload(0x00)
                }
                /// @src 40:5013:5020  "success"
                let _745 := var_success_6426
                let expr_6435 := _745
                /// @src 40:5013:5042  "success && returnSize >= 0x20"
                let expr_6439 := expr_6435
                if expr_6439 {
                    /// @src 40:5024:5034  "returnSize"
                    let _746 := var_returnSize_6429
                    let expr_6436 := _746
                    /// @src 40:5038:5042  "0x20"
                    let expr_6437 := 0x20
                    /// @src 40:5024:5042  "returnSize >= 0x20"
                    let expr_6438 := iszero(lt(cleanup_t_uint256(expr_6436), convert_t_rational_32_by_1_to_t_uint256(expr_6437)))
                    /// @src 40:5013:5042  "success && returnSize >= 0x20"
                    expr_6439 := expr_6438
                }
                /// @src 40:5013:5061  "success && returnSize >= 0x20 && returnValue > 0"
                let expr_6443 := expr_6439
                if expr_6443 {
                    /// @src 40:5046:5057  "returnValue"
                    let _747 := var_returnValue_6432
                    let expr_6440 := _747
                    /// @src 40:5060:5061  "0"
                    let expr_6441 := 0x00
                    /// @src 40:5046:5061  "returnValue > 0"
                    let expr_6442 := gt(cleanup_t_uint256(expr_6440), convert_t_rational_0_by_1_to_t_uint256(expr_6441))
                    /// @src 40:5013:5061  "success && returnSize >= 0x20 && returnValue > 0"
                    expr_6443 := expr_6442
                }
                /// @src 40:5006:5061  "return success && returnSize >= 0x20 && returnValue > 0"
                var__6413 := expr_6443
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(slot , key) -> dataSlot {
                mstore(0, convert_t_bytes32_to_t_bytes32(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function array_dataslot_t_bytes_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function long_byte_array_index_access_no_checks(array, index) -> slot, offset {

                offset := sub(31, mod(index, 0x20))
                let dataArea := array_dataslot_t_bytes_storage_ptr(array)
                slot := add(dataArea, div(index, 0x20))

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function extract_from_storage_value_dynamict_bytes32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bytes32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bytes32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bytes32(sload(slot), offset)

            }

            function prepare_store_t_bytes32(value) -> ret {
                ret := shift_right_0_unsigned(value)
            }

            function update_storage_value_t_bytes32_to_t_bytes32(slot, offset, value_0) {
                let convertedValue_0 := convert_t_bytes32_to_t_bytes32(value_0)
                sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_bytes32(convertedValue_0)))
            }

            function convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(value) -> converted  {
                converted := value

            }

            function panic_error_0x31() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x31)
                revert(0, 0x24)
            }

            function array_length_t_array$_t_bytes32_$dyn_storage_ptr(value) -> length {

                length := sload(value)

            }

            function array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            function storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, index) -> slot, offset {
                let arrayLength := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(lt(index, arrayLength)) { panic_error_0x32() }

                let dataArea := array_dataslot_t_array$_t_bytes32_$dyn_storage_ptr(array)
                slot := add(dataArea, mul(index, 1))
                offset := 0

            }

            function zero_value_for_split_t_bytes32() -> ret {
                ret := 0
            }

            function storage_set_to_zero_t_bytes32(slot, offset) {
                let zero_0 := zero_value_for_split_t_bytes32()
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset, zero_0)
            }

            function array_pop_t_array$_t_bytes32_$dyn_storage_ptr(array) {
                let oldLen := array_length_t_array$_t_bytes32_$dyn_storage_ptr(array)
                if iszero(oldLen) { panic_error_0x31() }
                let newLen := sub(oldLen, 1)
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, newLen)
                storage_set_to_zero_t_bytes32(slot, offset)
                sstore(array, newLen)
            }
            /// @ast-id 6584
            /// @src 43:2786:4174  "function _remove(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__remove_6584(var_set_6504_slot, var_value_6506) -> var__6509 {
                /// @src 43:2852:2856  "bool"
                let zero_t_bool_748 := zero_value_for_split_t_bool()
                var__6509 := zero_t_bool_748

                /// @src 43:2989:2992  "set"
                let _749_slot := var_set_6504_slot
                let expr_6513_slot := _749_slot
                /// @src 43:2989:3001  "set._indexes"
                let _750 := add(expr_6513_slot, 1)
                let _751_slot := _750
                let expr_6514_slot := _751_slot
                /// @src 43:3002:3007  "value"
                let _752 := var_value_6506
                let expr_6515 := _752
                /// @src 43:2989:3008  "set._indexes[value]"
                let _753 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_6514_slot,expr_6515)
                let _754 := read_from_storage_split_offset_0_t_uint256(_753)
                let expr_6516 := _754
                /// @src 43:2968:3008  "uint256 valueIndex = set._indexes[value]"
                let var_valueIndex_6512 := expr_6516
                /// @src 43:3023:3033  "valueIndex"
                let _755 := var_valueIndex_6512
                let expr_6518 := _755
                /// @src 43:3037:3038  "0"
                let expr_6519 := 0x00
                /// @src 43:3023:3038  "valueIndex != 0"
                let expr_6520 := iszero(eq(cleanup_t_uint256(expr_6518), convert_t_rational_0_by_1_to_t_uint256(expr_6519)))
                /// @src 43:3019:4168  "if (valueIndex != 0) {..."
                switch expr_6520
                case 0 {
                    /// @src 43:4152:4157  "false"
                    let expr_6579 := 0x00
                    /// @src 43:4145:4157  "return false"
                    var__6509 := expr_6579
                    leave
                    /// @src 43:3019:4168  "if (valueIndex != 0) {..."
                }
                default {
                    /// @src 43:3416:3426  "valueIndex"
                    let _756 := var_valueIndex_6512
                    let expr_6523 := _756
                    /// @src 43:3429:3430  "1"
                    let expr_6524 := 0x01
                    /// @src 43:3416:3430  "valueIndex - 1"
                    let expr_6525 := checked_sub_t_uint256(expr_6523, convert_t_rational_1_by_1_to_t_uint256(expr_6524))

                    /// @src 43:3392:3430  "uint256 toDeleteIndex = valueIndex - 1"
                    let var_toDeleteIndex_6522 := expr_6525
                    /// @src 43:3464:3467  "set"
                    let _757_slot := var_set_6504_slot
                    let expr_6529_slot := _757_slot
                    /// @src 43:3464:3475  "set._values"
                    let _758 := add(expr_6529_slot, 0)
                    let _759_slot := _758
                    let expr_6530_slot := _759_slot
                    /// @src 43:3464:3482  "set._values.length"
                    let expr_6531 := array_length_t_array$_t_bytes32_$dyn_storage(expr_6530_slot)
                    /// @src 43:3485:3486  "1"
                    let expr_6532 := 0x01
                    /// @src 43:3464:3486  "set._values.length - 1"
                    let expr_6533 := checked_sub_t_uint256(expr_6531, convert_t_rational_1_by_1_to_t_uint256(expr_6532))

                    /// @src 43:3444:3486  "uint256 lastIndex = set._values.length - 1"
                    let var_lastIndex_6528 := expr_6533
                    /// @src 43:3505:3514  "lastIndex"
                    let _760 := var_lastIndex_6528
                    let expr_6535 := _760
                    /// @src 43:3518:3531  "toDeleteIndex"
                    let _761 := var_toDeleteIndex_6522
                    let expr_6536 := _761
                    /// @src 43:3505:3531  "lastIndex != toDeleteIndex"
                    let expr_6537 := iszero(eq(cleanup_t_uint256(expr_6535), cleanup_t_uint256(expr_6536)))
                    /// @src 43:3501:3899  "if (lastIndex != toDeleteIndex) {..."
                    if expr_6537 {
                        /// @src 43:3571:3574  "set"
                        let _762_slot := var_set_6504_slot
                        let expr_6540_slot := _762_slot
                        /// @src 43:3571:3582  "set._values"
                        let _763 := add(expr_6540_slot, 0)
                        let _764_slot := _763
                        let expr_6541_slot := _764_slot
                        /// @src 43:3583:3592  "lastIndex"
                        let _765 := var_lastIndex_6528
                        let expr_6542 := _765
                        /// @src 43:3571:3593  "set._values[lastIndex]"

                        let _766, _767 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_6541_slot, expr_6542)
                        let _768 := read_from_storage_split_dynamic_t_bytes32(_766, _767)
                        let expr_6543 := _768
                        /// @src 43:3551:3593  "bytes32 lastValue = set._values[lastIndex]"
                        let var_lastValue_6539 := expr_6543
                        /// @src 43:3722:3731  "lastValue"
                        let _769 := var_lastValue_6539
                        let expr_6550 := _769
                        /// @src 43:3693:3696  "set"
                        let _770_slot := var_set_6504_slot
                        let expr_6545_slot := _770_slot
                        /// @src 43:3693:3704  "set._values"
                        let _771 := add(expr_6545_slot, 0)
                        let _772_slot := _771
                        let expr_6548_slot := _772_slot
                        /// @src 43:3705:3718  "toDeleteIndex"
                        let _773 := var_toDeleteIndex_6522
                        let expr_6547 := _773
                        /// @src 43:3693:3719  "set._values[toDeleteIndex]"

                        let _774, _775 := storage_array_index_access_t_array$_t_bytes32_$dyn_storage(expr_6548_slot, expr_6547)
                        /// @src 43:3693:3731  "set._values[toDeleteIndex] = lastValue"
                        update_storage_value_t_bytes32_to_t_bytes32(_774, _775, expr_6550)
                        let expr_6551 := expr_6550
                        /// @src 43:3831:3841  "valueIndex"
                        let _776 := var_valueIndex_6512
                        let expr_6558 := _776
                        /// @src 43:3805:3808  "set"
                        let _777_slot := var_set_6504_slot
                        let expr_6553_slot := _777_slot
                        /// @src 43:3805:3817  "set._indexes"
                        let _778 := add(expr_6553_slot, 1)
                        let _779_slot := _778
                        let expr_6556_slot := _779_slot
                        /// @src 43:3818:3827  "lastValue"
                        let _780 := var_lastValue_6539
                        let expr_6555 := _780
                        /// @src 43:3805:3828  "set._indexes[lastValue]"
                        let _781 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_6556_slot,expr_6555)
                        /// @src 43:3805:3841  "set._indexes[lastValue] = valueIndex"
                        update_storage_value_offset_0t_uint256_to_t_uint256(_781, expr_6558)
                        let expr_6559 := expr_6558
                        /// @src 43:3501:3899  "if (lastIndex != toDeleteIndex) {..."
                    }
                    /// @src 43:3977:3980  "set"
                    let _782_slot := var_set_6504_slot
                    let expr_6563_slot := _782_slot
                    /// @src 43:3977:3988  "set._values"
                    let _783 := add(expr_6563_slot, 0)
                    let _784_slot := _783
                    let expr_6566_slot := _784_slot
                    /// @src 43:3977:3992  "set._values.pop"
                    let expr_6567_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_6566_slot)
                    array_pop_t_array$_t_bytes32_$dyn_storage_ptr(expr_6567_self_slot)
                    /// @src 43:4069:4072  "set"
                    let _785_slot := var_set_6504_slot
                    let expr_6570_slot := _785_slot
                    /// @src 43:4069:4081  "set._indexes"
                    let _786 := add(expr_6570_slot, 1)
                    let _787_slot := _786
                    let expr_6571_slot := _787_slot
                    /// @src 43:4082:4087  "value"
                    let _788 := var_value_6506
                    let expr_6572 := _788
                    /// @src 43:4069:4088  "set._indexes[value]"
                    let _789 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_6571_slot,expr_6572)
                    /// @src 43:4062:4088  "delete set._indexes[value]"
                    storage_set_to_zero_t_uint256(_789, 0)
                    /// @src 43:4110:4114  "true"
                    let expr_6576 := 0x01
                    /// @src 43:4103:4114  "return true"
                    var__6509 := expr_6576
                    leave
                    /// @src 43:3019:4168  "if (valueIndex != 0) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(array , value0) {

                let oldLen := sload(array)
                if iszero(lt(oldLen, 18446744073709551616)) { panic_error_0x41() }
                sstore(array, add(oldLen, 1))
                let slot, offset := storage_array_index_access_t_array$_t_bytes32_$dyn_storage_ptr(array, oldLen)
                update_storage_value_t_bytes32_to_t_bytes32(slot, offset , value0)

            }
            /// @ast-id 6500
            /// @src 43:2214:2618  "function _add(Set storage set, bytes32 value) private returns (bool) {..."
            function fun__add_6500(var_set_6462_slot, var_value_6464) -> var__6467 {
                /// @src 43:2277:2281  "bool"
                let zero_t_bool_790 := zero_value_for_split_t_bool()
                var__6467 := zero_t_bool_790

                /// @src 43:2308:2311  "set"
                let _791_slot := var_set_6462_slot
                let expr_6470_slot := _791_slot
                /// @src 43:2313:2318  "value"
                let _792 := var_value_6464
                let expr_6471 := _792
                /// @src 43:2298:2319  "_contains(set, value)"
                let expr_6472 := fun__contains_6603(expr_6470_slot, expr_6471)
                /// @src 43:2297:2319  "!_contains(set, value)"
                let expr_6473 := cleanup_t_bool(iszero(expr_6472))
                /// @src 43:2293:2612  "if (!_contains(set, value)) {..."
                switch expr_6473
                case 0 {
                    /// @src 43:2596:2601  "false"
                    let expr_6495 := 0x00
                    /// @src 43:2589:2601  "return false"
                    var__6467 := expr_6495
                    leave
                    /// @src 43:2293:2612  "if (!_contains(set, value)) {..."
                }
                default {
                    /// @src 43:2335:2338  "set"
                    let _793_slot := var_set_6462_slot
                    let expr_6474_slot := _793_slot
                    /// @src 43:2335:2346  "set._values"
                    let _794 := add(expr_6474_slot, 0)
                    let _795_slot := _794
                    let expr_6477_slot := _795_slot
                    /// @src 43:2335:2351  "set._values.push"
                    let expr_6478_self_slot := convert_array_t_array$_t_bytes32_$dyn_storage_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_6477_slot)
                    /// @src 43:2352:2357  "value"
                    let _796 := var_value_6464
                    let expr_6479 := _796
                    /// @src 43:2335:2358  "set._values.push(value)"
                    array_push_from_t_bytes32_to_t_array$_t_bytes32_$dyn_storage_ptr(expr_6478_self_slot, expr_6479)
                    /// @src 43:2515:2518  "set"
                    let _797_slot := var_set_6462_slot
                    let expr_6487_slot := _797_slot
                    /// @src 43:2515:2526  "set._values"
                    let _798 := add(expr_6487_slot, 0)
                    let _799_slot := _798
                    let expr_6488_slot := _799_slot
                    /// @src 43:2515:2533  "set._values.length"
                    let expr_6489 := array_length_t_array$_t_bytes32_$dyn_storage(expr_6488_slot)
                    /// @src 43:2493:2496  "set"
                    let _800_slot := var_set_6462_slot
                    let expr_6482_slot := _800_slot
                    /// @src 43:2493:2505  "set._indexes"
                    let _801 := add(expr_6482_slot, 1)
                    let _802_slot := _801
                    let expr_6485_slot := _802_slot
                    /// @src 43:2506:2511  "value"
                    let _803 := var_value_6464
                    let expr_6484 := _803
                    /// @src 43:2493:2512  "set._indexes[value]"
                    let _804 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_6485_slot,expr_6484)
                    /// @src 43:2493:2533  "set._indexes[value] = set._values.length"
                    update_storage_value_offset_0t_uint256_to_t_uint256(_804, expr_6489)
                    let expr_6490 := expr_6489
                    /// @src 43:2554:2558  "true"
                    let expr_6492 := 0x01
                    /// @src 43:2547:2558  "return true"
                    var__6467 := expr_6492
                    leave
                    /// @src 43:2293:2612  "if (!_contains(set, value)) {..."
                }

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_7925(var_initialOwner_7922) {

                /// @src 23:5374:5387  "_initializing"
                let _805 := read_from_storage_split_offset_1_t_bool(0x00)
                let expr_7168 := _805
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun__initialize_7945_inner(var_initialOwner_7922)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @src 0:1585:1853  "function _initialize(..."
            function fun__initialize_7945_inner(var_initialOwner_7922) {

                /// @src 0:1690:1702  "initialOwner"
                let _806 := var_initialOwner_7922
                let expr_7927 := _806
                /// @src 0:1714:1715  "0"
                let expr_7930 := 0x00
                /// @src 0:1706:1716  "address(0)"
                let expr_7931 := convert_t_rational_0_by_1_to_t_address(expr_7930)
                /// @src 0:1690:1716  "initialOwner == address(0)"
                let expr_7932 := eq(cleanup_t_address(expr_7927), cleanup_t_address(expr_7931))
                /// @src 0:1686:1786  "if (initialOwner == address(0)) {..."
                if expr_7932 {
                    /// @src 0:1739:1775  "OwnableCannotSetZeroAddressAsOwner()"
                    {
                        let _807 := allocate_unbounded()
                        mstore(_807, 12142680069602726729021672202160923729220853187416205435232232065146107723776)
                        let _808 := abi_encode_tuple__to__fromStack(add(_807, 4) )
                        revert(_807, sub(_808, _807))
                    }/// @src 0:1686:1786  "if (initialOwner == address(0)) {..."
                }
                /// @src 0:1833:1845  "initialOwner"
                let _809 := var_initialOwner_7922
                let expr_7941 := _809
                fun__transferOwnership_9169(expr_7941)

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 7945
            /// @src 0:1585:1853  "function _initialize(..."
            function fun__initialize_7945(var_initialOwner_7922) {

                modifier_onlyInitializing_7925(var_initialOwner_7922)
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 8091
            /// @src 0:5584:5772  "function _setData(..."
            function fun__setData_8091(var_dataKey_8074, var_dataValue_8076_mpos) {

                /// @src 0:5710:5719  "dataValue"
                let _810_mpos := var_dataValue_8076_mpos
                let expr_8082_mpos := _810_mpos
                /// @src 0:5692:5698  "_store"
                let _811_slot := 0x97
                let expr_8079_slot := _811_slot
                /// @src 0:5699:5706  "dataKey"
                let _812 := var_dataKey_8074
                let expr_8080 := _812
                /// @src 0:5692:5707  "_store[dataKey]"
                let _813 := mapping_index_access_t_mapping$_t_bytes32_$_t_bytes_storage_$_of_t_bytes32(expr_8079_slot,expr_8080)
                /// @src 0:5692:5719  "_store[dataKey] = dataValue"
                update_storage_value_offset_0t_bytes_memory_ptr_to_t_bytes_storage(_813, expr_8082_mpos)
                let _814_slot := _813
                let expr_8083_slot := _814_slot
                /// @src 0:5746:5753  "dataKey"
                let _815 := var_dataKey_8074
                let expr_8086 := _815
                /// @src 0:5755:5764  "dataValue"
                let _816_mpos := var_dataValue_8076_mpos
                let expr_8087_mpos := _816_mpos
                /// @src 0:5734:5765  "DataChanged(dataKey, dataValue)"
                let _817 := 0xece574603820d07bc9b91f2a932baadf4628aabcb8afba49776529c14a6104b2
                let _818 := convert_t_bytes32_to_t_bytes32(expr_8086)
                {
                    let _819 := allocate_unbounded()
                    let _820 := abi_encode_tuple_t_bytes_memory_ptr__to_t_bytes_memory_ptr__fromStack(_819 , expr_8087_mpos)
                    log2(_819, sub(_820, _819) , _817, _818)
                }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function cleanup_t_bytes2(value) -> cleaned {
                cleaned := and(value, 0xffff000000000000000000000000000000000000000000000000000000000000)
            }

            function shift_left_240(value) -> newValue {
                newValue :=

                shl(240, value)

            }

            function convert_t_rational_0_by_1_to_t_bytes2(value) -> converted {
                converted := cleanup_t_bytes2(shift_left_240(cleanup_t_rational_0_by_1(value)))
            }

            function leftAlign_t_bytes10(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes10_to_t_bytes10_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes10(cleanup_t_bytes10(value)))
            }

            function leftAlign_t_bytes2(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes2_to_t_bytes2_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes2(cleanup_t_bytes2(value)))
            }

            function leftAlign_t_bytes20(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_bytes20_to_t_bytes20_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_bytes20(cleanup_t_bytes20(value)))
            }

            function abi_encode_tuple_packed_t_bytes10_t_bytes2_t_bytes20__to_t_bytes10_t_bytes2_t_bytes20__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                abi_encode_t_bytes10_to_t_bytes10_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 10)

                abi_encode_t_bytes2_to_t_bytes2_nonPadded_inplace_fromStack(value1,  pos)
                pos := add(pos, 2)

                abi_encode_t_bytes20_to_t_bytes20_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 20)

                end := pos
            }

            function bytes_concat_t_bytes10_t_bytes2_t_bytes20(param_0, param_1, param_2) -> outPtr {
                outPtr := allocate_unbounded()
                let dataStart := add(outPtr, 0x20)
                let dataEnd := abi_encode_tuple_packed_t_bytes10_t_bytes2_t_bytes20__to_t_bytes10_t_bytes2_t_bytes20__nonPadded_inplace_fromStack(dataStart, param_0, param_1, param_2)
                mstore(outPtr, sub(dataEnd, dataStart))
                finalize_allocation(outPtr, sub(dataEnd, outPtr))
            }

            function convert_bytes_to_fixedbytes_from_t_bytes_memory_ptr_to_t_bytes32(array) -> value {

                let length := array_length_t_bytes_memory_ptr(array)
                let dataArea := array

                dataArea := array_dataslot_t_bytes_memory_ptr(array)

                value := read_from_memoryt_bytes32(dataArea)

                if lt(length, 32) {
                    value := and(
                        value,
                        shift_left_dynamic(
                            mul(8, sub(32, length)),
                            0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                        )
                    )
                }

            }

            /// @ast-id 5350
            /// @src 13:5197:5497  "function generateMappingKey(..."
            function fun_generateMappingKey_5350(var_keyPrefix_5324, var_bytes20Value_5326) -> var__5329 {
                /// @src 13:5311:5318  "bytes32"
                let zero_t_bytes32_821 := zero_value_for_split_t_bytes32()
                var__5329 := zero_t_bytes32_821

                /// @src 13:5384:5393  "keyPrefix"
                let _822 := var_keyPrefix_5324
                let expr_5336 := _822
                /// @src 13:5414:5415  "0"
                let expr_5339 := 0x00
                /// @src 13:5407:5416  "bytes2(0)"
                let expr_5340 := convert_t_rational_0_by_1_to_t_bytes2(expr_5339)
                /// @src 13:5430:5442  "bytes20Value"
                let _823 := var_bytes20Value_5326
                let expr_5341 := _823
                /// @src 13:5358:5452  "bytes.concat(..."
                let expr_5342_mpos := bytes_concat_t_bytes10_t_bytes2_t_bytes20(expr_5336, expr_5340, expr_5341)
                /// @src 13:5330:5452  "bytes memory generatedKey = bytes.concat(..."
                let var_generatedKey_5332_mpos := expr_5342_mpos
                /// @src 13:5477:5489  "generatedKey"
                let _824_mpos := var_generatedKey_5332_mpos
                let expr_5346_mpos := _824_mpos
                /// @src 13:5469:5490  "bytes32(generatedKey)"
                let expr_5347 := convert_bytes_to_fixedbytes_from_t_bytes_memory_ptr_to_t_bytes32(expr_5346_mpos)
                /// @src 13:5462:5490  "return bytes32(generatedKey)"
                var__5329 := expr_5347
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            /// @ast-id 6603
            /// @src 43:4255:4382  "function _contains(Set storage set, bytes32 value) private view returns (bool) {..."
            function fun__contains_6603(var_set_6588_slot, var_value_6590) -> var__6593 {
                /// @src 43:4328:4332  "bool"
                let zero_t_bool_825 := zero_value_for_split_t_bool()
                var__6593 := zero_t_bool_825

                /// @src 43:4351:4354  "set"
                let _826_slot := var_set_6588_slot
                let expr_6595_slot := _826_slot
                /// @src 43:4351:4363  "set._indexes"
                let _827 := add(expr_6595_slot, 1)
                let _828_slot := _827
                let expr_6596_slot := _828_slot
                /// @src 43:4364:4369  "value"
                let _829 := var_value_6590
                let expr_6597 := _829
                /// @src 43:4351:4370  "set._indexes[value]"
                let _830 := mapping_index_access_t_mapping$_t_bytes32_$_t_uint256_$_of_t_bytes32(expr_6596_slot,expr_6597)
                let _831 := read_from_storage_split_offset_0_t_uint256(_830)
                let expr_6598 := _831
                /// @src 43:4374:4375  "0"
                let expr_6599 := 0x00
                /// @src 43:4351:4375  "set._indexes[value] != 0"
                let expr_6600 := iszero(eq(cleanup_t_uint256(expr_6598), convert_t_rational_0_by_1_to_t_uint256(expr_6599)))
                /// @src 43:4344:4375  "return set._indexes[value] != 0"
                var__6593 := expr_6600
                leave

            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

            function panic_error_0x51() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x51)
                revert(0, 0x24)
            }

            /// @src 49:1613:9158  "contract SLYXToken is..."
            function dispatch_internal_in_1_out_1(fun, in_0) -> out_0 {
                switch fun

                case 1
                {
                    out_0 := fun_supportsInterface_7534(in_0)
                }

                default { panic_error_0x51() }
            }
            /// @src 49:1613:9158  "contract SLYXToken is..."

        }

        data ".metadata" hex"a2646970667358221220f66b2ada69fd9ab49cf8f75afcf94258ce807d723611b1113fb489b04be59cca64736f6c63430008160033"
    }

}

