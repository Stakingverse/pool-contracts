
/// @use-src 4:"node_modules/@erc725/smart-contracts/contracts/custom/OwnableUnset.sol", 23:"node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol", 24:"node_modules/@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol", 25:"node_modules/@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol", 27:"node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol", 39:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol", 41:"node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol", 46:"src/IVault.sol", 50:"src/StakingverseVault.sol"
object "StakingverseVault_4835" {
    code {
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."
        mstore(64, memoryguard(128))
        if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }

        constructor_StakingverseVault_4835()

        let _1 := allocate_unbounded()
        codecopy(_1, dataoffset("StakingverseVault_4835_deployed"), datasize("StakingverseVault_4835_deployed"))

        return(_1, datasize("StakingverseVault_4835_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
            revert(0, 0)
        }

        /// @ast-id 3401
        /// @src 50:6653:6706  "constructor() {..."
        function constructor_StakingverseVault_4835() {

            /// @src 50:6653:6706  "constructor() {..."
            constructor_PausableUpgradeable_1992()

            fun__disableInitializers_7210()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 24:677:3107  "abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {..."
        function constructor_PausableUpgradeable_1992() {

            /// @src 24:677:3107  "abstract contract PausableUpgradeable is Initializable, ContextUpgradeable {..."
            constructor_ContextUpgradeable_7280()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 27:687:1483  "abstract contract ContextUpgradeable is Initializable {..."
        function constructor_ContextUpgradeable_7280() {

            /// @src 27:687:1483  "abstract contract ContextUpgradeable is Initializable {..."
            constructor_ReentrancyGuardUpgradeable_7511()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 25:952:3682  "abstract contract ReentrancyGuardUpgradeable is Initializable {..."
        function constructor_ReentrancyGuardUpgradeable_7511() {

            /// @src 25:952:3682  "abstract contract ReentrancyGuardUpgradeable is Initializable {..."
            constructor_Initializable_7229()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 23:2394:6640  "abstract contract Initializable {..."
        function constructor_Initializable_7229() {

            /// @src 23:2394:6640  "abstract contract Initializable {..."
            constructor_OwnableUnset_7426()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 4:488:2329  "abstract contract OwnableUnset {..."
        function constructor_OwnableUnset_7426() {

            /// @src 4:488:2329  "abstract contract OwnableUnset {..."
            constructor_ERC165_7535()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 39:726:986  "abstract contract ERC165 is IERC165 {..."
        function constructor_ERC165_7535() {

            /// @src 39:726:986  "abstract contract ERC165 is IERC165 {..."
            constructor_IERC165_8187()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 41:405:852  "interface IERC165 {..."
        function constructor_IERC165_8187() {

            /// @src 41:405:852  "interface IERC165 {..."
            constructor_IVault_7828()

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        /// @src 46:65:5041  "interface IVault {..."
        function constructor_IVault_7828() {

            /// @src 46:65:5041  "interface IVault {..."

        }
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        function shift_right_168_unsigned(value) -> newValue {
            newValue :=

            shr(168, value)

        }

        function cleanup_from_storage_t_bool(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function extract_from_storage_value_offset_21t_bool(slot_value) -> value {
            value := cleanup_from_storage_t_bool(shift_right_168_unsigned(slot_value))
        }

        function read_from_storage_split_offset_21_t_bool(slot) -> value {
            value := extract_from_storage_value_offset_21t_bool(sload(slot))

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

        function shift_right_160_unsigned(value) -> newValue {
            newValue :=

            shr(160, value)

        }

        function cleanup_from_storage_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function extract_from_storage_value_offset_20t_uint8(slot_value) -> value {
            value := cleanup_from_storage_t_uint8(shift_right_160_unsigned(slot_value))
        }

        function read_from_storage_split_offset_20_t_uint8(slot) -> value {
            value := extract_from_storage_value_offset_20t_uint8(sload(slot))

        }

        function cleanup_t_uint8(value) -> cleaned {
            cleaned := and(value, 0xff)
        }

        function shift_left_160(value) -> newValue {
            newValue :=

            shl(160, value)

        }

        function update_byte_slice_1_shift_20(value, toInsert) -> result {
            let mask := 0xff0000000000000000000000000000000000000000
            toInsert := shift_left_160(toInsert)
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

        function update_storage_value_offset_20t_uint8_to_t_uint8(slot, value_0) {
            let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
            sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_uint8(convertedValue_0)))
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
            let _2 := read_from_storage_split_offset_21_t_bool(0x00)
            let expr_7179 := _2
            /// @src 23:6006:6020  "!_initializing"
            let expr_7180 := cleanup_t_bool(iszero(expr_7179))
            /// @src 23:5998:6064  "require(!_initializing, \"Initializable: contract is initializing\")"
            require_helper_t_stringliteral_a53f5879e7518078ff19b2e3d6b41e757a87364ec6872787feb45bfc41131d1a(expr_7180)
            /// @src 23:6078:6090  "_initialized"
            let _3 := read_from_storage_split_offset_20_t_uint8(0x00)
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
                update_storage_value_offset_20t_uint8_to_t_uint8(0x00, expr_7196)
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
        /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

    }
    /// @use-src 4:"node_modules/@erc725/smart-contracts/contracts/custom/OwnableUnset.sol", 23:"node_modules/@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol", 24:"node_modules/@openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol", 25:"node_modules/@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol", 26:"node_modules/@openzeppelin/contracts-upgradeable/utils/AddressUpgradeable.sol", 27:"node_modules/@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol", 39:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol", 40:"node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol", 42:"node_modules/@openzeppelin/contracts/utils/math/Math.sol", 44:"src/IDepositContract.sol", 50:"src/StakingverseVault.sol"
    object "StakingverseVault_4835_deployed" {
        code {
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."
            mstore(64, 128)

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x00f714ce
                {
                    // withdraw(uint256,address)

                    external_fun_withdraw_4317()
                }

                case 0x01e1d114
                {
                    // totalAssets()

                    external_fun_totalAssets_3946()
                }

                case 0x01ffc9a7
                {
                    // supportsInterface(bytes4)

                    external_fun_supportsInterface_3422()
                }

                case 0x05a3b809
                {
                    // isAllowlisted(address)

                    external_fun_isAllowlisted_3729()
                }

                case 0x0c5642d3
                {
                    // isValidatorRegistered(bytes)

                    external_fun_isValidatorRegistered_4573()
                }

                case 0x13114a9d
                {
                    // totalFees()

                    external_fun_totalFees_3350()
                }

                case 0x1ab971ab
                {
                    // setFee(uint32)

                    external_fun_setFee_3592()
                }

                case 0x24daddc5
                {
                    // setRestricted(bool)

                    external_fun_setRestricted_3745()
                }

                case 0x35077ba9
                {
                    // totalValidatorsRegistered()

                    external_fun_totalValidatorsRegistered_3344()
                }

                case 0x3a98ef39
                {
                    // totalShares()

                    external_fun_totalShares_3336()
                }

                case 0x3f4ba83a
                {
                    // unpause()

                    external_fun_unpause_3558()
                }

                case 0x46904840
                {
                    // feeRecipient()

                    external_fun_feeRecipient_3348()
                }

                case 0x4838ed19
                {
                    // totalClaimable()

                    external_fun_totalClaimable_3378()
                }

                case 0x5235934d
                {
                    // totalUnstaked()

                    external_fun_totalUnstaked_3340()
                }

                case 0x570ca735
                {
                    // operator()

                    external_fun_operator_3380()
                }

                case 0x59b8c763
                {
                    // pendingBalanceOf(address)

                    external_fun_pendingBalanceOf_3807()
                }

                case 0x5c975abb
                {
                    // paused()

                    external_fun_paused_1931()
                }

                case 0x68f8b928
                {
                    // registerValidator(bytes,bytes,bytes32)

                    external_fun_registerValidator_4654()
                }

                case 0x7072c6b1
                {
                    // restricted()

                    external_fun_restricted_3352()
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    external_fun_balanceOf_3794()
                }

                case 0x715018a6
                {
                    // renounceOwnership()

                    external_fun_renounceOwnership_7362()
                }

                case 0x7d7c2a1c
                {
                    // rebalance()

                    external_fun_rebalance_4561()
                }

                case 0x817b1cd2
                {
                    // totalStaked()

                    external_fun_totalStaked_3338()
                }

                case 0x8456cb59
                {
                    // pause()

                    external_fun_pause_3549()
                }

                case 0x8da5cb5b
                {
                    // owner()

                    external_fun_owner_7340()
                }

                case 0x9c3ee244
                {
                    // claimableBalanceOf(address)

                    external_fun_claimableBalanceOf_3829()
                }

                case 0xa5ea2d7a
                {
                    // registerValidators(bytes[],bytes[],bytes32[])

                    external_fun_registerValidators_4711()
                }

                case 0xa8593a42
                {
                    // allowlist(address,bool)

                    external_fun_allowlist_3717()
                }

                case 0xa97e5c93
                {
                    // isOracle(address)

                    external_fun_isOracle_3696()
                }

                case 0xaca756ad
                {
                    // enableOracle(address,bool)

                    external_fun_enableOracle_3684()
                }

                case 0xb3ab15fb
                {
                    // setOperator(address)

                    external_fun_setOperator_3513()
                }

                case 0xbdc8144b
                {
                    // setDepositLimit(uint256)

                    external_fun_setDepositLimit_3663()
                }

                case 0xc0c53b8b
                {
                    // initialize(address,address,address)

                    external_fun_initialize_3471()
                }

                case 0xd41e9720
                {
                    // totalPendingWithdrawal()

                    external_fun_totalPendingWithdrawal_3342()
                }

                case 0xddca3f43
                {
                    // fee()

                    external_fun_fee_3346()
                }

                case 0xddd5e1b2
                {
                    // claim(uint256,address)

                    external_fun_claim_3931()
                }

                case 0xe74b981b
                {
                    // setFeeRecipient(address)

                    external_fun_setFeeRecipient_3625()
                }

                case 0xecf70858
                {
                    // depositLimit()

                    external_fun_depositLimit_3334()
                }

                case 0xf2f1042f
                {
                    // transferStake(address,uint256,bytes)

                    external_fun_transferStake_4834()
                }

                case 0xf2fde38b
                {
                    // transferOwnership(address)

                    external_fun_transferOwnership_7386()
                }

                case 0xf340fa01
                {
                    // deposit(address)

                    external_fun_deposit_4154()
                }

                case 0xf5eb42dc
                {
                    // sharesOf(address)

                    external_fun_sharesOf_3778()
                }

                case 0xfc4db323
                {
                    // claimFees(uint256,address)

                    external_fun_claimFees_4404()
                }

                default {}
            }
            if iszero(calldatasize()) { fun__3480() stop() }
            revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98()

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

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
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

            function abi_decode_tuple_t_uint256t_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function external_fun_withdraw_4317() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_withdraw_4317(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_totalAssets_3946() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_totalAssets_3946()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function external_fun_supportsInterface_3422() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bytes4(4, calldatasize())
                let ret_0 :=  fun_supportsInterface_3422(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_isAllowlisted_3729() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_isAllowlisted_3729(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
                revert(0, 0)
            }

            function revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() {
                revert(0, 0)
            }

            function revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() {
                revert(0, 0)
            }

            // bytes
            function abi_decode_t_bytes_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x01)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_bytes_calldata_ptr(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_isValidatorRegistered_4573() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_bytes_calldata_ptr(4, calldatasize())
                let ret_0 :=  fun_isValidatorRegistered_4573(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function shift_right_unsigned_dynamic(bits, value) -> newValue {
                newValue :=

                shr(bits, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_dynamict_uint256(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint256(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint256(sload(slot), offset)

            }

            /// @ast-id 3350
            /// @src 50:5719:5743  "uint256 public totalFees"
            function getter_fun_totalFees_3350() -> ret {

                let slot := 158
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalFees_3350() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalFees_3350()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function validator_revert_t_uint32(value) {
                if iszero(eq(value, cleanup_t_uint32(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint32(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint32(value)
            }

            function abi_decode_tuple_t_uint32(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint32(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setFee_3592() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint32(4, calldatasize())
                fun_setFee_3592(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function validator_revert_t_bool(value) {
                if iszero(eq(value, cleanup_t_bool(value))) { revert(0, 0) }
            }

            function abi_decode_t_bool(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_bool(value)
            }

            function abi_decode_tuple_t_bool(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setRestricted_3745() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_bool(4, calldatasize())
                fun_setRestricted_3745(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3344
            /// @src 50:5434:5474  "uint256 public totalValidatorsRegistered"
            function getter_fun_totalValidatorsRegistered_3344() -> ret {

                let slot := 156
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalValidatorsRegistered_3344() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalValidatorsRegistered_3344()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3336
            /// @src 50:4957:4983  "uint256 public totalShares"
            function getter_fun_totalShares_3336() -> ret {

                let slot := 152
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalShares_3336() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalShares_3336()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_unpause_3558() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_unpause_3558()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_address(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_dynamict_address(slot_value, offset) -> value {
                value := cleanup_from_storage_t_address(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_address(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_address(sload(slot), offset)

            }

            /// @ast-id 3348
            /// @src 50:5633:5660  "address public feeRecipient"
            function getter_fun_feeRecipient_3348() -> ret {

                let slot := 157
                let offset := 4

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function abi_encode_t_address_to_t_address_fromStack(value, pos) {
                mstore(pos, cleanup_t_address(value))
            }

            function abi_encode_tuple_t_address__to_t_address__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_feeRecipient_3348() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_feeRecipient_3348()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3378
            /// @src 50:6444:6473  "uint256 public totalClaimable"
            function getter_fun_totalClaimable_3378() -> ret {

                let slot := 165
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalClaimable_3378() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalClaimable_3378()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3340
            /// @src 50:5144:5172  "uint256 public totalUnstaked"
            function getter_fun_totalUnstaked_3340() -> ret {

                let slot := 154
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalUnstaked_3340() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalUnstaked_3340()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3380
            /// @src 50:6479:6502  "address public operator"
            function getter_fun_operator_3380() -> ret {

                let slot := 166
                let offset := 0

                ret := read_from_storage_split_dynamic_t_address(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_operator_3380() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_operator_3380()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_pendingBalanceOf_3807() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_pendingBalanceOf_3807(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
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

            function abi_decode_tuple_t_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes32(headStart, dataEnd) -> value0, value1, value2, value3, value4 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_bytes_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value4 := abi_decode_t_bytes32(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_registerValidator_4654() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4 :=  abi_decode_tuple_t_bytes_calldata_ptrt_bytes_calldata_ptrt_bytes32(4, calldatasize())
                fun_registerValidator_4654(param_0, param_1, param_2, param_3, param_4)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_bool(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_dynamict_bool(slot_value, offset) -> value {
                value := cleanup_from_storage_t_bool(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_bool(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_bool(sload(slot), offset)

            }

            /// @ast-id 3352
            /// @src 50:5802:5824  "bool public restricted"
            function getter_fun_restricted_3352() -> ret {

                let slot := 159
                let offset := 0

                ret := read_from_storage_split_dynamic_t_bool(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_restricted_3352() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_restricted_3352()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_balanceOf_3794() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_balanceOf_3794(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_renounceOwnership_7362() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_renounceOwnership_7362()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_rebalance_4561() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_rebalance_4561()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3338
            /// @src 50:5048:5074  "uint256 public totalStaked"
            function getter_fun_totalStaked_3338() -> ret {

                let slot := 153
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalStaked_3338() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalStaked_3338()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_pause_3549() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                fun_pause_3549()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_owner_7340() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  fun_owner_7340()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_address__to_t_address__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_claimableBalanceOf_3829() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_claimableBalanceOf_3829(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            // bytes[]
            function abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            // bytes32[]
            function abi_decode_t_array$_t_bytes32_$dyn_calldata_ptr(offset, end) -> arrayPos, length {
                if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert_error_15abf5612cd996bc235ba1e55a4a30ac60e6bb601ff7ba4ad3f179b6be8d0490() }
                arrayPos := add(offset, 0x20)
                if gt(add(arrayPos, mul(length, 0x20)), end) { revert_error_81385d8c0b31fffe14be1da910c8bd3a80be4cfa248e04f42ec0faea3132a8ef() }
            }

            function abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptrt_array$_t_bytes_calldata_ptr_$dyn_calldata_ptrt_array$_t_bytes32_$dyn_calldata_ptr(headStart, dataEnd) -> value0, value1, value2, value3, value4, value5 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := calldataload(add(headStart, 0))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value0, value1 := abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 32))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value2, value3 := abi_decode_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

                {

                    let offset := calldataload(add(headStart, 64))
                    if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                    value4, value5 := abi_decode_t_array$_t_bytes32_$dyn_calldata_ptr(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_registerValidators_4711() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3, param_4, param_5 :=  abi_decode_tuple_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptrt_array$_t_bytes_calldata_ptr_$dyn_calldata_ptrt_array$_t_bytes32_$dyn_calldata_ptr(4, calldatasize())
                fun_registerValidators_4711(param_0, param_1, param_2, param_3, param_4, param_5)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_addresst_bool(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_bool(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_allowlist_3717() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                fun_allowlist_3717(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_isOracle_3696() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_isOracle_3696(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_enableOracle_3684() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_addresst_bool(4, calldatasize())
                fun_enableOracle_3684(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_setOperator_3513() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_setOperator_3513(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function abi_decode_tuple_t_uint256(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_setDepositLimit_3663() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_uint256(4, calldatasize())
                fun_setDepositLimit_3663(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_t_contract$_IDepositContract_$7584(value) -> cleaned {
                cleaned := cleanup_t_address(value)
            }

            function validator_revert_t_contract$_IDepositContract_$7584(value) {
                if iszero(eq(value, cleanup_t_contract$_IDepositContract_$7584(value))) { revert(0, 0) }
            }

            function abi_decode_t_contract$_IDepositContract_$7584(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_contract$_IDepositContract_$7584(value)
            }

            function abi_decode_tuple_t_addresst_addresst_contract$_IDepositContract_$7584(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

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

                    value2 := abi_decode_t_contract$_IDepositContract_$7584(add(headStart, offset), dataEnd)
                }

            }

            function external_fun_initialize_3471() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_contract$_IDepositContract_$7584(4, calldatasize())
                fun_initialize_3471(param_0, param_1, param_2)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3342
            /// @src 50:5341:5378  "uint256 public totalPendingWithdrawal"
            function getter_fun_totalPendingWithdrawal_3342() -> ret {

                let slot := 155
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_totalPendingWithdrawal_3342() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_totalPendingWithdrawal_3342()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function cleanup_from_storage_t_uint32(value) -> cleaned {
                cleaned := and(value, 0xffffffff)
            }

            function extract_from_storage_value_dynamict_uint32(slot_value, offset) -> value {
                value := cleanup_from_storage_t_uint32(shift_right_unsigned_dynamic(mul(offset, 8), slot_value))
            }

            function read_from_storage_split_dynamic_t_uint32(slot, offset) -> value {
                value := extract_from_storage_value_dynamict_uint32(sload(slot), offset)

            }

            /// @ast-id 3346
            /// @src 50:5518:5535  "uint32 public fee"
            function getter_fun_fee_3346() -> ret {

                let slot := 157
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint32(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function abi_encode_t_uint32_to_t_uint32_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint32(value))
            }

            function abi_encode_tuple_t_uint32__to_t_uint32__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint32_to_t_uint32_fromStack(value0,  add(headStart, 0))

            }

            function external_fun_fee_3346() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_fee_3346()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint32__to_t_uint32__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_claim_3931() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_claim_3931(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_setFeeRecipient_3625() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_setFeeRecipient_3625(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            /// @ast-id 3334
            /// @src 50:4881:4908  "uint256 public depositLimit"
            function getter_fun_depositLimit_3334() -> ret {

                let slot := 151
                let offset := 0

                ret := read_from_storage_split_dynamic_t_uint256(slot, offset)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function external_fun_depositLimit_3334() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                abi_decode_tuple_(4, calldatasize())
                let ret_0 :=  getter_fun_depositLimit_3334()
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

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

            function external_fun_transferStake_4834() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1, param_2, param_3 :=  abi_decode_tuple_t_addresst_uint256t_bytes_calldata_ptr(4, calldatasize())
                fun_transferStake_4834(param_0, param_1, param_2, param_3)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_transferOwnership_7386() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_transferOwnership_7386(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_deposit_4154() {

                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                fun_deposit_4154(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_sharesOf_3778() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                let ret_0 :=  fun_sharesOf_3778(param_0)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                return(memPos, sub(memEnd, memPos))

            }

            function external_fun_claimFees_4404() {

                if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                let param_0, param_1 :=  abi_decode_tuple_t_uint256t_address(4, calldatasize())
                fun_claimFees_4404(param_0, param_1)
                let memPos := allocate_unbounded()
                let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                return(memPos, sub(memEnd, memPos))

            }

            function revert_error_d228b4ceac16d8e91d6dc7ca8d4a5394f524b2e550555324088cb23b86b87b98() {
                revert(0, 0)
            }

            /// @ast-id 7471
            /// @src 25:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4163(var_amount_4157, var_beneficiary_4159) {

                fun__nonReentrantBefore_7486()
                /// @src 25:2557:2558  "_"
                modifier_whenNotPaused_4165(var_amount_4157, var_beneficiary_4159)
                fun__nonReentrantAfter_7494()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_4165(var_amount_4157, var_beneficiary_4159) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_withdraw_4317_inner(var_amount_4157, var_beneficiary_4159)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function convert_t_rational_0_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_0_by_1(value)))
            }

            function abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

            }

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                diff := sub(x, y)

                if gt(diff, x) { panic_error_0x11() }

            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

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

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                sum := add(x, y)

                if gt(x, sum) { panic_error_0x11() }

            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(memPtr) {

            }

            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, 0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                end := add(pos, 0)
            }

            function abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(pos ) -> end {

                pos := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack( pos)

                end := pos
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

            function allocate_memory_array_t_bytes_memory_ptr(length) -> memPtr {
                let allocSize := array_allocation_size_t_bytes_memory_ptr(length)
                memPtr := allocate_memory(allocSize)

                mstore(memPtr, length)

            }

            function zero_value_for_split_t_bytes_memory_ptr() -> ret {
                ret := 96
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

            function abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            /// @src 50:14139:15613  "function withdraw(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_withdraw_4317_inner(var_amount_4157, var_beneficiary_4159) {

                /// @src 50:14253:14264  "beneficiary"
                let _1 := var_beneficiary_4159
                let expr_4167 := _1
                /// @src 50:14276:14277  "0"
                let expr_4170 := 0x00
                /// @src 50:14268:14278  "address(0)"
                let expr_4171 := convert_t_rational_0_by_1_to_t_address(expr_4170)
                /// @src 50:14253:14278  "beneficiary == address(0)"
                let expr_4172 := eq(cleanup_t_address(expr_4167), cleanup_t_address(expr_4171))
                /// @src 50:14249:14339  "if (beneficiary == address(0)) {..."
                if expr_4172 {
                    /// @src 50:14316:14327  "beneficiary"
                    let _2 := var_beneficiary_4159
                    let expr_4174 := _2
                    /// @src 50:14301:14328  "InvalidAddress(beneficiary)"
                    {
                        let _3 := allocate_unbounded()
                        mstore(_3, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _4 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_3, 4) , expr_4174)
                        revert(_3, sub(_4, _3))
                    }/// @src 50:14249:14339  "if (beneficiary == address(0)) {..."
                }
                /// @src 50:14366:14376  "msg.sender"
                let expr_4182 := caller()
                /// @src 50:14348:14376  "address account = msg.sender"
                let var_account_4180 := expr_4182
                /// @src 50:14390:14396  "amount"
                let _5 := var_amount_4157
                let expr_4184 := _5
                /// @src 50:14400:14401  "0"
                let expr_4185 := 0x00
                /// @src 50:14390:14401  "amount == 0"
                let expr_4186 := eq(cleanup_t_uint256(expr_4184), convert_t_rational_0_by_1_to_t_uint256(expr_4185))
                /// @src 50:14386:14456  "if (amount == 0) {..."
                if expr_4186 {
                    /// @src 50:14438:14444  "amount"
                    let _6 := var_amount_4157
                    let expr_4188 := _6
                    /// @src 50:14424:14445  "InvalidAmount(amount)"
                    {
                        let _7 := allocate_unbounded()
                        mstore(_7, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _8 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_7, 4) , expr_4188)
                        revert(_7, sub(_8, _7))
                    }/// @src 50:14386:14456  "if (amount == 0) {..."
                }
                /// @src 50:14469:14475  "amount"
                let _9 := var_amount_4157
                let expr_4193 := _9
                /// @src 50:14488:14495  "account"
                let _10 := var_account_4180
                let expr_4195 := _10
                /// @src 50:14478:14496  "balanceOf(account)"
                let expr_4196 := fun_balanceOf_3794(expr_4195)
                /// @src 50:14469:14496  "amount > balanceOf(account)"
                let expr_4197 := gt(cleanup_t_uint256(expr_4193), cleanup_t_uint256(expr_4196))
                /// @src 50:14465:14577  "if (amount > balanceOf(account)) {..."
                if expr_4197 {
                    /// @src 50:14549:14556  "account"
                    let _11 := var_account_4180
                    let expr_4200 := _11
                    /// @src 50:14539:14557  "balanceOf(account)"
                    let expr_4201 := fun_balanceOf_3794(expr_4200)
                    /// @src 50:14559:14565  "amount"
                    let _12 := var_amount_4157
                    let expr_4202 := _12
                    /// @src 50:14519:14566  "InsufficientBalance(balanceOf(account), amount)"
                    {
                        let _13 := allocate_unbounded()
                        mstore(_13, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _14 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_13, 4) , expr_4201, expr_4202)
                        revert(_13, sub(_14, _13))
                    }/// @src 50:14465:14577  "if (amount > balanceOf(account)) {..."
                }
                /// @src 50:14613:14619  "amount"
                let _15 := var_amount_4157
                let expr_4210 := _15
                /// @src 50:14603:14620  "_toShares(amount)"
                let expr_4211 := fun__toShares_3992(expr_4210)
                /// @src 50:14586:14620  "uint256 shares = _toShares(amount)"
                let var_shares_4208 := expr_4211
                /// @src 50:14634:14640  "shares"
                let _16 := var_shares_4208
                let expr_4213 := _16
                /// @src 50:14644:14645  "0"
                let expr_4214 := 0x00
                /// @src 50:14634:14645  "shares == 0"
                let expr_4215 := eq(cleanup_t_uint256(expr_4213), convert_t_rational_0_by_1_to_t_uint256(expr_4214))
                /// @src 50:14630:14700  "if (shares == 0) {..."
                if expr_4215 {
                    /// @src 50:14682:14688  "amount"
                    let _17 := var_amount_4157
                    let expr_4217 := _17
                    /// @src 50:14668:14689  "InvalidAmount(amount)"
                    {
                        let _18 := allocate_unbounded()
                        mstore(_18, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _19 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_18, 4) , expr_4217)
                        revert(_18, sub(_19, _18))
                    }/// @src 50:14630:14700  "if (shares == 0) {..."
                }
                /// @src 50:14713:14719  "shares"
                let _20 := var_shares_4208
                let expr_4222 := _20
                /// @src 50:14722:14729  "_shares"
                let _21_slot := 0xa0
                let expr_4223_slot := _21_slot
                /// @src 50:14730:14737  "account"
                let _22 := var_account_4180
                let expr_4224 := _22
                /// @src 50:14722:14738  "_shares[account]"
                let _23 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4223_slot,expr_4224)
                let _24 := read_from_storage_split_offset_0_t_uint256(_23)
                let expr_4225 := _24
                /// @src 50:14713:14738  "shares > _shares[account]"
                let expr_4226 := gt(cleanup_t_uint256(expr_4222), cleanup_t_uint256(expr_4225))
                /// @src 50:14709:14817  "if (shares > _shares[account]) {..."
                if expr_4226 {
                    /// @src 50:14781:14788  "_shares"
                    let _25_slot := 0xa0
                    let expr_4228_slot := _25_slot
                    /// @src 50:14789:14796  "account"
                    let _26 := var_account_4180
                    let expr_4229 := _26
                    /// @src 50:14781:14797  "_shares[account]"
                    let _27 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4228_slot,expr_4229)
                    let _28 := read_from_storage_split_offset_0_t_uint256(_27)
                    let expr_4230 := _28
                    /// @src 50:14799:14805  "shares"
                    let _29 := var_shares_4208
                    let expr_4231 := _29
                    /// @src 50:14761:14806  "InsufficientBalance(_shares[account], shares)"
                    {
                        let _30 := allocate_unbounded()
                        mstore(_30, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _31 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_30, 4) , expr_4230, expr_4231)
                        revert(_30, sub(_31, _30))
                    }/// @src 50:14709:14817  "if (shares > _shares[account]) {..."
                }
                /// @src 50:14846:14852  "shares"
                let _32 := var_shares_4208
                let expr_4239 := _32
                /// @src 50:14826:14833  "_shares"
                let _33_slot := 0xa0
                let expr_4236_slot := _33_slot
                /// @src 50:14834:14841  "account"
                let _34 := var_account_4180
                let expr_4237 := _34
                /// @src 50:14826:14842  "_shares[account]"
                let _35 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4236_slot,expr_4237)
                /// @src 50:14826:14852  "_shares[account] -= shares"
                let _36 := read_from_storage_split_offset_0_t_uint256(_35)
                let expr_4240 := checked_sub_t_uint256(_36, expr_4239)

                update_storage_value_offset_0t_uint256_to_t_uint256(_35, expr_4240)
                /// @src 50:14877:14883  "shares"
                let _37 := var_shares_4208
                let expr_4243 := _37
                /// @src 50:14862:14883  "totalShares -= shares"
                let _38 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_4244 := checked_sub_t_uint256(_38, expr_4243)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x98, expr_4244)
                /// @src 50:14920:14926  "amount"
                let _39 := var_amount_4157
                let expr_4248 := _39
                /// @src 50:14929:14942  "totalUnstaked"
                let _40 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4249 := _40
                /// @src 50:14920:14942  "amount > totalUnstaked"
                let expr_4250 := gt(cleanup_t_uint256(expr_4248), cleanup_t_uint256(expr_4249))
                /// @src 50:14920:14967  "amount > totalUnstaked ? totalUnstaked : amount"
                let expr_4253
                switch expr_4250
                case 0 {
                    /// @src 50:14961:14967  "amount"
                    let _41 := var_amount_4157
                    let expr_4252 := _41
                    /// @src 50:14920:14967  "amount > totalUnstaked ? totalUnstaked : amount"
                    expr_4253 := expr_4252
                }
                default {
                    /// @src 50:14945:14958  "totalUnstaked"
                    let _42 := read_from_storage_split_offset_0_t_uint256(0x9a)
                    let expr_4251 := _42
                    /// @src 50:14920:14967  "amount > totalUnstaked ? totalUnstaked : amount"
                    expr_4253 := expr_4251
                }
                /// @src 50:14894:14967  "uint256 immediateAmount = amount > totalUnstaked ? totalUnstaked : amount"
                let var_immediateAmount_4247 := expr_4253
                /// @src 50:15001:15007  "amount"
                let _43 := var_amount_4157
                let expr_4257 := _43
                /// @src 50:15010:15025  "immediateAmount"
                let _44 := var_immediateAmount_4247
                let expr_4258 := _44
                /// @src 50:15001:15025  "amount - immediateAmount"
                let expr_4259 := checked_sub_t_uint256(expr_4257, expr_4258)

                /// @src 50:14977:15025  "uint256 delayedAmount = amount - immediateAmount"
                let var_delayedAmount_4256 := expr_4259
                /// @src 50:15053:15068  "immediateAmount"
                let _45 := var_immediateAmount_4247
                let expr_4262 := _45
                /// @src 50:15036:15068  "totalUnstaked -= immediateAmount"
                let _46 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4263 := checked_sub_t_uint256(_46, expr_4262)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9a, expr_4263)
                /// @src 50:15104:15117  "delayedAmount"
                let _47 := var_delayedAmount_4256
                let expr_4266 := _47
                /// @src 50:15078:15117  "totalPendingWithdrawal += delayedAmount"
                let _48 := read_from_storage_split_offset_0_t_uint256(0x9b)
                let expr_4267 := checked_add_t_uint256(_48, expr_4266)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9b, expr_4267)
                /// @src 50:15163:15176  "delayedAmount"
                let _49 := var_delayedAmount_4256
                let expr_4272 := _49
                /// @src 50:15127:15146  "_pendingWithdrawals"
                let _50_slot := 0xa2
                let expr_4269_slot := _50_slot
                /// @src 50:15147:15158  "beneficiary"
                let _51 := var_beneficiary_4159
                let expr_4270 := _51
                /// @src 50:15127:15159  "_pendingWithdrawals[beneficiary]"
                let _52 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4269_slot,expr_4270)
                /// @src 50:15127:15176  "_pendingWithdrawals[beneficiary] += delayedAmount"
                let _53 := read_from_storage_split_offset_0_t_uint256(_52)
                let expr_4273 := checked_add_t_uint256(_53, expr_4272)

                update_storage_value_offset_0t_uint256_to_t_uint256(_52, expr_4273)
                /// @src 50:15191:15206  "immediateAmount"
                let _54 := var_immediateAmount_4247
                let expr_4275 := _54
                /// @src 50:15209:15210  "0"
                let expr_4276 := 0x00
                /// @src 50:15191:15210  "immediateAmount > 0"
                let expr_4277 := gt(cleanup_t_uint256(expr_4275), convert_t_rational_0_by_1_to_t_uint256(expr_4276))
                /// @src 50:15187:15488  "if (immediateAmount > 0) {..."
                if expr_4277 {
                    /// @src 50:15244:15255  "beneficiary"
                    let _55 := var_beneficiary_4159
                    let expr_4280 := _55
                    /// @src 50:15244:15260  "beneficiary.call"
                    let expr_4281_address := expr_4280
                    /// @src 50:15268:15283  "immediateAmount"
                    let _56 := var_immediateAmount_4247
                    let expr_4282 := _56
                    /// @src 50:15244:15284  "beneficiary.call{value: immediateAmount}"
                    let expr_4283_address := expr_4281_address
                    let expr_4283_value := expr_4282
                    /// @src 50:15244:15288  "beneficiary.call{value: immediateAmount}(\"\")"

                    let _57 := allocate_unbounded()
                    let _58 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_57  ), _57)

                    let expr_4285_component_1 := call(gas(), expr_4283_address,  expr_4283_value,  _57, _58, 0, 0)
                    let expr_4285_component_2_mpos := extract_returndata()
                    /// @src 50:15226:15288  "(bool success,) = beneficiary.call{value: immediateAmount}(\"\")"
                    let var_success_4279 := expr_4285_component_1
                    /// @src 50:15307:15314  "success"
                    let _59 := var_success_4279
                    let expr_4287 := _59
                    /// @src 50:15306:15314  "!success"
                    let expr_4288 := cleanup_t_bool(iszero(expr_4287))
                    /// @src 50:15302:15411  "if (!success) {..."
                    if expr_4288 {
                        /// @src 50:15358:15365  "account"
                        let _60 := var_account_4180
                        let expr_4290 := _60
                        /// @src 50:15367:15378  "beneficiary"
                        let _61 := var_beneficiary_4159
                        let expr_4291 := _61
                        /// @src 50:15380:15395  "immediateAmount"
                        let _62 := var_immediateAmount_4247
                        let expr_4292 := _62
                        /// @src 50:15341:15396  "WithdrawalFailed(account, beneficiary, immediateAmount)"
                        {
                            let _63 := allocate_unbounded()
                            mstore(_63, 26691246233820642869105577697101541210524846756170225216763101508814820605952)
                            let _64 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_63, 4) , expr_4290, expr_4291, expr_4292)
                            revert(_63, sub(_64, _63))
                        }/// @src 50:15302:15411  "if (!success) {..."
                    }
                    /// @src 50:15439:15446  "account"
                    let _65 := var_account_4180
                    let expr_4298 := _65
                    /// @src 50:15448:15459  "beneficiary"
                    let _66 := var_beneficiary_4159
                    let expr_4299 := _66
                    /// @src 50:15461:15476  "immediateAmount"
                    let _67 := var_immediateAmount_4247
                    let expr_4300 := _67
                    /// @src 50:15429:15477  "Withdrawn(account, beneficiary, immediateAmount)"
                    let _68 := 0xd1c19fbcd4551a5edfb66d43d2e337c04837afda3482b42bdf569a8fccdae5fb
                    let _69 := convert_t_address_to_t_address(expr_4298)
                    let _70 := convert_t_address_to_t_address(expr_4299)
                    {
                        let _71 := allocate_unbounded()
                        let _72 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_71 , expr_4300)
                        log3(_71, sub(_72, _71) , _68, _69, _70)
                    }/// @src 50:15187:15488  "if (immediateAmount > 0) {..."
                }
                /// @src 50:15502:15515  "delayedAmount"
                let _73 := var_delayedAmount_4256
                let expr_4305 := _73
                /// @src 50:15518:15519  "0"
                let expr_4306 := 0x00
                /// @src 50:15502:15519  "delayedAmount > 0"
                let expr_4307 := gt(cleanup_t_uint256(expr_4305), convert_t_rational_0_by_1_to_t_uint256(expr_4306))
                /// @src 50:15498:15607  "if (delayedAmount > 0) {..."
                if expr_4307 {
                    /// @src 50:15560:15567  "account"
                    let _74 := var_account_4180
                    let expr_4309 := _74
                    /// @src 50:15569:15580  "beneficiary"
                    let _75 := var_beneficiary_4159
                    let expr_4310 := _75
                    /// @src 50:15582:15595  "delayedAmount"
                    let _76 := var_delayedAmount_4256
                    let expr_4311 := _76
                    /// @src 50:15540:15596  "WithdrawalRequested(account, beneficiary, delayedAmount)"
                    let _77 := 0x04c56a409d50971e45c5a2d96e5d557d2b0f1d66d40f14b141e4c958b0f39b32
                    let _78 := convert_t_address_to_t_address(expr_4309)
                    let _79 := convert_t_address_to_t_address(expr_4310)
                    {
                        let _80 := allocate_unbounded()
                        let _81 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_80 , expr_4311)
                        log3(_80, sub(_81, _80) , _77, _78, _79)
                    }/// @src 50:15498:15607  "if (delayedAmount > 0) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4317
            /// @src 50:14139:15613  "function withdraw(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_withdraw_4317(var_amount_4157, var_beneficiary_4159) {

                modifier_nonReentrant_4163(var_amount_4157, var_beneficiary_4159)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            /// @ast-id 3946
            /// @src 50:11697:11852  "function totalAssets() public view override returns (uint256) {..."
            function fun_totalAssets_3946() -> var__3935 {
                /// @src 50:11750:11757  "uint256"
                let zero_t_uint256_82 := zero_value_for_split_t_uint256()
                var__3935 := zero_t_uint256_82

                /// @src 50:11776:11787  "totalStaked"
                let _83 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_3937 := _83
                /// @src 50:11790:11803  "totalUnstaked"
                let _84 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_3938 := _84
                /// @src 50:11776:11803  "totalStaked + totalUnstaked"
                let expr_3939 := checked_add_t_uint256(expr_3937, expr_3938)

                /// @src 50:11806:11820  "totalClaimable"
                let _85 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_3940 := _85
                /// @src 50:11776:11820  "totalStaked + totalUnstaked + totalClaimable"
                let expr_3941 := checked_add_t_uint256(expr_3939, expr_3940)

                /// @src 50:11823:11845  "totalPendingWithdrawal"
                let _86 := read_from_storage_split_offset_0_t_uint256(0x9b)
                let expr_3942 := _86
                /// @src 50:11776:11845  "totalStaked + totalUnstaked + totalClaimable - totalPendingWithdrawal"
                let expr_3943 := checked_sub_t_uint256(expr_3941, expr_3942)

                /// @src 50:11769:11845  "return totalStaked + totalUnstaked + totalClaimable - totalPendingWithdrawal"
                var__3935 := expr_3943
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 3422
            /// @src 50:6712:6898  "function supportsInterface(bytes4 interfaceId) public view override returns (bool) {..."
            function fun_supportsInterface_3422(var_interfaceId_3403) -> var__3407 {
                /// @src 50:6789:6793  "bool"
                let zero_t_bool_87 := zero_value_for_split_t_bool()
                var__3407 := zero_t_bool_87

                /// @src 50:6812:6823  "interfaceId"
                let _88 := var_interfaceId_3403
                let expr_3409 := _88
                /// @src 50:6827:6851  "type(IVault).interfaceId"
                let expr_3413 := 0x7df3f3f700000000000000000000000000000000000000000000000000000000
                /// @src 50:6812:6851  "interfaceId == type(IVault).interfaceId"
                let expr_3414 := eq(cleanup_t_bytes4(expr_3409), cleanup_t_bytes4(expr_3413))
                /// @src 50:6812:6891  "interfaceId == type(IVault).interfaceId || super.supportsInterface(interfaceId)"
                let expr_3419 := expr_3414
                if iszero(expr_3419) {
                    /// @src 50:6879:6890  "interfaceId"
                    let _89 := var_interfaceId_3403
                    let expr_3417 := _89
                    /// @src 50:6855:6891  "super.supportsInterface(interfaceId)"
                    let expr_3418 := fun_supportsInterface_7534(expr_3417)
                    /// @src 50:6812:6891  "interfaceId == type(IVault).interfaceId || super.supportsInterface(interfaceId)"
                    expr_3419 := expr_3418
                }
                /// @src 50:6805:6891  "return interfaceId == type(IVault).interfaceId || super.supportsInterface(interfaceId)"
                var__3407 := expr_3419
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            function extract_from_storage_value_offset_0t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_0t_bool(sload(slot))

            }

            /// @ast-id 3729
            /// @src 50:9637:9749  "function isAllowlisted(address account) public view returns (bool) {..."
            function fun_isAllowlisted_3729(var_account_3719) -> var__3722 {
                /// @src 50:9698:9702  "bool"
                let zero_t_bool_90 := zero_value_for_split_t_bool()
                var__3722 := zero_t_bool_90

                /// @src 50:9721:9733  "_allowlisted"
                let _91_slot := 0xa3
                let expr_3724_slot := _91_slot
                /// @src 50:9734:9741  "account"
                let _92 := var_account_3719
                let expr_3725 := _92
                /// @src 50:9721:9742  "_allowlisted[account]"
                let _93 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_3724_slot,expr_3725)
                let _94 := read_from_storage_split_offset_0_t_bool(_93)
                let expr_3726 := _94
                /// @src 50:9714:9742  "return _allowlisted[account]"
                var__3722 := expr_3726
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function copy_calldata_to_memory_with_cleanup(src, dst, length) {
                calldatacopy(dst, src, length)
                mstore(add(dst, length), 0)
            }

            // bytes -> bytes
            function abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(start, length, pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_nonPadded_inplace_fromStack(pos, length)

                copy_calldata_to_memory_with_cleanup(start, pos, length)
                end := add(pos, length)
            }

            function leftAlign_t_uint256(value) -> aligned {
                aligned := value
            }

            function abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value, pos) {
                mstore(pos, leftAlign_t_uint256(cleanup_t_uint256(value)))
            }

            function abi_encode_tuple_packed_t_bytes_calldata_ptr_t_uint256__to_t_bytes_memory_ptr_t_uint256__nonPadded_inplace_fromStack(pos , value0, value1, value2) -> end {

                pos := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_nonPadded_inplace_fromStack(value0, value1,  pos)

                abi_encode_t_uint256_to_t_uint256_nonPadded_inplace_fromStack(value2,  pos)
                pos := add(pos, 32)

                end := pos
            }

            function packed_hashed_t_bytes_calldata_ptr_t_uint256__to_t_bytes_memory_ptr_t_uint256_(var_1, var_2, var_3) -> hash {
                let pos := allocate_unbounded()
                let end := abi_encode_tuple_packed_t_bytes_calldata_ptr_t_uint256__to_t_bytes_memory_ptr_t_uint256__nonPadded_inplace_fromStack(pos , var_1, var_2, var_3)
                hash := keccak256(pos, sub(end, pos))
            }

            function mapping_index_access_t_mapping$_t_bytes_memory_ptr_$_t_bool_$_of_t_bytes_calldata_ptr(slot , key_0, key_1) -> dataSlot {
                dataSlot := packed_hashed_t_bytes_calldata_ptr_t_uint256__to_t_bytes_memory_ptr_t_uint256_(key_0, key_1 , slot)
            }

            /// @ast-id 4573
            /// @src 50:19166:19296  "function isValidatorRegistered(bytes calldata pubkey) external view returns (bool) {..."
            function fun_isValidatorRegistered_4573(var_pubkey_4563_offset, var_pubkey_4563_length) -> var__4566 {
                /// @src 50:19243:19247  "bool"
                let zero_t_bool_95 := zero_value_for_split_t_bool()
                var__4566 := zero_t_bool_95

                /// @src 50:19266:19281  "_registeredKeys"
                let _96_slot := 0xa4
                let expr_4568_slot := _96_slot
                /// @src 50:19282:19288  "pubkey"
                let _97_offset := var_pubkey_4563_offset
                let _97_length := var_pubkey_4563_length
                let expr_4569_offset := _97_offset
                let expr_4569_length := _97_length
                /// @src 50:19266:19289  "_registeredKeys[pubkey]"
                let _98 := mapping_index_access_t_mapping$_t_bytes_memory_ptr_$_t_bool_$_of_t_bytes_calldata_ptr(expr_4568_slot,expr_4569_offset, expr_4569_length)
                let _99 := read_from_storage_split_offset_0_t_bool(_98)
                let expr_4570 := _99
                /// @src 50:19259:19289  "return _registeredKeys[pubkey]"
                var__4566 := expr_4570
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3563(var_newFee_3560) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_setFee_3592_inner(var_newFee_3560)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function convert_t_rational_0_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_0_by_1(value)))
            }

            /// @src 50:3835:3871  "uint32 private constant _MIN_FEE = 0"
            function constant__MIN_FEE_3261() -> ret {
                /// @src 50:3870:3871  "0"
                let expr_3260 := 0x00
                let _101 := convert_t_rational_0_by_1_to_t_uint32(expr_3260)

                ret := _101
            }

            function cleanup_t_rational_15000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_15000_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_15000_by_1(value)))
            }

            /// @src 50:3883:3924  "uint32 private constant _MAX_FEE = 15_000"
            function constant__MAX_FEE_3264() -> ret {
                /// @src 50:3918:3924  "15_000"
                let expr_3263 := 0x3a98
                let _103 := convert_t_rational_15000_by_1_to_t_uint32(expr_3263)

                ret := _103
            }

            function convert_t_uint32_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint32(value)))
            }

            function abi_encode_t_uint32_to_t_uint256_fromStack(value, pos) {
                mstore(pos, convert_t_uint32_to_t_uint256(value))
            }

            function abi_encode_tuple_t_uint32__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint32_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function extract_from_storage_value_offset_0t_uint32(slot_value) -> value {
                value := cleanup_from_storage_t_uint32(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint32(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint32(sload(slot))

            }

            function update_byte_slice_4_shift_0(value, toInsert) -> result {
                let mask := 0xffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint32_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_uint32(value)))
            }

            function prepare_store_t_uint32(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint32_to_t_uint32(slot, value_0) {
                let convertedValue_0 := convert_t_uint32_to_t_uint32(value_0)
                sstore(slot, update_byte_slice_4_shift_0(sload(slot), prepare_store_t_uint32(convertedValue_0)))
            }

            function abi_encode_tuple_t_uint32_t_uint32__to_t_uint32_t_uint32__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint32_to_t_uint32_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint32_to_t_uint32_fromStack(value1,  add(headStart, 32))

            }

            /// @src 50:8063:8331  "function setFee(uint32 newFee) external onlyOperator {..."
            function fun_setFee_3592_inner(var_newFee_3560) {

                /// @src 50:8130:8136  "newFee"
                let _100 := var_newFee_3560
                let expr_3565 := _100
                /// @src 50:8139:8147  "_MIN_FEE"
                let expr_3566 := constant__MIN_FEE_3261()
                /// @src 50:8130:8147  "newFee < _MIN_FEE"
                let expr_3567 := lt(cleanup_t_uint32(expr_3565), cleanup_t_uint32(expr_3566))
                /// @src 50:8130:8168  "newFee < _MIN_FEE || newFee > _MAX_FEE"
                let expr_3571 := expr_3567
                if iszero(expr_3571) {
                    /// @src 50:8151:8157  "newFee"
                    let _102 := var_newFee_3560
                    let expr_3568 := _102
                    /// @src 50:8160:8168  "_MAX_FEE"
                    let expr_3569 := constant__MAX_FEE_3264()
                    /// @src 50:8151:8168  "newFee > _MAX_FEE"
                    let expr_3570 := gt(cleanup_t_uint32(expr_3568), cleanup_t_uint32(expr_3569))
                    /// @src 50:8130:8168  "newFee < _MIN_FEE || newFee > _MAX_FEE"
                    expr_3571 := expr_3570
                }
                /// @src 50:8126:8223  "if (newFee < _MIN_FEE || newFee > _MAX_FEE) {..."
                if expr_3571 {
                    /// @src 50:8205:8211  "newFee"
                    let _104 := var_newFee_3560
                    let expr_3573 := _104
                    /// @src 50:8191:8212  "InvalidAmount(newFee)"
                    {
                        let _105 := allocate_unbounded()
                        mstore(_105, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _106 := abi_encode_tuple_t_uint32__to_t_uint256__fromStack(add(_105, 4) , expr_3573)
                        revert(_105, sub(_106, _105))
                    }/// @src 50:8126:8223  "if (newFee < _MIN_FEE || newFee > _MAX_FEE) {..."
                }
                /// @src 50:8253:8256  "fee"
                let _107 := read_from_storage_split_offset_0_t_uint32(0x9d)
                let expr_3580 := _107
                /// @src 50:8232:8256  "uint32 previousFee = fee"
                let var_previousFee_3579 := expr_3580
                /// @src 50:8272:8278  "newFee"
                let _108 := var_newFee_3560
                let expr_3583 := _108
                /// @src 50:8266:8278  "fee = newFee"
                update_storage_value_offset_0t_uint32_to_t_uint32(0x9d, expr_3583)
                let expr_3584 := expr_3583
                /// @src 50:8304:8315  "previousFee"
                let _109 := var_previousFee_3579
                let expr_3587 := _109
                /// @src 50:8317:8323  "newFee"
                let _110 := var_newFee_3560
                let expr_3588 := _110
                /// @src 50:8293:8324  "FeeChanged(previousFee, newFee)"
                let _111 := 0xdeab7ddf530f3309d7f88438b7fbb714e557a5a30d0c2d1cfc3c0da1dde40968
                {
                    let _112 := allocate_unbounded()
                    let _113 := abi_encode_tuple_t_uint32_t_uint32__to_t_uint32_t_uint32__fromStack(_112 , expr_3587, expr_3588)
                    log1(_112, sub(_113, _112) , _111)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3592
            /// @src 50:8063:8331  "function setFee(uint32 newFee) external onlyOperator {..."
            function fun_setFee_3592(var_newFee_3560) {

                modifier_onlyOperator_3563(var_newFee_3560)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3734(var_enabled_3731) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_setRestricted_3745_inner(var_enabled_3731)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function update_byte_slice_1_shift_0(value, toInsert) -> result {
                let mask := 255
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_bool_to_t_bool(value) -> converted {
                converted := cleanup_t_bool(value)
            }

            function prepare_store_t_bool(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_0(sload(slot), prepare_store_t_bool(convertedValue_0)))
            }

            /// @src 50:9755:9898  "function setRestricted(bool enabled) external onlyOperator {..."
            function fun_setRestricted_3745_inner(var_enabled_3731) {

                /// @src 50:9837:9844  "enabled"
                let _114 := var_enabled_3731
                let expr_3737 := _114
                /// @src 50:9824:9844  "restricted = enabled"
                update_storage_value_offset_0t_bool_to_t_bool(0x9f, expr_3737)
                let expr_3738 := expr_3737
                /// @src 50:9883:9890  "enabled"
                let _115 := var_enabled_3731
                let expr_3741 := _115
                /// @src 50:9859:9891  "VaultRestrictionChanged(enabled)"
                let _116 := 0x6d551cdd1d2c3fc303a0d9b369868462cad83c393ac33062ff9be3ea6b42494c
                {
                    let _117 := allocate_unbounded()
                    let _118 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_117 , expr_3741)
                    log1(_117, sub(_118, _117) , _116)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3745
            /// @src 50:9755:9898  "function setRestricted(bool enabled) external onlyOperator {..."
            function fun_setRestricted_3745(var_enabled_3731) {

                modifier_onlyOperator_3734(var_enabled_3731)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7348
            /// @src 4:909:971  "modifier onlyOwner() {..."
            function modifier_onlyOwner_3552() {

                fun__checkOwner_7403()
                /// @src 4:963:964  "_"
                fun_unpause_3558_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:7992:8057  "function unpause() external onlyOwner {..."
            function fun_unpause_3558_inner() {

                fun__unpause_1986()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3558
            /// @src 50:7992:8057  "function unpause() external onlyOwner {..."
            function fun_unpause_3558() {

                modifier_onlyOwner_3552()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3807
            /// @src 50:10387:10523  "function pendingBalanceOf(address account) external view override returns (uint256) {..."
            function fun_pendingBalanceOf_3807(var_account_3796) -> var__3800 {
                /// @src 50:10462:10469  "uint256"
                let zero_t_uint256_119 := zero_value_for_split_t_uint256()
                var__3800 := zero_t_uint256_119

                /// @src 50:10488:10507  "_pendingWithdrawals"
                let _120_slot := 0xa2
                let expr_3802_slot := _120_slot
                /// @src 50:10508:10515  "account"
                let _121 := var_account_3796
                let expr_3803 := _121
                /// @src 50:10488:10516  "_pendingWithdrawals[account]"
                let _122 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3802_slot,expr_3803)
                let _123 := read_from_storage_split_offset_0_t_uint256(_122)
                let expr_3804 := _123
                /// @src 50:10481:10516  "return _pendingWithdrawals[account]"
                var__3800 := expr_3804
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1931
            /// @src 24:1879:1963  "function paused() public view virtual returns (bool) {..."
            function fun_paused_1931() -> var__1926 {
                /// @src 24:1926:1930  "bool"
                let zero_t_bool_124 := zero_value_for_split_t_bool()
                var__1926 := zero_t_bool_124

                /// @src 24:1949:1956  "_paused"
                let _125 := read_from_storage_split_offset_0_t_bool(0x65)
                let expr_1928 := _125
                /// @src 24:1942:1956  "return _paused"
                var__1926 := expr_1928
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3387
            /// @src 50:6509:6573  "modifier onlyOracle() {..."
            function modifier_onlyOracle_4582(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579) {

                fun__checkOracle_3764()
                /// @src 50:6565:6566  "_"
                modifier_nonReentrant_4584(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7471
            /// @src 25:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4584(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579) {

                fun__nonReentrantBefore_7486()
                /// @src 25:2557:2558  "_"
                modifier_whenNotPaused_4586(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579)
                fun__nonReentrantAfter_7494()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_4586(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_registerValidator_4654_inner(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_32000000000000000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_32000000000000000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_32000000000000000000_by_1(value)))
            }

            /// @src 44:65:107  "uint256 constant DEPOSIT_AMOUNT = 32 ether"
            function constant_DEPOSIT_AMOUNT_7540() -> ret {
                /// @src 44:99:107  "32 ether"
                let expr_7539 := 0x01bc16d674ec800000
                let _127 := convert_t_rational_32000000000000000000_by_1_to_t_uint256(expr_7539)

                ret := _127
            }

            function array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
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

            function cleanup_t_rational_1_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_contract$_StakingverseVault_$4835_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, length) -> updated_pos {
                updated_pos := pos
            }

            function store_literal_in_memory_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3(memPtr) {

                mstore(add(memPtr, 0), 0x0100000000000000000000000000000000000000000000000000000000000000)

            }

            function abi_encode_t_stringliteral_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3_to_t_string_memory_ptr_nonPadded_inplace_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_nonPadded_inplace_fromStack(pos, 12)
                store_literal_in_memory_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3(pos)
                end := add(pos, 12)
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

            function abi_encode_tuple_packed_t_stringliteral_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3_t_address__to_t_string_memory_ptr_t_address__nonPadded_inplace_fromStack(pos , value0) -> end {

                pos := abi_encode_t_stringliteral_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3_to_t_string_memory_ptr_nonPadded_inplace_fromStack( pos)

                abi_encode_t_address_to_t_address_nonPadded_inplace_fromStack(value0,  pos)
                pos := add(pos, 20)

                end := pos
            }

            function abi_encode_t_bytes32_to_t_bytes32_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes32(value))
            }

            function abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_calldata_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes32__fromStack(headStart , value0, value1, value2, value3, value4) -> tail {
                tail := add(headStart, 96)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value0, value1,  tail)

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value4,  add(headStart, 64))

            }

            function shift_right_8_unsigned(value) -> newValue {
                newValue :=

                shr(8, value)

            }

            function cleanup_from_storage_t_contract$_IDepositContract_$7584(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function extract_from_storage_value_offset_1t_contract$_IDepositContract_$7584(slot_value) -> value {
                value := cleanup_from_storage_t_contract$_IDepositContract_$7584(shift_right_8_unsigned(slot_value))
            }

            function read_from_storage_split_offset_1_t_contract$_IDepositContract_$7584(slot) -> value {
                value := extract_from_storage_value_offset_1t_contract$_IDepositContract_$7584(sload(slot))

            }

            function convert_t_contract$_IDepositContract_$7584_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() {
                revert(0, 0)
            }

            function shift_left_224(value) -> newValue {
                newValue :=

                shl(224, value)

            }

            function abi_decode_tuple__fromMemory(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_length_t_bytes_memory_ptr(value) -> length {

                length := mload(value)

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

            function abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_memory_ptr_t_bytes_calldata_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes32__fromStack(headStart , value0, value1, value2, value3, value4, value5) -> tail {
                tail := add(headStart, 128)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value0, value1,  tail)

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_memory_ptr_to_t_bytes_memory_ptr_fromStack(value2,  tail)

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value3, value4,  tail)

                abi_encode_t_bytes32_to_t_bytes32_fromStack(value5,  add(headStart, 96))

            }

            function revert_forward_1() {
                let pos := allocate_unbounded()
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }

            /// @src 50:19302:20177  "function registerValidator(bytes calldata pubkey, bytes calldata signature, bytes32 depositDataRoot)..."
            function fun_registerValidator_4654_inner(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579) {

                /// @src 50:19498:19511  "totalUnstaked"
                let _126 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4588 := _126
                /// @src 50:19514:19528  "DEPOSIT_AMOUNT"
                let expr_4589 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:19498:19528  "totalUnstaked < DEPOSIT_AMOUNT"
                let expr_4590 := lt(cleanup_t_uint256(expr_4588), cleanup_t_uint256(expr_4589))
                /// @src 50:19494:19612  "if (totalUnstaked < DEPOSIT_AMOUNT) {..."
                if expr_4590 {
                    /// @src 50:19571:19584  "totalUnstaked"
                    let _128 := read_from_storage_split_offset_0_t_uint256(0x9a)
                    let expr_4592 := _128
                    /// @src 50:19586:19600  "DEPOSIT_AMOUNT"
                    let expr_4593 := constant_DEPOSIT_AMOUNT_7540()
                    /// @src 50:19551:19601  "InsufficientBalance(totalUnstaked, DEPOSIT_AMOUNT)"
                    {
                        let _129 := allocate_unbounded()
                        mstore(_129, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _130 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_129, 4) , expr_4592, expr_4593)
                        revert(_129, sub(_130, _129))
                    }/// @src 50:19494:19612  "if (totalUnstaked < DEPOSIT_AMOUNT) {..."
                }
                /// @src 50:19625:19640  "_registeredKeys"
                let _131_slot := 0xa4
                let expr_4598_slot := _131_slot
                /// @src 50:19641:19647  "pubkey"
                let _132_offset := var_pubkey_4575_offset
                let _132_length := var_pubkey_4575_length
                let expr_4599_offset := _132_offset
                let expr_4599_length := _132_length
                /// @src 50:19625:19648  "_registeredKeys[pubkey]"
                let _133 := mapping_index_access_t_mapping$_t_bytes_memory_ptr_$_t_bool_$_of_t_bytes_calldata_ptr(expr_4598_slot,expr_4599_offset, expr_4599_length)
                let _134 := read_from_storage_split_offset_0_t_bool(_133)
                let expr_4600 := _134
                /// @src 50:19621:19716  "if (_registeredKeys[pubkey]) {..."
                if expr_4600 {
                    /// @src 50:19698:19704  "pubkey"
                    let _135_offset := var_pubkey_4575_offset
                    let _135_length := var_pubkey_4575_length
                    let expr_4602_offset := _135_offset
                    let expr_4602_length := _135_length
                    /// @src 50:19671:19705  "ValidatorAlreadyRegistered(pubkey)"
                    {
                        let _136 := allocate_unbounded()
                        mstore(_136, 53110074581185248745229710958908673995103069367399967894727419862618417922048)
                        let _137 := abi_encode_tuple_t_bytes_calldata_ptr__to_t_bytes_memory_ptr__fromStack(add(_136, 4) , expr_4602_offset, expr_4602_length)
                        revert(_136, sub(_137, _136))
                    }/// @src 50:19621:19716  "if (_registeredKeys[pubkey]) {..."
                }
                /// @src 50:19751:19755  "true"
                let expr_4610 := 0x01
                /// @src 50:19725:19740  "_registeredKeys"
                let _138_slot := 0xa4
                let expr_4607_slot := _138_slot
                /// @src 50:19741:19747  "pubkey"
                let _139_offset := var_pubkey_4575_offset
                let _139_length := var_pubkey_4575_length
                let expr_4608_offset := _139_offset
                let expr_4608_length := _139_length
                /// @src 50:19725:19748  "_registeredKeys[pubkey]"
                let _140 := mapping_index_access_t_mapping$_t_bytes_memory_ptr_$_t_bool_$_of_t_bytes_calldata_ptr(expr_4607_slot,expr_4608_offset, expr_4608_length)
                /// @src 50:19725:19755  "_registeredKeys[pubkey] = true"
                update_storage_value_offset_0t_bool_to_t_bool(_140, expr_4610)
                let expr_4611 := expr_4610
                /// @src 50:19794:19795  "1"
                let expr_4614 := 0x01
                /// @src 50:19765:19795  "totalValidatorsRegistered += 1"
                let _141 := convert_t_rational_1_by_1_to_t_uint256(expr_4614)
                let _142 := read_from_storage_split_offset_0_t_uint256(0x9c)
                let expr_4615 := checked_add_t_uint256(_142, _141)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9c, expr_4615)
                /// @src 50:19820:19834  "DEPOSIT_AMOUNT"
                let expr_4618 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:19805:19834  "totalStaked += DEPOSIT_AMOUNT"
                let _143 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_4619 := checked_add_t_uint256(_143, expr_4618)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_4619)
                /// @src 50:19861:19875  "DEPOSIT_AMOUNT"
                let expr_4622 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:19844:19875  "totalUnstaked -= DEPOSIT_AMOUNT"
                let _144 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4623 := checked_sub_t_uint256(_144, expr_4622)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9a, expr_4623)
                /// @src 50:19978:19982  "this"
                let expr_4632_address := address()
                /// @src 50:19970:19983  "address(this)"
                let expr_4633 := convert_t_contract$_StakingverseVault_$4835_to_t_address(expr_4632_address)
                /// @src 50:19922:19984  "abi.encodePacked(hex\"010000000000000000000000\", address(this))"

                let expr_4634_mpos := allocate_unbounded()
                let _145 := add(expr_4634_mpos, 0x20)

                let _146 := abi_encode_tuple_packed_t_stringliteral_c3561681690c887efcedd1f891e436e0957869ba500a4b4f53fdf3b9a23a8ae3_t_address__to_t_string_memory_ptr_t_address__nonPadded_inplace_fromStack(_145, expr_4633)
                mstore(expr_4634_mpos, sub(_146, add(expr_4634_mpos, 0x20)))
                finalize_allocation(expr_4634_mpos, sub(_146, expr_4634_mpos))
                /// @src 50:19885:19984  "bytes memory withdrawalCredentials = abi.encodePacked(hex\"010000000000000000000000\", address(this))"
                let var_withdrawalCredentials_4626_mpos := expr_4634_mpos
                /// @src 50:20019:20025  "pubkey"
                let _147_offset := var_pubkey_4575_offset
                let _147_length := var_pubkey_4575_length
                let expr_4637_offset := _147_offset
                let expr_4637_length := _147_length
                /// @src 50:20027:20036  "signature"
                let _148_offset := var_signature_4577_offset
                let _148_length := var_signature_4577_length
                let expr_4638_offset := _148_offset
                let expr_4638_length := _148_length
                /// @src 50:20038:20053  "depositDataRoot"
                let _149 := var_depositDataRoot_4579
                let expr_4639 := _149
                /// @src 50:19999:20054  "ValidatorRegistered(pubkey, signature, depositDataRoot)"
                let _150 := 0xae4c11043ed756d29ff1090254f3094d58518b7710dd001244bcd37bccabd0f0
                {
                    let _151 := allocate_unbounded()
                    let _152 := abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_calldata_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes32__fromStack(_151 , expr_4637_offset, expr_4637_length, expr_4638_offset, expr_4638_length, expr_4639)
                    log1(_151, sub(_152, _151) , _150)
                }/// @src 50:20064:20080  "_depositContract"
                let _153_address := read_from_storage_split_offset_1_t_contract$_IDepositContract_$7584(0x9f)
                let expr_4642_address := _153_address
                /// @src 50:20064:20088  "_depositContract.deposit"
                let expr_4644_address := convert_t_contract$_IDepositContract_$7584_to_t_address(expr_4642_address)
                let expr_4644_functionSelector := 0x22895118
                /// @src 50:20096:20110  "DEPOSIT_AMOUNT"
                let expr_4645 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:20064:20111  "_depositContract.deposit{value: DEPOSIT_AMOUNT}"
                let expr_4646_address := expr_4644_address
                let expr_4646_functionSelector := expr_4644_functionSelector
                let expr_4646_value := expr_4645
                /// @src 50:20112:20118  "pubkey"
                let _154_offset := var_pubkey_4575_offset
                let _154_length := var_pubkey_4575_length
                let expr_4647_offset := _154_offset
                let expr_4647_length := _154_length
                /// @src 50:20120:20141  "withdrawalCredentials"
                let _155_mpos := var_withdrawalCredentials_4626_mpos
                let expr_4648_mpos := _155_mpos
                /// @src 50:20143:20152  "signature"
                let _156_offset := var_signature_4577_offset
                let _156_length := var_signature_4577_length
                let expr_4649_offset := _156_offset
                let expr_4649_length := _156_length
                /// @src 50:20154:20169  "depositDataRoot"
                let _157 := var_depositDataRoot_4579
                let expr_4650 := _157
                /// @src 50:20064:20170  "_depositContract.deposit{value: DEPOSIT_AMOUNT}(pubkey, withdrawalCredentials, signature, depositDataRoot)"

                if iszero(extcodesize(expr_4646_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                // storage for arguments and returned data
                let _158 := allocate_unbounded()
                mstore(_158, shift_left_224(expr_4646_functionSelector))
                let _159 := abi_encode_tuple_t_bytes_calldata_ptr_t_bytes_memory_ptr_t_bytes_calldata_ptr_t_bytes32__to_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes_memory_ptr_t_bytes32__fromStack(add(_158, 4) , expr_4647_offset, expr_4647_length, expr_4648_mpos, expr_4649_offset, expr_4649_length, expr_4650)

                let _160 := call(gas(), expr_4646_address,  expr_4646_value,  _158, sub(_159, _158), _158, 0)

                if iszero(_160) { revert_forward_1() }

                if _160 {

                    let _161 := 0

                    if gt(_161, returndatasize()) {
                        _161 := returndatasize()
                    }

                    // update freeMemoryPointer according to dynamic return size
                    finalize_allocation(_158, _161)

                    // decode return parameters from external try-call into retVars
                    abi_decode_tuple__fromMemory(_158, add(_158, _161))
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4654
            /// @src 50:19302:20177  "function registerValidator(bytes calldata pubkey, bytes calldata signature, bytes32 depositDataRoot)..."
            function fun_registerValidator_4654(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579) {

                modifier_onlyOracle_4582(var_pubkey_4575_offset, var_pubkey_4575_length, var_signature_4577_offset, var_signature_4577_length, var_depositDataRoot_4579)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3794
            /// @src 50:10254:10381  "function balanceOf(address account) public view override returns (uint256) {..."
            function fun_balanceOf_3794(var_account_3781) -> var__3785 {
                /// @src 50:10320:10327  "uint256"
                let zero_t_uint256_162 := zero_value_for_split_t_uint256()
                var__3785 := zero_t_uint256_162

                /// @src 50:10357:10364  "_shares"
                let _163_slot := 0xa0
                let expr_3788_slot := _163_slot
                /// @src 50:10365:10372  "account"
                let _164 := var_account_3781
                let expr_3789 := _164
                /// @src 50:10357:10373  "_shares[account]"
                let _165 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3788_slot,expr_3789)
                let _166 := read_from_storage_split_offset_0_t_uint256(_165)
                let expr_3790 := _166
                /// @src 50:10346:10374  "_toBalance(_shares[account])"
                let expr_3791 := fun__toBalance_3969(expr_3790)
                /// @src 50:10339:10374  "return _toBalance(_shares[account])"
                var__3785 := expr_3791
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7348
            /// @src 4:909:971  "modifier onlyOwner() {..."
            function modifier_onlyOwner_7352() {

                fun__checkOwner_7403()
                /// @src 4:963:964  "_"
                fun_renounceOwnership_7362_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 4:1313:1405  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_7362_inner() {

                /// @src 4:1395:1396  "0"
                let expr_7357 := 0x00
                /// @src 4:1387:1397  "address(0)"
                let expr_7358 := convert_t_rational_0_by_1_to_t_address(expr_7357)
                fun__setOwner_7425(expr_7358)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7362
            /// @src 4:1313:1405  "function renounceOwnership() public virtual onlyOwner {..."
            function fun_renounceOwnership_7362() {

                modifier_onlyOwner_7352()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3387
            /// @src 50:6509:6573  "modifier onlyOracle() {..."
            function modifier_onlyOracle_4407() {

                fun__checkOracle_3764()
                /// @src 50:6565:6566  "_"
                modifier_whenNotPaused_4409()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_4409() {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_rebalance_4561_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function panic_error_0x12() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }

            function checked_div_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }

                r := div(x, y)
            }

            function mod_t_uint256(x, y) -> r {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                if iszero(y) { panic_error_0x12() }
                r := mod(x, y)
            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function convert_t_rational_1_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_1_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_uint8_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint8(value)))
            }

            function checked_mul_t_uint256(x, y) -> product {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)
                let product_raw := mul(x, y)
                product := cleanup_t_uint256(product_raw)

                // overflow, if x != 0 and y != product/x
                if iszero(
                    or(
                        iszero(x),
                        eq(y, div(product, x))
                    )
                ) { panic_error_0x11() }

            }

            function cleanup_t_rational_100000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_100000_by_1_to_t_uint32(value) -> converted {
                converted := cleanup_t_uint32(identity(cleanup_t_rational_100000_by_1(value)))
            }

            /// @src 50:3785:3829  "uint32 private constant _FEE_BASIS = 100_000"
            function constant__FEE_BASIS_3258() -> ret {
                /// @src 50:3822:3829  "100_000"
                let expr_3257 := 0x0186a0
                let _198 := convert_t_rational_100000_by_1_to_t_uint32(expr_3257)

                ret := _198
            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

            }

            function abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 128)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                abi_encode_t_uint256_to_t_uint256_fromStack(value2,  add(headStart, 64))

                abi_encode_t_uint256_to_t_uint256_fromStack(value3,  add(headStart, 96))

            }

            /// @src 50:17057:19160  "function rebalance() external onlyOracle whenNotPaused {..."
            function fun_rebalance_4561_inner() {

                /// @src 50:17148:17152  "this"
                let expr_4415_address := address()
                /// @src 50:17140:17153  "address(this)"
                let expr_4416 := convert_t_contract$_StakingverseVault_$4835_to_t_address(expr_4415_address)
                /// @src 50:17140:17161  "address(this).balance"
                let expr_4417 := balance(expr_4416)
                /// @src 50:17122:17161  "uint256 balance = address(this).balance"
                let var_balance_4412 := expr_4417
                /// @src 50:17245:17267  "totalPendingWithdrawal"
                let _167 := read_from_storage_split_offset_0_t_uint256(0x9b)
                let expr_4421 := _167
                /// @src 50:17270:17284  "totalClaimable"
                let _168 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_4422 := _168
                /// @src 50:17245:17284  "totalPendingWithdrawal - totalClaimable"
                let expr_4423 := checked_sub_t_uint256(expr_4421, expr_4422)

                /// @src 50:17217:17284  "uint256 pendingWithdrawal = totalPendingWithdrawal - totalClaimable"
                let var_pendingWithdrawal_4420 := expr_4423
                /// @src 50:17324:17328  "Math"
                let expr_4427_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                /// @src 50:17347:17354  "balance"
                let _169 := var_balance_4412
                let expr_4429 := _169
                /// @src 50:17357:17366  "totalFees"
                let _170 := read_from_storage_split_offset_0_t_uint256(0x9e)
                let expr_4430 := _170
                /// @src 50:17347:17366  "balance - totalFees"
                let expr_4431 := checked_sub_t_uint256(expr_4429, expr_4430)

                /// @src 50:17369:17382  "totalUnstaked"
                let _171 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4432 := _171
                /// @src 50:17347:17382  "balance - totalFees - totalUnstaked"
                let expr_4433 := checked_sub_t_uint256(expr_4431, expr_4432)

                /// @src 50:17385:17399  "totalClaimable"
                let _172 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_4434 := _172
                /// @src 50:17347:17399  "balance - totalFees - totalUnstaked - totalClaimable"
                let expr_4435 := checked_sub_t_uint256(expr_4433, expr_4434)

                /// @src 50:17346:17400  "(balance - totalFees - totalUnstaked - totalClaimable)"
                let expr_4436 := expr_4435
                /// @src 50:17403:17417  "DEPOSIT_AMOUNT"
                let expr_4437 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:17346:17417  "(balance - totalFees - totalUnstaked - totalClaimable) / DEPOSIT_AMOUNT"
                let expr_4438 := checked_div_t_uint256(expr_4436, expr_4437)

                /// @src 50:17463:17480  "pendingWithdrawal"
                let _173 := var_pendingWithdrawal_4420
                let expr_4439 := _173
                /// @src 50:17483:17497  "DEPOSIT_AMOUNT"
                let expr_4440 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:17463:17497  "pendingWithdrawal / DEPOSIT_AMOUNT"
                let expr_4441 := checked_div_t_uint256(expr_4439, expr_4440)

                /// @src 50:17540:17557  "pendingWithdrawal"
                let _174 := var_pendingWithdrawal_4420
                let expr_4442 := _174
                /// @src 50:17560:17574  "DEPOSIT_AMOUNT"
                let expr_4443 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:17540:17574  "pendingWithdrawal % DEPOSIT_AMOUNT"
                let expr_4444 := mod_t_uint256(expr_4442, expr_4443)

                /// @src 50:17578:17579  "0"
                let expr_4445 := 0x00
                /// @src 50:17540:17579  "pendingWithdrawal % DEPOSIT_AMOUNT == 0"
                let expr_4446 := eq(cleanup_t_uint256(expr_4444), convert_t_rational_0_by_1_to_t_uint256(expr_4445))
                /// @src 50:17540:17587  "pendingWithdrawal % DEPOSIT_AMOUNT == 0 ? 0 : 1"
                let expr_4449
                switch expr_4446
                case 0 {
                    /// @src 50:17586:17587  "1"
                    let expr_4448 := 0x01
                    /// @src 50:17540:17587  "pendingWithdrawal % DEPOSIT_AMOUNT == 0 ? 0 : 1"
                    expr_4449 := convert_t_rational_1_by_1_to_t_uint8(expr_4448)
                }
                default {
                    /// @src 50:17582:17583  "0"
                    let expr_4447 := 0x00
                    /// @src 50:17540:17587  "pendingWithdrawal % DEPOSIT_AMOUNT == 0 ? 0 : 1"
                    expr_4449 := convert_t_rational_0_by_1_to_t_uint8(expr_4447)
                }
                /// @src 50:17539:17588  "(pendingWithdrawal % DEPOSIT_AMOUNT == 0 ? 0 : 1)"
                let expr_4450 := expr_4449
                /// @src 50:17463:17588  "pendingWithdrawal / DEPOSIT_AMOUNT // pending withdrawals..."
                let expr_4451 := checked_add_t_uint256(expr_4441, convert_t_uint8_to_t_uint256(expr_4450))

                /// @src 50:17324:17621  "Math.min(..."
                let expr_4452 := fun_min_2358(expr_4438, expr_4451)
                /// @src 50:17624:17638  "DEPOSIT_AMOUNT"
                let expr_4453 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:17324:17638  "Math.min(..."
                let expr_4454 := checked_mul_t_uint256(expr_4452, expr_4453)

                /// @src 50:17294:17638  "uint256 completedWithdrawal = Math.min(..."
                let var_completedWithdrawal_4426 := expr_4454
                /// @src 50:17725:17736  "totalStaked"
                let _175 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_4458 := _175
                /// @src 50:17739:17758  "completedWithdrawal"
                let _176 := var_completedWithdrawal_4426
                let expr_4459 := _176
                /// @src 50:17725:17758  "totalStaked - completedWithdrawal"
                let expr_4460 := checked_sub_t_uint256(expr_4458, expr_4459)

                /// @src 50:17708:17758  "uint256 staked = totalStaked - completedWithdrawal"
                let var_staked_4457 := expr_4460
                /// @src 50:17883:17890  "balance"
                let _177 := var_balance_4412
                let expr_4464 := _177
                /// @src 50:17893:17902  "totalFees"
                let _178 := read_from_storage_split_offset_0_t_uint256(0x9e)
                let expr_4465 := _178
                /// @src 50:17883:17902  "balance - totalFees"
                let expr_4466 := checked_sub_t_uint256(expr_4464, expr_4465)

                /// @src 50:17905:17919  "totalClaimable"
                let _179 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_4467 := _179
                /// @src 50:17883:17919  "balance - totalFees - totalClaimable"
                let expr_4468 := checked_sub_t_uint256(expr_4466, expr_4467)

                /// @src 50:17922:17941  "completedWithdrawal"
                let _180 := var_completedWithdrawal_4426
                let expr_4469 := _180
                /// @src 50:17883:17941  "balance - totalFees - totalClaimable - completedWithdrawal"
                let expr_4470 := checked_sub_t_uint256(expr_4468, expr_4469)

                /// @src 50:17864:17941  "uint256 unstaked = balance - totalFees - totalClaimable - completedWithdrawal"
                let var_unstaked_4463 := expr_4470
                /// @src 50:18022:18036  "totalClaimable"
                let _181 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_4474 := _181
                /// @src 50:18039:18058  "completedWithdrawal"
                let _182 := var_completedWithdrawal_4426
                let expr_4475 := _182
                /// @src 50:18022:18058  "totalClaimable + completedWithdrawal"
                let expr_4476 := checked_add_t_uint256(expr_4474, expr_4475)

                /// @src 50:18002:18058  "uint256 claimable = totalClaimable + completedWithdrawal"
                let var_claimable_4473 := expr_4476
                /// @src 50:18152:18153  "0"
                let expr_4480 := 0x00
                /// @src 50:18124:18153  "uint256 partialWithdrawal = 0"
                let var_partialWithdrawal_4479 := convert_t_rational_0_by_1_to_t_uint256(expr_4480)
                /// @src 50:18167:18176  "claimable"
                let _183 := var_claimable_4473
                let expr_4482 := _183
                /// @src 50:18179:18201  "totalPendingWithdrawal"
                let _184 := read_from_storage_split_offset_0_t_uint256(0x9b)
                let expr_4483 := _184
                /// @src 50:18167:18201  "claimable > totalPendingWithdrawal"
                let expr_4484 := gt(cleanup_t_uint256(expr_4482), cleanup_t_uint256(expr_4483))
                /// @src 50:18163:18373  "if (claimable > totalPendingWithdrawal) {..."
                if expr_4484 {
                    /// @src 50:18237:18246  "claimable"
                    let _185 := var_claimable_4473
                    let expr_4486 := _185
                    /// @src 50:18249:18271  "totalPendingWithdrawal"
                    let _186 := read_from_storage_split_offset_0_t_uint256(0x9b)
                    let expr_4487 := _186
                    /// @src 50:18237:18271  "claimable - totalPendingWithdrawal"
                    let expr_4488 := checked_sub_t_uint256(expr_4486, expr_4487)

                    /// @src 50:18217:18271  "partialWithdrawal = claimable - totalPendingWithdrawal"
                    var_partialWithdrawal_4479 := expr_4488
                    let expr_4489 := expr_4488
                    /// @src 50:18297:18314  "partialWithdrawal"
                    let _187 := var_partialWithdrawal_4479
                    let expr_4492 := _187
                    /// @src 50:18285:18314  "unstaked += partialWithdrawal"
                    let _188 := var_unstaked_4463
                    let expr_4493 := checked_add_t_uint256(_188, expr_4492)

                    var_unstaked_4463 := expr_4493
                    /// @src 50:18340:18362  "totalPendingWithdrawal"
                    let _189 := read_from_storage_split_offset_0_t_uint256(0x9b)
                    let expr_4496 := _189
                    /// @src 50:18328:18362  "claimable = totalPendingWithdrawal"
                    var_claimable_4473 := expr_4496
                    let expr_4497 := expr_4496
                    /// @src 50:18163:18373  "if (claimable > totalPendingWithdrawal) {..."
                }
                /// @src 50:18621:18629  "unstaked"
                let _190 := var_unstaked_4463
                let expr_4501 := _190
                /// @src 50:18632:18649  "partialWithdrawal"
                let _191 := var_partialWithdrawal_4479
                let expr_4502 := _191
                /// @src 50:18621:18649  "unstaked - partialWithdrawal"
                let expr_4503 := checked_sub_t_uint256(expr_4501, expr_4502)

                /// @src 50:18652:18665  "totalUnstaked"
                let _192 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4504 := _192
                /// @src 50:18621:18665  "unstaked - partialWithdrawal > totalUnstaked"
                let expr_4505 := gt(cleanup_t_uint256(expr_4503), cleanup_t_uint256(expr_4504))
                /// @src 50:18617:18982  "if (unstaked - partialWithdrawal > totalUnstaked) {..."
                if expr_4505 {
                    /// @src 50:18699:18707  "unstaked"
                    let _193 := var_unstaked_4463
                    let expr_4508 := _193
                    /// @src 50:18710:18727  "partialWithdrawal"
                    let _194 := var_partialWithdrawal_4479
                    let expr_4509 := _194
                    /// @src 50:18699:18727  "unstaked - partialWithdrawal"
                    let expr_4510 := checked_sub_t_uint256(expr_4508, expr_4509)

                    /// @src 50:18730:18743  "totalUnstaked"
                    let _195 := read_from_storage_split_offset_0_t_uint256(0x9a)
                    let expr_4511 := _195
                    /// @src 50:18699:18743  "unstaked - partialWithdrawal - totalUnstaked"
                    let expr_4512 := checked_sub_t_uint256(expr_4510, expr_4511)

                    /// @src 50:18681:18743  "uint256 rewards = unstaked - partialWithdrawal - totalUnstaked"
                    let var_rewards_4507 := expr_4512
                    /// @src 50:18777:18781  "Math"
                    let expr_4516_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                    /// @src 50:18789:18796  "rewards"
                    let _196 := var_rewards_4507
                    let expr_4518 := _196
                    /// @src 50:18798:18801  "fee"
                    let _197 := read_from_storage_split_offset_0_t_uint32(0x9d)
                    let expr_4519 := _197
                    /// @src 50:18803:18813  "_FEE_BASIS"
                    let expr_4520 := constant__FEE_BASIS_3258()
                    /// @src 50:18777:18814  "Math.mulDiv(rewards, fee, _FEE_BASIS)"
                    let _199 := convert_t_uint32_to_t_uint256(expr_4519)
                    let _200 := convert_t_uint32_to_t_uint256(expr_4520)
                    let expr_4521 := fun_mulDiv_2529(expr_4518, _199, _200)
                    /// @src 50:18757:18814  "uint256 feeAmount = Math.mulDiv(rewards, fee, _FEE_BASIS)"
                    let var_feeAmount_4515 := expr_4521
                    /// @src 50:18852:18863  "totalStaked"
                    let _201 := read_from_storage_split_offset_0_t_uint256(0x99)
                    let expr_4524 := _201
                    /// @src 50:18866:18879  "totalUnstaked"
                    let _202 := read_from_storage_split_offset_0_t_uint256(0x9a)
                    let expr_4525 := _202
                    /// @src 50:18852:18879  "totalStaked + totalUnstaked"
                    let expr_4526 := checked_add_t_uint256(expr_4524, expr_4525)

                    /// @src 50:18881:18888  "rewards"
                    let _203 := var_rewards_4507
                    let expr_4527 := _203
                    /// @src 50:18890:18899  "feeAmount"
                    let _204 := var_feeAmount_4515
                    let expr_4528 := _204
                    /// @src 50:18833:18900  "RewardsDistributed(totalStaked + totalUnstaked, rewards, feeAmount)"
                    let _205 := 0x6ae8ee960d83517f7fa993ad7a0e16e33d9655a23ff41eefc62bdb289c7a8e5f
                    {
                        let _206 := allocate_unbounded()
                        let _207 := abi_encode_tuple_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256__fromStack(_206 , expr_4526, expr_4527, expr_4528)
                        log1(_206, sub(_207, _206) , _205)
                    }/// @src 50:18927:18936  "feeAmount"
                    let _208 := var_feeAmount_4515
                    let expr_4532 := _208
                    /// @src 50:18914:18936  "totalFees += feeAmount"
                    let _209 := read_from_storage_split_offset_0_t_uint256(0x9e)
                    let expr_4533 := checked_add_t_uint256(_209, expr_4532)

                    update_storage_value_offset_0t_uint256_to_t_uint256(0x9e, expr_4533)
                    /// @src 50:18962:18971  "feeAmount"
                    let _210 := var_feeAmount_4515
                    let expr_4536 := _210
                    /// @src 50:18950:18971  "unstaked -= feeAmount"
                    let _211 := var_unstaked_4463
                    let expr_4537 := checked_sub_t_uint256(_211, expr_4536)

                    var_unstaked_4463 := expr_4537
                    /// @src 50:18617:18982  "if (unstaked - partialWithdrawal > totalUnstaked) {..."
                }
                /// @src 50:19008:19019  "totalStaked"
                let _212 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_4542 := _212
                /// @src 50:19021:19034  "totalUnstaked"
                let _213 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4543 := _213
                /// @src 50:19036:19042  "staked"
                let _214 := var_staked_4457
                let expr_4544 := _214
                /// @src 50:19044:19052  "unstaked"
                let _215 := var_unstaked_4463
                let expr_4545 := _215
                /// @src 50:18997:19053  "Rebalanced(totalStaked, totalUnstaked, staked, unstaked)"
                let _216 := 0x6f55209924dba11af5ddabda4999b20d0ce3aa1847c56b67240ed1fc3590c134
                {
                    let _217 := allocate_unbounded()
                    let _218 := abi_encode_tuple_t_uint256_t_uint256_t_uint256_t_uint256__to_t_uint256_t_uint256_t_uint256_t_uint256__fromStack(_217 , expr_4542, expr_4543, expr_4544, expr_4545)
                    log1(_217, sub(_218, _217) , _216)
                }/// @src 50:19080:19089  "claimable"
                let _219 := var_claimable_4473
                let expr_4549 := _219
                /// @src 50:19063:19089  "totalClaimable = claimable"
                update_storage_value_offset_0t_uint256_to_t_uint256(0xa5, expr_4549)
                let expr_4550 := expr_4549
                /// @src 50:19115:19123  "unstaked"
                let _220 := var_unstaked_4463
                let expr_4553 := _220
                /// @src 50:19099:19123  "totalUnstaked = unstaked"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x9a, expr_4553)
                let expr_4554 := expr_4553
                /// @src 50:19147:19153  "staked"
                let _221 := var_staked_4457
                let expr_4557 := _221
                /// @src 50:19133:19153  "totalStaked = staked"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x99, expr_4557)
                let expr_4558 := expr_4557

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4561
            /// @src 50:17057:19160  "function rebalance() external onlyOracle whenNotPaused {..."
            function fun_rebalance_4561() {

                modifier_onlyOracle_4407()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7348
            /// @src 4:909:971  "modifier onlyOwner() {..."
            function modifier_onlyOwner_3543() {

                fun__checkOwner_7403()
                /// @src 4:963:964  "_"
                fun_pause_3549_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:7925:7986  "function pause() external onlyOwner {..."
            function fun_pause_3549_inner() {

                fun__pause_1970()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3549
            /// @src 50:7925:7986  "function pause() external onlyOwner {..."
            function fun_pause_3549() {

                modifier_onlyOwner_3543()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            function extract_from_storage_value_offset_0t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_address(slot) -> value {
                value := extract_from_storage_value_offset_0t_address(sload(slot))

            }

            /// @ast-id 7340
            /// @src 4:736:821  "function owner() public view virtual returns (address) {..."
            function fun_owner_7340() -> var__7335 {
                /// @src 4:782:789  "address"
                let zero_t_address_222 := zero_value_for_split_t_address()
                var__7335 := zero_t_address_222

                /// @src 4:808:814  "_owner"
                let _223 := read_from_storage_split_offset_0_t_address(0x00)
                let expr_7337 := _223
                /// @src 4:801:814  "return _owner"
                var__7335 := expr_7337
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3829
            /// @src 50:10529:10776  "function claimableBalanceOf(address account) external view override returns (uint256) {..."
            function fun_claimableBalanceOf_3829(var_account_3809) -> var__3813 {
                /// @src 50:10606:10613  "uint256"
                let zero_t_uint256_224 := zero_value_for_split_t_uint256()
                var__3813 := zero_t_uint256_224

                /// @src 50:10653:10672  "_pendingWithdrawals"
                let _225_slot := 0xa2
                let expr_3817_slot := _225_slot
                /// @src 50:10673:10680  "account"
                let _226 := var_account_3809
                let expr_3818 := _226
                /// @src 50:10653:10681  "_pendingWithdrawals[account]"
                let _227 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3817_slot,expr_3818)
                let _228 := read_from_storage_split_offset_0_t_uint256(_227)
                let expr_3819 := _228
                /// @src 50:10625:10681  "uint256 pendingWithdrawal = _pendingWithdrawals[account]"
                let var_pendingWithdrawal_3816 := expr_3819
                /// @src 50:10698:10715  "pendingWithdrawal"
                let _229 := var_pendingWithdrawal_3816
                let expr_3821 := _229
                /// @src 50:10718:10732  "totalClaimable"
                let _230 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_3822 := _230
                /// @src 50:10698:10732  "pendingWithdrawal > totalClaimable"
                let expr_3823 := gt(cleanup_t_uint256(expr_3821), cleanup_t_uint256(expr_3822))
                /// @src 50:10698:10769  "pendingWithdrawal > totalClaimable ? totalClaimable : pendingWithdrawal"
                let expr_3826
                switch expr_3823
                case 0 {
                    /// @src 50:10752:10769  "pendingWithdrawal"
                    let _231 := var_pendingWithdrawal_3816
                    let expr_3825 := _231
                    /// @src 50:10698:10769  "pendingWithdrawal > totalClaimable ? totalClaimable : pendingWithdrawal"
                    expr_3826 := expr_3825
                }
                default {
                    /// @src 50:10735:10749  "totalClaimable"
                    let _232 := read_from_storage_split_offset_0_t_uint256(0xa5)
                    let expr_3824 := _232
                    /// @src 50:10698:10769  "pendingWithdrawal > totalClaimable ? totalClaimable : pendingWithdrawal"
                    expr_3826 := expr_3824
                }
                /// @src 50:10691:10769  "return pendingWithdrawal > totalClaimable ? totalClaimable : pendingWithdrawal"
                var__3813 := expr_3826
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(value, len) -> length {

                length := len

            }

            function array_length_t_array$_t_bytes32_$dyn_calldata_ptr(value, len) -> length {

                length := len

            }

            function increment_wrapping_t_uint256(value) -> ret {
                ret := cleanup_t_uint256(add(value, 1))
            }

            function panic_error_0x32() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x32)
                revert(0, 0x24)
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

            function calldata_array_index_access_t_array$_t_bytes32_$dyn_calldata_ptr(base_ref, length, index) -> addr {
                if iszero(lt(index, length)) { panic_error_0x32() }
                addr := add(base_ref, mul(index, 32))

            }

            function read_from_calldatat_bytes32(ptr) -> returnValue {

                let value := calldataload(ptr)
                validator_revert_t_bytes32(value)

                returnValue :=

                value

            }

            /// @ast-id 4711
            /// @src 50:20183:20658  "function registerValidators(..."
            function fun_registerValidators_4711(var_pubkeys_4657_offset, var_pubkeys_4657_length, var_signatures_4660_offset, var_signatures_4660_length, var_depositDataRoots_4663_offset, var_depositDataRoots_4663_length) {

                /// @src 50:20369:20376  "pubkeys"
                let _233_offset := var_pubkeys_4657_offset
                let _233_length := var_pubkeys_4657_length
                let expr_4668_offset := _233_offset
                let expr_4668_length := _233_length
                /// @src 50:20369:20383  "pubkeys.length"
                let expr_4669 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_4668_offset, expr_4668_length)
                /// @src 50:20352:20383  "uint256 length = pubkeys.length"
                let var_length_4667 := expr_4669
                /// @src 50:20397:20403  "length"
                let _234 := var_length_4667
                let expr_4671 := _234
                /// @src 50:20407:20417  "signatures"
                let _235_offset := var_signatures_4660_offset
                let _235_length := var_signatures_4660_length
                let expr_4672_offset := _235_offset
                let expr_4672_length := _235_length
                /// @src 50:20407:20424  "signatures.length"
                let expr_4673 := array_length_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_4672_offset, expr_4672_length)
                /// @src 50:20397:20424  "length != signatures.length"
                let expr_4674 := iszero(eq(cleanup_t_uint256(expr_4671), cleanup_t_uint256(expr_4673)))
                /// @src 50:20397:20461  "length != signatures.length || length != depositDataRoots.length"
                let expr_4679 := expr_4674
                if iszero(expr_4679) {
                    /// @src 50:20428:20434  "length"
                    let _236 := var_length_4667
                    let expr_4675 := _236
                    /// @src 50:20438:20454  "depositDataRoots"
                    let _237_offset := var_depositDataRoots_4663_offset
                    let _237_length := var_depositDataRoots_4663_length
                    let expr_4676_offset := _237_offset
                    let expr_4676_length := _237_length
                    /// @src 50:20438:20461  "depositDataRoots.length"
                    let expr_4677 := array_length_t_array$_t_bytes32_$dyn_calldata_ptr(expr_4676_offset, expr_4676_length)
                    /// @src 50:20428:20461  "length != depositDataRoots.length"
                    let expr_4678 := iszero(eq(cleanup_t_uint256(expr_4675), cleanup_t_uint256(expr_4677)))
                    /// @src 50:20397:20461  "length != signatures.length || length != depositDataRoots.length"
                    expr_4679 := expr_4678
                }
                /// @src 50:20393:20516  "if (length != signatures.length || length != depositDataRoots.length) {..."
                if expr_4679 {
                    /// @src 50:20498:20504  "length"
                    let _238 := var_length_4667
                    let expr_4681 := _238
                    /// @src 50:20484:20505  "InvalidAmount(length)"
                    {
                        let _239 := allocate_unbounded()
                        mstore(_239, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _240 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_239, 4) , expr_4681)
                        revert(_239, sub(_240, _239))
                    }/// @src 50:20393:20516  "if (length != signatures.length || length != depositDataRoots.length) {..."
                }
                /// @src 50:20525:20652  "for (uint256 i = 0; i < length; i++) {..."
                for {
                    /// @src 50:20542:20543  "0"
                    let expr_4688 := 0x00
                    /// @src 50:20530:20543  "uint256 i = 0"
                    let var_i_4687 := convert_t_rational_0_by_1_to_t_uint256(expr_4688)
                    } 1 {
                    /// @src 50:20557:20560  "i++"
                    let _242 := var_i_4687
                    let _241 := increment_wrapping_t_uint256(_242)
                    var_i_4687 := _241
                    let expr_4694 := _242
                }
                {
                    /// @src 50:20545:20546  "i"
                    let _243 := var_i_4687
                    let expr_4690 := _243
                    /// @src 50:20549:20555  "length"
                    let _244 := var_length_4667
                    let expr_4691 := _244
                    /// @src 50:20545:20555  "i < length"
                    let expr_4692 := lt(cleanup_t_uint256(expr_4690), cleanup_t_uint256(expr_4691))
                    if iszero(expr_4692) { break }
                    /// @src 50:20594:20601  "pubkeys"
                    let _245_offset := var_pubkeys_4657_offset
                    let _245_length := var_pubkeys_4657_length
                    let expr_4697_offset := _245_offset
                    let expr_4697_length := _245_length
                    /// @src 50:20602:20603  "i"
                    let _246 := var_i_4687
                    let expr_4698 := _246
                    /// @src 50:20594:20604  "pubkeys[i]"
                    let expr_4699_offset, expr_4699_length := calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_4697_offset, expr_4697_length, expr_4698)
                    /// @src 50:20606:20616  "signatures"
                    let _247_offset := var_signatures_4660_offset
                    let _247_length := var_signatures_4660_length
                    let expr_4700_offset := _247_offset
                    let expr_4700_length := _247_length
                    /// @src 50:20617:20618  "i"
                    let _248 := var_i_4687
                    let expr_4701 := _248
                    /// @src 50:20606:20619  "signatures[i]"
                    let expr_4702_offset, expr_4702_length := calldata_array_index_access_t_array$_t_bytes_calldata_ptr_$dyn_calldata_ptr(expr_4700_offset, expr_4700_length, expr_4701)
                    /// @src 50:20621:20637  "depositDataRoots"
                    let _249_offset := var_depositDataRoots_4663_offset
                    let _249_length := var_depositDataRoots_4663_length
                    let expr_4703_offset := _249_offset
                    let expr_4703_length := _249_length
                    /// @src 50:20638:20639  "i"
                    let _250 := var_i_4687
                    let expr_4704 := _250
                    /// @src 50:20621:20640  "depositDataRoots[i]"
                    let expr_4705 := read_from_calldatat_bytes32(calldata_array_index_access_t_array$_t_bytes32_$dyn_calldata_ptr(expr_4703_offset, expr_4703_length, expr_4704))
                    fun_registerValidator_4654(expr_4699_offset, expr_4699_length, expr_4702_offset, expr_4702_length, expr_4705)
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3703(var_account_3698, var_enabled_3700) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_allowlist_3717_inner(var_account_3698, var_enabled_3700)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:9460:9631  "function allowlist(address account, bool enabled) external onlyOperator {..."
            function fun_allowlist_3717_inner(var_account_3698, var_enabled_3700) {

                /// @src 50:9566:9573  "enabled"
                let _251 := var_enabled_3700
                let expr_3708 := _251
                /// @src 50:9542:9554  "_allowlisted"
                let _252_slot := 0xa3
                let expr_3705_slot := _252_slot
                /// @src 50:9555:9562  "account"
                let _253 := var_account_3698
                let expr_3706 := _253
                /// @src 50:9542:9563  "_allowlisted[account]"
                let _254 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_3705_slot,expr_3706)
                /// @src 50:9542:9573  "_allowlisted[account] = enabled"
                update_storage_value_offset_0t_bool_to_t_bool(_254, expr_3708)
                let expr_3709 := expr_3708
                /// @src 50:9607:9614  "account"
                let _255 := var_account_3698
                let expr_3712 := _255
                /// @src 50:9616:9623  "enabled"
                let _256 := var_enabled_3700
                let expr_3713 := _256
                /// @src 50:9588:9624  "AllowedListChanged(account, enabled)"
                let _257 := 0xf9e413950d1b8f39d8eed52587c85ee8a7bb4982eef739edb46b88de173b847e
                let _258 := convert_t_address_to_t_address(expr_3712)
                let _259 := convert_t_bool_to_t_bool(expr_3713)
                {
                    let _260 := allocate_unbounded()
                    let _261 := abi_encode_tuple__to__fromStack(_260 )
                    log3(_260, sub(_261, _260) , _257, _258, _259)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3717
            /// @src 50:9460:9631  "function allowlist(address account, bool enabled) external onlyOperator {..."
            function fun_allowlist_3717(var_account_3698, var_enabled_3700) {

                modifier_onlyOperator_3703(var_account_3698, var_enabled_3700)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3696
            /// @src 50:9353:9454  "function isOracle(address oracle) public view returns (bool) {..."
            function fun_isOracle_3696(var_oracle_3686) -> var__3689 {
                /// @src 50:9408:9412  "bool"
                let zero_t_bool_262 := zero_value_for_split_t_bool()
                var__3689 := zero_t_bool_262

                /// @src 50:9431:9439  "_oracles"
                let _263_slot := 0xa1
                let expr_3691_slot := _263_slot
                /// @src 50:9440:9446  "oracle"
                let _264 := var_oracle_3686
                let expr_3692 := _264
                /// @src 50:9431:9447  "_oracles[oracle]"
                let _265 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_3691_slot,expr_3692)
                let _266 := read_from_storage_split_offset_0_t_bool(_265)
                let expr_3693 := _266
                /// @src 50:9424:9447  "return _oracles[oracle]"
                var__3689 := expr_3693
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3670(var_oracle_3665, var_enabled_3667) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_enableOracle_3684_inner(var_oracle_3665, var_enabled_3667)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:9185:9347  "function enableOracle(address oracle, bool enabled) external onlyOperator {..."
            function fun_enableOracle_3684_inner(var_oracle_3665, var_enabled_3667) {

                /// @src 50:9288:9295  "enabled"
                let _267 := var_enabled_3667
                let expr_3675 := _267
                /// @src 50:9269:9277  "_oracles"
                let _268_slot := 0xa1
                let expr_3672_slot := _268_slot
                /// @src 50:9278:9284  "oracle"
                let _269 := var_oracle_3665
                let expr_3673 := _269
                /// @src 50:9269:9285  "_oracles[oracle]"
                let _270 := mapping_index_access_t_mapping$_t_address_$_t_bool_$_of_t_address(expr_3672_slot,expr_3673)
                /// @src 50:9269:9295  "_oracles[oracle] = enabled"
                update_storage_value_offset_0t_bool_to_t_bool(_270, expr_3675)
                let expr_3676 := expr_3675
                /// @src 50:9324:9330  "oracle"
                let _271 := var_oracle_3665
                let expr_3679 := _271
                /// @src 50:9332:9339  "enabled"
                let _272 := var_enabled_3667
                let expr_3680 := _272
                /// @src 50:9310:9340  "OracleEnabled(oracle, enabled)"
                let _273 := 0xbe48fe9f789ce7545c238a8194cef896faf05ceaf6f5c0cff869b3e960437c7b
                let _274 := convert_t_address_to_t_address(expr_3679)
                {
                    let _275 := allocate_unbounded()
                    let _276 := abi_encode_tuple_t_bool__to_t_bool__fromStack(_275 , expr_3680)
                    log2(_275, sub(_276, _275) , _273, _274)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3684
            /// @src 50:9185:9347  "function enableOracle(address oracle, bool enabled) external onlyOperator {..."
            function fun_enableOracle_3684(var_oracle_3665, var_enabled_3667) {

                modifier_onlyOperator_3670(var_oracle_3665, var_enabled_3667)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3506(var_newOperator_3503) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_setOperator_3513_inner(var_newOperator_3503)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:7565:7671  "function setOperator(address newOperator) external onlyOperator {..."
            function fun_setOperator_3513_inner(var_newOperator_3503) {

                /// @src 50:7652:7663  "newOperator"
                let _277 := var_newOperator_3503
                let expr_3509 := _277
                fun__setOperator_3540(expr_3509)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3513
            /// @src 50:7565:7671  "function setOperator(address newOperator) external onlyOperator {..."
            function fun_setOperator_3513(var_newOperator_3503) {

                modifier_onlyOperator_3506(var_newOperator_3503)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3630(var_newDepositLimit_3627) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_setDepositLimit_3663_inner(var_newDepositLimit_3627)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_1000000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000000_by_1(value)))
            }

            /// @src 50:3937:3999  "uint256 private constant _MAX_VALIDATORS_SUPPORTED = 1_000_000"
            function constant__MAX_VALIDATORS_SUPPORTED_3267() -> ret {
                /// @src 50:3990:3999  "1_000_000"
                let expr_3266 := 0x0f4240
                let _281 := convert_t_rational_1000000_by_1_to_t_uint256(expr_3266)

                ret := _281
            }

            /// @src 50:8695:9179  "function setDepositLimit(uint256 newDepositLimit) external onlyOperator {..."
            function fun_setDepositLimit_3663_inner(var_newDepositLimit_3627) {

                /// @src 50:8794:8809  "newDepositLimit"
                let _278 := var_newDepositLimit_3627
                let expr_3632 := _278
                /// @src 50:8812:8837  "totalValidatorsRegistered"
                let _279 := read_from_storage_split_offset_0_t_uint256(0x9c)
                let expr_3633 := _279
                /// @src 50:8840:8854  "DEPOSIT_AMOUNT"
                let expr_3634 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:8812:8854  "totalValidatorsRegistered * DEPOSIT_AMOUNT"
                let expr_3635 := checked_mul_t_uint256(expr_3633, expr_3634)

                /// @src 50:8794:8854  "newDepositLimit < totalValidatorsRegistered * DEPOSIT_AMOUNT"
                let expr_3636 := lt(cleanup_t_uint256(expr_3632), cleanup_t_uint256(expr_3635))
                /// @src 50:8794:8934  "newDepositLimit < totalValidatorsRegistered * DEPOSIT_AMOUNT..."
                let expr_3642 := expr_3636
                if iszero(expr_3642) {
                    /// @src 50:8874:8889  "newDepositLimit"
                    let _280 := var_newDepositLimit_3627
                    let expr_3637 := _280
                    /// @src 50:8892:8917  "_MAX_VALIDATORS_SUPPORTED"
                    let expr_3638 := constant__MAX_VALIDATORS_SUPPORTED_3267()
                    /// @src 50:8920:8934  "DEPOSIT_AMOUNT"
                    let expr_3639 := constant_DEPOSIT_AMOUNT_7540()
                    /// @src 50:8892:8934  "_MAX_VALIDATORS_SUPPORTED * DEPOSIT_AMOUNT"
                    let expr_3640 := checked_mul_t_uint256(expr_3638, expr_3639)

                    /// @src 50:8874:8934  "newDepositLimit > _MAX_VALIDATORS_SUPPORTED * DEPOSIT_AMOUNT"
                    let expr_3641 := gt(cleanup_t_uint256(expr_3637), cleanup_t_uint256(expr_3640))
                    /// @src 50:8794:8934  "newDepositLimit < totalValidatorsRegistered * DEPOSIT_AMOUNT..."
                    expr_3642 := expr_3641
                }
                /// @src 50:8777:9007  "if (..."
                if expr_3642 {
                    /// @src 50:8980:8995  "newDepositLimit"
                    let _282 := var_newDepositLimit_3627
                    let expr_3644 := _282
                    /// @src 50:8966:8996  "InvalidAmount(newDepositLimit)"
                    {
                        let _283 := allocate_unbounded()
                        mstore(_283, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _284 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_283, 4) , expr_3644)
                        revert(_283, sub(_284, _283))
                    }/// @src 50:8777:9007  "if (..."
                }
                /// @src 50:9047:9059  "depositLimit"
                let _285 := read_from_storage_split_offset_0_t_uint256(0x97)
                let expr_3651 := _285
                /// @src 50:9016:9059  "uint256 previousDepositLimit = depositLimit"
                let var_previousDepositLimit_3650 := expr_3651
                /// @src 50:9084:9099  "newDepositLimit"
                let _286 := var_newDepositLimit_3627
                let expr_3654 := _286
                /// @src 50:9069:9099  "depositLimit = newDepositLimit"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x97, expr_3654)
                let expr_3655 := expr_3654
                /// @src 50:9134:9154  "previousDepositLimit"
                let _287 := var_previousDepositLimit_3650
                let expr_3658 := _287
                /// @src 50:9156:9171  "newDepositLimit"
                let _288 := var_newDepositLimit_3627
                let expr_3659 := _288
                /// @src 50:9114:9172  "DepositLimitChanged(previousDepositLimit, newDepositLimit)"
                let _289 := 0xcfb5a454b8aa7dc04ecb5bc1410b2a57969ca1d67f66d565196f60c6f9975404
                {
                    let _290 := allocate_unbounded()
                    let _291 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(_290 , expr_3658, expr_3659)
                    log1(_290, sub(_291, _290) , _289)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3663
            /// @src 50:8695:9179  "function setDepositLimit(uint256 newDepositLimit) external onlyOperator {..."
            function fun_setDepositLimit_3663(var_newDepositLimit_3627) {

                modifier_onlyOperator_3630(var_newDepositLimit_3627)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function shift_right_168_unsigned(value) -> newValue {
                newValue :=

                shr(168, value)

            }

            function extract_from_storage_value_offset_21t_bool(slot_value) -> value {
                value := cleanup_from_storage_t_bool(shift_right_168_unsigned(slot_value))
            }

            function read_from_storage_split_offset_21_t_bool(slot) -> value {
                value := extract_from_storage_value_offset_21t_bool(sload(slot))

            }

            function shift_right_160_unsigned(value) -> newValue {
                newValue :=

                shr(160, value)

            }

            function cleanup_from_storage_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function extract_from_storage_value_offset_20t_uint8(slot_value) -> value {
                value := cleanup_from_storage_t_uint8(shift_right_160_unsigned(slot_value))
            }

            function read_from_storage_split_offset_20_t_uint8(slot) -> value {
                value := extract_from_storage_value_offset_20t_uint8(sload(slot))

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

            function shift_left_160(value) -> newValue {
                newValue :=

                shl(160, value)

            }

            function update_byte_slice_1_shift_20(value, toInsert) -> result {
                let mask := 0xff0000000000000000000000000000000000000000
                toInsert := shift_left_160(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint8_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_uint8(value)))
            }

            function prepare_store_t_uint8(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_20t_uint8_to_t_uint8(slot, value_0) {
                let convertedValue_0 := convert_t_uint8_to_t_uint8(value_0)
                sstore(slot, update_byte_slice_1_shift_20(sload(slot), prepare_store_t_uint8(convertedValue_0)))
            }

            function shift_left_168(value) -> newValue {
                newValue :=

                shl(168, value)

            }

            function update_byte_slice_1_shift_21(value, toInsert) -> result {
                let mask := 0xff000000000000000000000000000000000000000000
                toInsert := shift_left_168(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_21t_bool_to_t_bool(slot, value_0) {
                let convertedValue_0 := convert_t_bool_to_t_bool(value_0)
                sstore(slot, update_byte_slice_1_shift_21(sload(slot), prepare_store_t_bool(convertedValue_0)))
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
            function modifier_initializer_3432(var_owner__3424, var_operator__3426, var_depositContract__3429_address) {

                /// @src 23:3302:3315  "_initializing"
                let _292 := read_from_storage_split_offset_21_t_bool(0x00)
                let expr_7080 := _292
                /// @src 23:3301:3315  "!_initializing"
                let expr_7081 := cleanup_t_bool(iszero(expr_7080))
                /// @src 23:3279:3315  "bool isTopLevelCall = !_initializing"
                let var_isTopLevelCall_7079 := expr_7081
                /// @src 23:3347:3361  "isTopLevelCall"
                let _293 := var_isTopLevelCall_7079
                let expr_7084 := _293
                /// @src 23:3347:3381  "isTopLevelCall && _initialized < 1"
                let expr_7088 := expr_7084
                if expr_7088 {
                    /// @src 23:3365:3377  "_initialized"
                    let _294 := read_from_storage_split_offset_20_t_uint8(0x00)
                    let expr_7085 := _294
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
                        let _295 := read_from_storage_split_offset_20_t_uint8(0x00)
                        let expr_7098 := _295
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
                let _296 := convert_t_rational_1_by_1_to_t_uint8(expr_7108)
                update_storage_value_offset_20t_uint8_to_t_uint8(0x00, _296)
                let expr_7109 := _296
                /// @src 23:3566:3580  "isTopLevelCall"
                let _297 := var_isTopLevelCall_7079
                let expr_7111 := _297
                /// @src 23:3562:3627  "if (isTopLevelCall) {..."
                if expr_7111 {
                    /// @src 23:3612:3616  "true"
                    let expr_7113 := 0x01
                    /// @src 23:3596:3616  "_initializing = true"
                    update_storage_value_offset_21t_bool_to_t_bool(0x00, expr_7113)
                    let expr_7114 := expr_7113
                    /// @src 23:3562:3627  "if (isTopLevelCall) {..."
                }
                /// @src 23:3636:3637  "_"
                fun_initialize_3471_inner(var_owner__3424, var_operator__3426, var_depositContract__3429_address)
                /// @src 23:3651:3665  "isTopLevelCall"
                let _298 := var_isTopLevelCall_7079
                let expr_7119 := _298
                /// @src 23:3647:3746  "if (isTopLevelCall) {..."
                if expr_7119 {
                    /// @src 23:3697:3702  "false"
                    let expr_7121 := 0x00
                    /// @src 23:3681:3702  "_initializing = false"
                    update_storage_value_offset_21t_bool_to_t_bool(0x00, expr_7121)
                    let expr_7122 := expr_7121
                    /// @src 23:3733:3734  "1"
                    let expr_7125 := 0x01
                    /// @src 23:3721:3735  "Initialized(1)"
                    let _299 := 0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498
                    {
                        let _300 := allocate_unbounded()
                        let _301 := abi_encode_tuple_t_rational_1_by_1__to_t_uint8__fromStack(_300 , expr_7125)
                        log1(_300, sub(_301, _300) , _299)
                    }/// @src 23:3647:3746  "if (isTopLevelCall) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function shift_left_8(value) -> newValue {
                newValue :=

                shl(8, value)

            }

            function update_byte_slice_20_shift_1(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff00
                toInsert := shift_left_8(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint160_to_t_contract$_IDepositContract_$7584(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_contract$_IDepositContract_$7584_to_t_contract$_IDepositContract_$7584(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IDepositContract_$7584(value)
            }

            function prepare_store_t_contract$_IDepositContract_$7584(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_1t_contract$_IDepositContract_$7584_to_t_contract$_IDepositContract_$7584(slot, value_0) {
                let convertedValue_0 := convert_t_contract$_IDepositContract_$7584_to_t_contract$_IDepositContract_$7584(value_0)
                sstore(slot, update_byte_slice_20_shift_1(sload(slot), prepare_store_t_contract$_IDepositContract_$7584(convertedValue_0)))
            }

            /// @src 50:6904:7315  "function initialize(address owner_, address operator_, IDepositContract depositContract_) external initializer {..."
            function fun_initialize_3471_inner(var_owner__3424, var_operator__3426, var_depositContract__3429_address) {

                /// @src 50:7037:7053  "depositContract_"
                let _302_address := var_depositContract__3429_address
                let expr_3436_address := _302_address
                /// @src 50:7029:7054  "address(depositContract_)"
                let expr_3437 := convert_t_contract$_IDepositContract_$7584_to_t_address(expr_3436_address)
                /// @src 50:7066:7067  "0"
                let expr_3440 := 0x00
                /// @src 50:7058:7068  "address(0)"
                let expr_3441 := convert_t_rational_0_by_1_to_t_address(expr_3440)
                /// @src 50:7029:7068  "address(depositContract_) == address(0)"
                let expr_3442 := eq(cleanup_t_address(expr_3437), cleanup_t_address(expr_3441))
                /// @src 50:7025:7143  "if (address(depositContract_) == address(0)) {..."
                if expr_3442 {
                    /// @src 50:7114:7130  "depositContract_"
                    let _303_address := var_depositContract__3429_address
                    let expr_3446_address := _303_address
                    /// @src 50:7106:7131  "address(depositContract_)"
                    let expr_3447 := convert_t_contract$_IDepositContract_$7584_to_t_address(expr_3446_address)
                    /// @src 50:7091:7132  "InvalidAddress(address(depositContract_))"
                    {
                        let _304 := allocate_unbounded()
                        mstore(_304, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _305 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_304, 4) , expr_3447)
                        revert(_304, sub(_305, _304))
                    }/// @src 50:7025:7143  "if (address(depositContract_) == address(0)) {..."
                }
                fun___ReentrancyGuard_init_7450()
                fun___Pausable_init_1896()
                /// @src 50:7223:7229  "owner_"
                let _306 := var_owner__3424
                let expr_3459 := _306
                fun__setOwner_7425(expr_3459)
                /// @src 50:7253:7262  "operator_"
                let _307 := var_operator__3426
                let expr_3463 := _307
                fun__setOperator_3540(expr_3463)
                /// @src 50:7292:7308  "depositContract_"
                let _308_address := var_depositContract__3429_address
                let expr_3467_address := _308_address
                /// @src 50:7273:7308  "_depositContract = depositContract_"
                update_storage_value_offset_1t_contract$_IDepositContract_$7584_to_t_contract$_IDepositContract_$7584(0x9f, expr_3467_address)
                let expr_3468_address := expr_3467_address

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3471
            /// @src 50:6904:7315  "function initialize(address owner_, address operator_, IDepositContract depositContract_) external initializer {..."
            function fun_initialize_3471(var_owner__3424, var_operator__3426, var_depositContract__3429_address) {

                modifier_initializer_3432(var_owner__3424, var_operator__3426, var_depositContract__3429_address)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7471
            /// @src 25:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_3837(var_amount_3831, var_beneficiary_3833) {

                fun__nonReentrantBefore_7486()
                /// @src 25:2557:2558  "_"
                modifier_whenNotPaused_3839(var_amount_3831, var_beneficiary_3833)
                fun__nonReentrantAfter_7494()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_3839(var_amount_3831, var_beneficiary_3833) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_claim_3931_inner(var_amount_3831, var_beneficiary_3833)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:10782:11691  "function claim(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_claim_3931_inner(var_amount_3831, var_beneficiary_3833) {

                /// @src 50:10893:10904  "beneficiary"
                let _309 := var_beneficiary_3833
                let expr_3841 := _309
                /// @src 50:10916:10917  "0"
                let expr_3844 := 0x00
                /// @src 50:10908:10918  "address(0)"
                let expr_3845 := convert_t_rational_0_by_1_to_t_address(expr_3844)
                /// @src 50:10893:10918  "beneficiary == address(0)"
                let expr_3846 := eq(cleanup_t_address(expr_3841), cleanup_t_address(expr_3845))
                /// @src 50:10889:10979  "if (beneficiary == address(0)) {..."
                if expr_3846 {
                    /// @src 50:10956:10967  "beneficiary"
                    let _310 := var_beneficiary_3833
                    let expr_3848 := _310
                    /// @src 50:10941:10968  "InvalidAddress(beneficiary)"
                    {
                        let _311 := allocate_unbounded()
                        mstore(_311, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _312 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_311, 4) , expr_3848)
                        revert(_311, sub(_312, _311))
                    }/// @src 50:10889:10979  "if (beneficiary == address(0)) {..."
                }
                /// @src 50:11006:11016  "msg.sender"
                let expr_3856 := caller()
                /// @src 50:10988:11016  "address account = msg.sender"
                let var_account_3854 := expr_3856
                /// @src 50:11030:11036  "amount"
                let _313 := var_amount_3831
                let expr_3858 := _313
                /// @src 50:11040:11041  "0"
                let expr_3859 := 0x00
                /// @src 50:11030:11041  "amount == 0"
                let expr_3860 := eq(cleanup_t_uint256(expr_3858), convert_t_rational_0_by_1_to_t_uint256(expr_3859))
                /// @src 50:11026:11096  "if (amount == 0) {..."
                if expr_3860 {
                    /// @src 50:11078:11084  "amount"
                    let _314 := var_amount_3831
                    let expr_3862 := _314
                    /// @src 50:11064:11085  "InvalidAmount(amount)"
                    {
                        let _315 := allocate_unbounded()
                        mstore(_315, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _316 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_315, 4) , expr_3862)
                        revert(_315, sub(_316, _315))
                    }/// @src 50:11026:11096  "if (amount == 0) {..."
                }
                /// @src 50:11109:11115  "amount"
                let _317 := var_amount_3831
                let expr_3867 := _317
                /// @src 50:11118:11137  "_pendingWithdrawals"
                let _318_slot := 0xa2
                let expr_3868_slot := _318_slot
                /// @src 50:11138:11145  "account"
                let _319 := var_account_3854
                let expr_3869 := _319
                /// @src 50:11118:11146  "_pendingWithdrawals[account]"
                let _320 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3868_slot,expr_3869)
                let _321 := read_from_storage_split_offset_0_t_uint256(_320)
                let expr_3870 := _321
                /// @src 50:11109:11146  "amount > _pendingWithdrawals[account]"
                let expr_3871 := gt(cleanup_t_uint256(expr_3867), cleanup_t_uint256(expr_3870))
                /// @src 50:11105:11237  "if (amount > _pendingWithdrawals[account]) {..."
                if expr_3871 {
                    /// @src 50:11189:11208  "_pendingWithdrawals"
                    let _322_slot := 0xa2
                    let expr_3873_slot := _322_slot
                    /// @src 50:11209:11216  "account"
                    let _323 := var_account_3854
                    let expr_3874 := _323
                    /// @src 50:11189:11217  "_pendingWithdrawals[account]"
                    let _324 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3873_slot,expr_3874)
                    let _325 := read_from_storage_split_offset_0_t_uint256(_324)
                    let expr_3875 := _325
                    /// @src 50:11219:11225  "amount"
                    let _326 := var_amount_3831
                    let expr_3876 := _326
                    /// @src 50:11169:11226  "InsufficientBalance(_pendingWithdrawals[account], amount)"
                    {
                        let _327 := allocate_unbounded()
                        mstore(_327, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _328 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_327, 4) , expr_3875, expr_3876)
                        revert(_327, sub(_328, _327))
                    }/// @src 50:11105:11237  "if (amount > _pendingWithdrawals[account]) {..."
                }
                /// @src 50:11250:11256  "amount"
                let _329 := var_amount_3831
                let expr_3881 := _329
                /// @src 50:11259:11273  "totalClaimable"
                let _330 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_3882 := _330
                /// @src 50:11250:11273  "amount > totalClaimable"
                let expr_3883 := gt(cleanup_t_uint256(expr_3881), cleanup_t_uint256(expr_3882))
                /// @src 50:11246:11350  "if (amount > totalClaimable) {..."
                if expr_3883 {
                    /// @src 50:11316:11330  "totalClaimable"
                    let _331 := read_from_storage_split_offset_0_t_uint256(0xa5)
                    let expr_3885 := _331
                    /// @src 50:11332:11338  "amount"
                    let _332 := var_amount_3831
                    let expr_3886 := _332
                    /// @src 50:11296:11339  "InsufficientBalance(totalClaimable, amount)"
                    {
                        let _333 := allocate_unbounded()
                        mstore(_333, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _334 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_333, 4) , expr_3885, expr_3886)
                        revert(_333, sub(_334, _333))
                    }/// @src 50:11246:11350  "if (amount > totalClaimable) {..."
                }
                /// @src 50:11391:11397  "amount"
                let _335 := var_amount_3831
                let expr_3894 := _335
                /// @src 50:11359:11378  "_pendingWithdrawals"
                let _336_slot := 0xa2
                let expr_3891_slot := _336_slot
                /// @src 50:11379:11386  "account"
                let _337 := var_account_3854
                let expr_3892 := _337
                /// @src 50:11359:11387  "_pendingWithdrawals[account]"
                let _338 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3891_slot,expr_3892)
                /// @src 50:11359:11397  "_pendingWithdrawals[account] -= amount"
                let _339 := read_from_storage_split_offset_0_t_uint256(_338)
                let expr_3895 := checked_sub_t_uint256(_339, expr_3894)

                update_storage_value_offset_0t_uint256_to_t_uint256(_338, expr_3895)
                /// @src 50:11433:11439  "amount"
                let _340 := var_amount_3831
                let expr_3898 := _340
                /// @src 50:11407:11439  "totalPendingWithdrawal -= amount"
                let _341 := read_from_storage_split_offset_0_t_uint256(0x9b)
                let expr_3899 := checked_sub_t_uint256(_341, expr_3898)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9b, expr_3899)
                /// @src 50:11467:11473  "amount"
                let _342 := var_amount_3831
                let expr_3902 := _342
                /// @src 50:11449:11473  "totalClaimable -= amount"
                let _343 := read_from_storage_split_offset_0_t_uint256(0xa5)
                let expr_3903 := checked_sub_t_uint256(_343, expr_3902)

                update_storage_value_offset_0t_uint256_to_t_uint256(0xa5, expr_3903)
                /// @src 50:11501:11512  "beneficiary"
                let _344 := var_beneficiary_3833
                let expr_3907 := _344
                /// @src 50:11501:11517  "beneficiary.call"
                let expr_3908_address := expr_3907
                /// @src 50:11525:11531  "amount"
                let _345 := var_amount_3831
                let expr_3909 := _345
                /// @src 50:11501:11532  "beneficiary.call{value: amount}"
                let expr_3910_address := expr_3908_address
                let expr_3910_value := expr_3909
                /// @src 50:11501:11536  "beneficiary.call{value: amount}(\"\")"

                let _346 := allocate_unbounded()
                let _347 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_346  ), _346)

                let expr_3912_component_1 := call(gas(), expr_3910_address,  expr_3910_value,  _346, _347, 0, 0)
                let expr_3912_component_2_mpos := extract_returndata()
                /// @src 50:11483:11536  "(bool success,) = beneficiary.call{value: amount}(\"\")"
                let var_success_3906 := expr_3912_component_1
                /// @src 50:11551:11558  "success"
                let _348 := var_success_3906
                let expr_3914 := _348
                /// @src 50:11550:11558  "!success"
                let expr_3915 := cleanup_t_bool(iszero(expr_3914))
                /// @src 50:11546:11633  "if (!success) {..."
                if expr_3915 {
                    /// @src 50:11593:11600  "account"
                    let _349 := var_account_3854
                    let expr_3917 := _349
                    /// @src 50:11602:11613  "beneficiary"
                    let _350 := var_beneficiary_3833
                    let expr_3918 := _350
                    /// @src 50:11615:11621  "amount"
                    let _351 := var_amount_3831
                    let expr_3919 := _351
                    /// @src 50:11581:11622  "ClaimFailed(account, beneficiary, amount)"
                    {
                        let _352 := allocate_unbounded()
                        mstore(_352, 110371713829960117890299056680432888923445544579044245419552652929045750611968)
                        let _353 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_352, 4) , expr_3917, expr_3918, expr_3919)
                        revert(_352, sub(_353, _352))
                    }/// @src 50:11546:11633  "if (!success) {..."
                }
                /// @src 50:11655:11662  "account"
                let _354 := var_account_3854
                let expr_3925 := _354
                /// @src 50:11664:11675  "beneficiary"
                let _355 := var_beneficiary_3833
                let expr_3926 := _355
                /// @src 50:11677:11683  "amount"
                let _356 := var_amount_3831
                let expr_3927 := _356
                /// @src 50:11647:11684  "Claimed(account, beneficiary, amount)"
                let _357 := 0xf7a40077ff7a04c7e61f6f26fb13774259ddf1b6bce9ecf26a8276cdd3992683
                let _358 := convert_t_address_to_t_address(expr_3925)
                let _359 := convert_t_address_to_t_address(expr_3926)
                {
                    let _360 := allocate_unbounded()
                    let _361 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_360 , expr_3927)
                    log3(_360, sub(_361, _360) , _357, _358, _359)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3931
            /// @src 50:10782:11691  "function claim(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_claim_3931(var_amount_3831, var_beneficiary_3833) {

                modifier_nonReentrant_3837(var_amount_3831, var_beneficiary_3833)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3394
            /// @src 50:6579:6647  "modifier onlyOperator() {..."
            function modifier_onlyOperator_3597(var_newFeeRecipient_3594) {

                fun__checkOperator_3501()
                /// @src 50:6639:6640  "_"
                fun_setFeeRecipient_3625_inner(var_newFeeRecipient_3594)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function shift_right_32_unsigned(value) -> newValue {
                newValue :=

                shr(32, value)

            }

            function extract_from_storage_value_offset_4t_address(slot_value) -> value {
                value := cleanup_from_storage_t_address(shift_right_32_unsigned(slot_value))
            }

            function read_from_storage_split_offset_4_t_address(slot) -> value {
                value := extract_from_storage_value_offset_4t_address(sload(slot))

            }

            function shift_left_32(value) -> newValue {
                newValue :=

                shl(32, value)

            }

            function update_byte_slice_20_shift_4(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff00000000
                toInsert := shift_left_32(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function prepare_store_t_address(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_4t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_4(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            function abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_address_to_t_address_fromStack(value1,  add(headStart, 32))

            }

            /// @src 50:8337:8689  "function setFeeRecipient(address newFeeRecipient) external onlyOperator {..."
            function fun_setFeeRecipient_3625_inner(var_newFeeRecipient_3594) {

                /// @src 50:8423:8438  "newFeeRecipient"
                let _362 := var_newFeeRecipient_3594
                let expr_3599 := _362
                /// @src 50:8450:8451  "0"
                let expr_3602 := 0x00
                /// @src 50:8442:8452  "address(0)"
                let expr_3603 := convert_t_rational_0_by_1_to_t_address(expr_3602)
                /// @src 50:8423:8452  "newFeeRecipient == address(0)"
                let expr_3604 := eq(cleanup_t_address(expr_3599), cleanup_t_address(expr_3603))
                /// @src 50:8419:8517  "if (newFeeRecipient == address(0)) {..."
                if expr_3604 {
                    /// @src 50:8490:8505  "newFeeRecipient"
                    let _363 := var_newFeeRecipient_3594
                    let expr_3606 := _363
                    /// @src 50:8475:8506  "InvalidAddress(newFeeRecipient)"
                    {
                        let _364 := allocate_unbounded()
                        mstore(_364, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _365 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_364, 4) , expr_3606)
                        revert(_364, sub(_365, _364))
                    }/// @src 50:8419:8517  "if (newFeeRecipient == address(0)) {..."
                }
                /// @src 50:8557:8569  "feeRecipient"
                let _366 := read_from_storage_split_offset_4_t_address(0x9d)
                let expr_3613 := _366
                /// @src 50:8526:8569  "address previousFeeRecipient = feeRecipient"
                let var_previousFeeRecipient_3612 := expr_3613
                /// @src 50:8594:8609  "newFeeRecipient"
                let _367 := var_newFeeRecipient_3594
                let expr_3616 := _367
                /// @src 50:8579:8609  "feeRecipient = newFeeRecipient"
                update_storage_value_offset_4t_address_to_t_address(0x9d, expr_3616)
                let expr_3617 := expr_3616
                /// @src 50:8644:8664  "previousFeeRecipient"
                let _368 := var_previousFeeRecipient_3612
                let expr_3620 := _368
                /// @src 50:8666:8681  "newFeeRecipient"
                let _369 := var_newFeeRecipient_3594
                let expr_3621 := _369
                /// @src 50:8624:8682  "FeeRecipientChanged(previousFeeRecipient, newFeeRecipient)"
                let _370 := 0x0bc21fe5c3ab742ff1d15b5c4477ffbacf1167e618228078fa625edebe7f331d
                {
                    let _371 := allocate_unbounded()
                    let _372 := abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(_371 , expr_3620, expr_3621)
                    log1(_371, sub(_372, _371) , _370)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3625
            /// @src 50:8337:8689  "function setFeeRecipient(address newFeeRecipient) external onlyOperator {..."
            function fun_setFeeRecipient_3625(var_newFeeRecipient_3594) {

                modifier_onlyOperator_3597(var_newFeeRecipient_3594)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_4722(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                modifier_nonReentrant_4724(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7471
            /// @src 25:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4724(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length) {

                fun__nonReentrantBefore_7486()
                /// @src 25:2557:2558  "_"
                fun_transferStake_4834_inner(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length)
                fun__nonReentrantAfter_7494()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function abi_encode_tuple_t_uint256_t_bytes_calldata_ptr__to_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2) -> tail {
                tail := add(headStart, 64)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

                mstore(add(headStart, 32), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value1, value2,  tail)

            }

            function convert_t_uint160_to_t_contract$_IVaultStakeRecipient_$7841(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_contract$_IVaultStakeRecipient_$7841(value) -> converted {
                converted := convert_t_uint160_to_t_contract$_IVaultStakeRecipient_$7841(value)
            }

            function convert_t_contract$_IVaultStakeRecipient_$7841_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function abi_encode_tuple_t_address_t_uint256_t_bytes_calldata_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1, value2, value3) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_bytes_calldata_ptr_to_t_bytes_memory_ptr_fromStack(value2, value3,  tail)

            }

            /// @src 50:21189:22216  "function transferStake(address to, uint256 amount, bytes calldata data)..."
            function fun_transferStake_4834_inner(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length) {

                /// @src 50:21370:21380  "msg.sender"
                let expr_4729 := caller()
                /// @src 50:21352:21380  "address account = msg.sender"
                let var_account_4727 := expr_4729
                /// @src 50:21394:21400  "amount"
                let _373 := var_amount_4716
                let expr_4731 := _373
                /// @src 50:21404:21405  "0"
                let expr_4732 := 0x00
                /// @src 50:21394:21405  "amount == 0"
                let expr_4733 := eq(cleanup_t_uint256(expr_4731), convert_t_rational_0_by_1_to_t_uint256(expr_4732))
                /// @src 50:21390:21460  "if (amount == 0) {..."
                if expr_4733 {
                    /// @src 50:21442:21448  "amount"
                    let _374 := var_amount_4716
                    let expr_4735 := _374
                    /// @src 50:21428:21449  "InvalidAmount(amount)"
                    {
                        let _375 := allocate_unbounded()
                        mstore(_375, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _376 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_375, 4) , expr_4735)
                        revert(_375, sub(_376, _375))
                    }/// @src 50:21390:21460  "if (amount == 0) {..."
                }
                /// @src 50:21473:21479  "amount"
                let _377 := var_amount_4716
                let expr_4740 := _377
                /// @src 50:21492:21499  "account"
                let _378 := var_account_4727
                let expr_4742 := _378
                /// @src 50:21482:21500  "balanceOf(account)"
                let expr_4743 := fun_balanceOf_3794(expr_4742)
                /// @src 50:21473:21500  "amount > balanceOf(account)"
                let expr_4744 := gt(cleanup_t_uint256(expr_4740), cleanup_t_uint256(expr_4743))
                /// @src 50:21469:21581  "if (amount > balanceOf(account)) {..."
                if expr_4744 {
                    /// @src 50:21553:21560  "account"
                    let _379 := var_account_4727
                    let expr_4747 := _379
                    /// @src 50:21543:21561  "balanceOf(account)"
                    let expr_4748 := fun_balanceOf_3794(expr_4747)
                    /// @src 50:21563:21569  "amount"
                    let _380 := var_amount_4716
                    let expr_4749 := _380
                    /// @src 50:21523:21570  "InsufficientBalance(balanceOf(account), amount)"
                    {
                        let _381 := allocate_unbounded()
                        mstore(_381, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _382 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_381, 4) , expr_4748, expr_4749)
                        revert(_381, sub(_382, _381))
                    }/// @src 50:21469:21581  "if (amount > balanceOf(account)) {..."
                }
                /// @src 50:21617:21623  "amount"
                let _383 := var_amount_4716
                let expr_4757 := _383
                /// @src 50:21607:21624  "_toShares(amount)"
                let expr_4758 := fun__toShares_3992(expr_4757)
                /// @src 50:21590:21624  "uint256 shares = _toShares(amount)"
                let var_shares_4755 := expr_4758
                /// @src 50:21638:21644  "shares"
                let _384 := var_shares_4755
                let expr_4760 := _384
                /// @src 50:21648:21649  "0"
                let expr_4761 := 0x00
                /// @src 50:21638:21649  "shares == 0"
                let expr_4762 := eq(cleanup_t_uint256(expr_4760), convert_t_rational_0_by_1_to_t_uint256(expr_4761))
                /// @src 50:21634:21704  "if (shares == 0) {..."
                if expr_4762 {
                    /// @src 50:21686:21692  "shares"
                    let _385 := var_shares_4755
                    let expr_4764 := _385
                    /// @src 50:21672:21693  "InvalidAmount(shares)"
                    {
                        let _386 := allocate_unbounded()
                        mstore(_386, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _387 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_386, 4) , expr_4764)
                        revert(_386, sub(_387, _386))
                    }/// @src 50:21634:21704  "if (shares == 0) {..."
                }
                /// @src 50:21717:21723  "shares"
                let _388 := var_shares_4755
                let expr_4769 := _388
                /// @src 50:21726:21733  "_shares"
                let _389_slot := 0xa0
                let expr_4770_slot := _389_slot
                /// @src 50:21734:21741  "account"
                let _390 := var_account_4727
                let expr_4771 := _390
                /// @src 50:21726:21742  "_shares[account]"
                let _391 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4770_slot,expr_4771)
                let _392 := read_from_storage_split_offset_0_t_uint256(_391)
                let expr_4772 := _392
                /// @src 50:21717:21742  "shares > _shares[account]"
                let expr_4773 := gt(cleanup_t_uint256(expr_4769), cleanup_t_uint256(expr_4772))
                /// @src 50:21713:21821  "if (shares > _shares[account]) {..."
                if expr_4773 {
                    /// @src 50:21785:21792  "_shares"
                    let _393_slot := 0xa0
                    let expr_4775_slot := _393_slot
                    /// @src 50:21793:21800  "account"
                    let _394 := var_account_4727
                    let expr_4776 := _394
                    /// @src 50:21785:21801  "_shares[account]"
                    let _395 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4775_slot,expr_4776)
                    let _396 := read_from_storage_split_offset_0_t_uint256(_395)
                    let expr_4777 := _396
                    /// @src 50:21803:21809  "shares"
                    let _397 := var_shares_4755
                    let expr_4778 := _397
                    /// @src 50:21765:21810  "InsufficientBalance(_shares[account], shares)"
                    {
                        let _398 := allocate_unbounded()
                        mstore(_398, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _399 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_398, 4) , expr_4777, expr_4778)
                        revert(_398, sub(_399, _398))
                    }/// @src 50:21713:21821  "if (shares > _shares[account]) {..."
                }
                /// @src 50:21834:21836  "to"
                let _400 := var_to_4714
                let expr_4783 := _400
                /// @src 50:21848:21849  "0"
                let expr_4786 := 0x00
                /// @src 50:21840:21850  "address(0)"
                let expr_4787 := convert_t_rational_0_by_1_to_t_address(expr_4786)
                /// @src 50:21834:21850  "to == address(0)"
                let expr_4788 := eq(cleanup_t_address(expr_4783), cleanup_t_address(expr_4787))
                /// @src 50:21830:21902  "if (to == address(0)) {..."
                if expr_4788 {
                    /// @src 50:21888:21890  "to"
                    let _401 := var_to_4714
                    let expr_4790 := _401
                    /// @src 50:21873:21891  "InvalidAddress(to)"
                    {
                        let _402 := allocate_unbounded()
                        mstore(_402, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _403 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_402, 4) , expr_4790)
                        revert(_402, sub(_403, _402))
                    }/// @src 50:21830:21902  "if (to == address(0)) {..."
                }
                /// @src 50:21931:21937  "shares"
                let _404 := var_shares_4755
                let expr_4798 := _404
                /// @src 50:21911:21918  "_shares"
                let _405_slot := 0xa0
                let expr_4795_slot := _405_slot
                /// @src 50:21919:21926  "account"
                let _406 := var_account_4727
                let expr_4796 := _406
                /// @src 50:21911:21927  "_shares[account]"
                let _407 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4795_slot,expr_4796)
                /// @src 50:21911:21937  "_shares[account] -= shares"
                let _408 := read_from_storage_split_offset_0_t_uint256(_407)
                let expr_4799 := checked_sub_t_uint256(_408, expr_4798)

                update_storage_value_offset_0t_uint256_to_t_uint256(_407, expr_4799)
                /// @src 50:21962:21968  "shares"
                let _409 := var_shares_4755
                let expr_4804 := _409
                /// @src 50:21947:21954  "_shares"
                let _410_slot := 0xa0
                let expr_4801_slot := _410_slot
                /// @src 50:21955:21957  "to"
                let _411 := var_to_4714
                let expr_4802 := _411
                /// @src 50:21947:21958  "_shares[to]"
                let _412 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4801_slot,expr_4802)
                /// @src 50:21947:21968  "_shares[to] += shares"
                let _413 := read_from_storage_split_offset_0_t_uint256(_412)
                let expr_4805 := checked_add_t_uint256(_413, expr_4804)

                update_storage_value_offset_0t_uint256_to_t_uint256(_412, expr_4805)
                /// @src 50:22000:22007  "account"
                let _414 := var_account_4727
                let expr_4808 := _414
                /// @src 50:22009:22011  "to"
                let _415 := var_to_4714
                let expr_4809 := _415
                /// @src 50:22013:22019  "amount"
                let _416 := var_amount_4716
                let expr_4810 := _416
                /// @src 50:22021:22025  "data"
                let _417_offset := var_data_4718_offset
                let _417_length := var_data_4718_length
                let expr_4811_offset := _417_offset
                let expr_4811_length := _417_length
                /// @src 50:21983:22026  "StakeTransferred(account, to, amount, data)"
                let _418 := 0x5af5bf2f8dada23a59a536830e2c9ee1ea6a536db42ad28b35c5ea5ac1036cd1
                let _419 := convert_t_address_to_t_address(expr_4808)
                let _420 := convert_t_address_to_t_address(expr_4809)
                {
                    let _421 := allocate_unbounded()
                    let _422 := abi_encode_tuple_t_uint256_t_bytes_calldata_ptr__to_t_uint256_t_bytes_memory_ptr__fromStack(_421 , expr_4810, expr_4811_offset, expr_4811_length)
                    log3(_421, sub(_422, _421) , _418, _419, _420)
                }/// @src 50:22040:22053  "ERC165Checker"
                let expr_4814_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol:ERC165Checker")
                /// @src 50:22072:22074  "to"
                let _423 := var_to_4714
                let expr_4816 := _423
                /// @src 50:22076:22114  "type(IVaultStakeRecipient).interfaceId"
                let expr_4820 := 0xe33c359500000000000000000000000000000000000000000000000000000000
                /// @src 50:22040:22115  "ERC165Checker.supportsInterface(to, type(IVaultStakeRecipient).interfaceId)"
                let expr_4821 := fun_supportsInterface_6303(expr_4816, expr_4820)
                /// @src 50:22036:22210  "if (ERC165Checker.supportsInterface(to, type(IVaultStakeRecipient).interfaceId)) {..."
                if expr_4821 {
                    /// @src 50:22152:22154  "to"
                    let _424 := var_to_4714
                    let expr_4823 := _424
                    /// @src 50:22131:22155  "IVaultStakeRecipient(to)"
                    let expr_4824_address := convert_t_address_to_t_contract$_IVaultStakeRecipient_$7841(expr_4823)
                    /// @src 50:22131:22176  "IVaultStakeRecipient(to).onVaultStakeReceived"
                    let expr_4825_address := convert_t_contract$_IVaultStakeRecipient_$7841_to_t_address(expr_4824_address)
                    let expr_4825_functionSelector := 0xe33c3595
                    /// @src 50:22177:22184  "account"
                    let _425 := var_account_4727
                    let expr_4826 := _425
                    /// @src 50:22186:22192  "amount"
                    let _426 := var_amount_4716
                    let expr_4827 := _426
                    /// @src 50:22194:22198  "data"
                    let _427_offset := var_data_4718_offset
                    let _427_length := var_data_4718_length
                    let expr_4828_offset := _427_offset
                    let expr_4828_length := _427_length
                    /// @src 50:22131:22199  "IVaultStakeRecipient(to).onVaultStakeReceived(account, amount, data)"

                    if iszero(extcodesize(expr_4825_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _428 := allocate_unbounded()
                    mstore(_428, shift_left_224(expr_4825_functionSelector))
                    let _429 := abi_encode_tuple_t_address_t_uint256_t_bytes_calldata_ptr__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(add(_428, 4) , expr_4826, expr_4827, expr_4828_offset, expr_4828_length)

                    let _430 := call(gas(), expr_4825_address,  0,  _428, sub(_429, _428), _428, 0)

                    if iszero(_430) { revert_forward_1() }

                    if _430 {

                        let _431 := 0

                        if gt(_431, returndatasize()) {
                            _431 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_428, _431)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_428, add(_428, _431))
                    }
                    /// @src 50:22036:22210  "if (ERC165Checker.supportsInterface(to, type(IVaultStakeRecipient).interfaceId)) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4834
            /// @src 50:21189:22216  "function transferStake(address to, uint256 amount, bytes calldata data)..."
            function fun_transferStake_4834(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length) {

                modifier_whenNotPaused_4722(var_to_4714, var_amount_4716, var_data_4718_offset, var_data_4718_length)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7348
            /// @src 4:909:971  "modifier onlyOwner() {..."
            function modifier_onlyOwner_7368(var_newOwner_7365) {

                fun__checkOwner_7403()
                /// @src 4:963:964  "_"
                fun_transferOwnership_7386_inner(var_newOwner_7365)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 4:1554:1765  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_7386_inner(var_newOwner_7365) {

                /// @src 4:1638:1646  "newOwner"
                let _432 := var_newOwner_7365
                let expr_7370 := _432
                /// @src 4:1658:1659  "0"
                let expr_7373 := 0x00
                /// @src 4:1650:1660  "address(0)"
                let expr_7374 := convert_t_rational_0_by_1_to_t_address(expr_7373)
                /// @src 4:1638:1660  "newOwner == address(0)"
                let expr_7375 := eq(cleanup_t_address(expr_7370), cleanup_t_address(expr_7374))
                /// @src 4:1634:1730  "if (newOwner == address(0)) {..."
                if expr_7375 {
                    /// @src 4:1683:1719  "OwnableCannotSetZeroAddressAsOwner()"
                    {
                        let _433 := allocate_unbounded()
                        mstore(_433, 12142680069602726729021672202160923729220853187416205435232232065146107723776)
                        let _434 := abi_encode_tuple__to__fromStack(add(_433, 4) )
                        revert(_433, sub(_434, _433))
                    }/// @src 4:1634:1730  "if (newOwner == address(0)) {..."
                }
                /// @src 4:1749:1757  "newOwner"
                let _435 := var_newOwner_7365
                let expr_7382 := _435
                fun__setOwner_7425(expr_7382)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7386
            /// @src 4:1554:1765  "function transferOwnership(address newOwner) public virtual onlyOwner {..."
            function fun_transferOwnership_7386(var_newOwner_7365) {

                modifier_onlyOwner_7368(var_newOwner_7365)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_3999(var_beneficiary_3995) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_deposit_4154_inner(var_beneficiary_3995)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_1000_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_1000_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_1000_by_1(value)))
            }

            /// @src 50:4005:4060  "uint256 private constant _MINIMUM_REQUIRED_SHARES = 1e3"
            function constant__MINIMUM_REQUIRED_SHARES_3270() -> ret {
                /// @src 50:4057:4060  "1e3"
                let expr_3269 := 0x03e8
                let _466 := convert_t_rational_1000_by_1_to_t_uint256(expr_3269)

                ret := _466
            }

            function abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_bytes_memory_ptr_fromStack(pos, 0)
                store_literal_in_memory_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470(pos)
                end := add(pos, 0)
            }

            function abi_encode_tuple_t_address_t_uint256_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(headStart , value0, value1) -> tail {
                tail := add(headStart, 96)

                abi_encode_t_address_to_t_address_fromStack(value0,  add(headStart, 0))

                abi_encode_t_uint256_to_t_uint256_fromStack(value1,  add(headStart, 32))

                mstore(add(headStart, 64), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470_to_t_bytes_memory_ptr_fromStack( tail)

            }

            /// @src 50:12496:14106  "function deposit(address beneficiary) public payable override whenNotPaused {..."
            function fun_deposit_4154_inner(var_beneficiary_3995) {

                /// @src 50:12586:12597  "beneficiary"
                let _436 := var_beneficiary_3995
                let expr_4001 := _436
                /// @src 50:12609:12610  "0"
                let expr_4004 := 0x00
                /// @src 50:12601:12611  "address(0)"
                let expr_4005 := convert_t_rational_0_by_1_to_t_address(expr_4004)
                /// @src 50:12586:12611  "beneficiary == address(0)"
                let expr_4006 := eq(cleanup_t_address(expr_4001), cleanup_t_address(expr_4005))
                /// @src 50:12582:12672  "if (beneficiary == address(0)) {..."
                if expr_4006 {
                    /// @src 50:12649:12660  "beneficiary"
                    let _437 := var_beneficiary_3995
                    let expr_4008 := _437
                    /// @src 50:12634:12661  "InvalidAddress(beneficiary)"
                    {
                        let _438 := allocate_unbounded()
                        mstore(_438, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _439 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_438, 4) , expr_4008)
                        revert(_438, sub(_439, _438))
                    }/// @src 50:12582:12672  "if (beneficiary == address(0)) {..."
                }
                /// @src 50:12699:12709  "msg.sender"
                let expr_4016 := caller()
                /// @src 50:12681:12709  "address account = msg.sender"
                let var_account_4014 := expr_4016
                /// @src 50:12723:12733  "restricted"
                let _440 := read_from_storage_split_offset_0_t_bool(0x9f)
                let expr_4018 := _440
                /// @src 50:12723:12760  "restricted && !isAllowlisted(account)"
                let expr_4023 := expr_4018
                if expr_4023 {
                    /// @src 50:12752:12759  "account"
                    let _441 := var_account_4014
                    let expr_4020 := _441
                    /// @src 50:12738:12760  "isAllowlisted(account)"
                    let expr_4021 := fun_isAllowlisted_3729(expr_4020)
                    /// @src 50:12737:12760  "!isAllowlisted(account)"
                    let expr_4022 := cleanup_t_bool(iszero(expr_4021))
                    /// @src 50:12723:12760  "restricted && !isAllowlisted(account)"
                    expr_4023 := expr_4022
                }
                /// @src 50:12719:12817  "if (restricted && !isAllowlisted(account)) {..."
                if expr_4023 {
                    /// @src 50:12798:12805  "account"
                    let _442 := var_account_4014
                    let expr_4025 := _442
                    /// @src 50:12783:12806  "InvalidAddress(account)"
                    {
                        let _443 := allocate_unbounded()
                        mstore(_443, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _444 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_443, 4) , expr_4025)
                        revert(_443, sub(_444, _443))
                    }/// @src 50:12719:12817  "if (restricted && !isAllowlisted(account)) {..."
                }
                /// @src 50:12843:12852  "msg.value"
                let expr_4033 := callvalue()
                /// @src 50:12826:12852  "uint256 amount = msg.value"
                let var_amount_4031 := expr_4033
                /// @src 50:12866:12872  "amount"
                let _445 := var_amount_4031
                let expr_4035 := _445
                /// @src 50:12876:12877  "0"
                let expr_4036 := 0x00
                /// @src 50:12866:12877  "amount == 0"
                let expr_4037 := eq(cleanup_t_uint256(expr_4035), convert_t_rational_0_by_1_to_t_uint256(expr_4036))
                /// @src 50:12862:12932  "if (amount == 0) {..."
                if expr_4037 {
                    /// @src 50:12914:12920  "amount"
                    let _446 := var_amount_4031
                    let expr_4039 := _446
                    /// @src 50:12900:12921  "InvalidAmount(amount)"
                    {
                        let _447 := allocate_unbounded()
                        mstore(_447, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _448 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_447, 4) , expr_4039)
                        revert(_447, sub(_448, _447))
                    }/// @src 50:12862:12932  "if (amount == 0) {..."
                }
                /// @src 50:12980:12984  "Math"
                let expr_4046_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                /// @src 50:12989:13014  "totalValidatorsRegistered"
                let _449 := read_from_storage_split_offset_0_t_uint256(0x9c)
                let expr_4048 := _449
                /// @src 50:13017:13031  "DEPOSIT_AMOUNT"
                let expr_4049 := constant_DEPOSIT_AMOUNT_7540()
                /// @src 50:12989:13031  "totalValidatorsRegistered * DEPOSIT_AMOUNT"
                let expr_4050 := checked_mul_t_uint256(expr_4048, expr_4049)

                /// @src 50:13033:13044  "totalStaked"
                let _450 := read_from_storage_split_offset_0_t_uint256(0x99)
                let expr_4051 := _450
                /// @src 50:13047:13060  "totalUnstaked"
                let _451 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4052 := _451
                /// @src 50:13033:13060  "totalStaked + totalUnstaked"
                let expr_4053 := checked_add_t_uint256(expr_4051, expr_4052)

                /// @src 50:12980:13061  "Math.max(totalValidatorsRegistered * DEPOSIT_AMOUNT, totalStaked + totalUnstaked)"
                let expr_4054 := fun_max_2340(expr_4050, expr_4053)
                /// @src 50:13064:13070  "amount"
                let _452 := var_amount_4031
                let expr_4055 := _452
                /// @src 50:12980:13070  "Math.max(totalValidatorsRegistered * DEPOSIT_AMOUNT, totalStaked + totalUnstaked) + amount"
                let expr_4056 := checked_add_t_uint256(expr_4054, expr_4055)

                /// @src 50:12941:13070  "uint256 newTotalDeposits =..."
                let var_newTotalDeposits_4045 := expr_4056
                /// @src 50:13084:13100  "newTotalDeposits"
                let _453 := var_newTotalDeposits_4045
                let expr_4058 := _453
                /// @src 50:13103:13115  "depositLimit"
                let _454 := read_from_storage_split_offset_0_t_uint256(0x97)
                let expr_4059 := _454
                /// @src 50:13084:13115  "newTotalDeposits > depositLimit"
                let expr_4060 := gt(cleanup_t_uint256(expr_4058), cleanup_t_uint256(expr_4059))
                /// @src 50:13080:13201  "if (newTotalDeposits > depositLimit) {..."
                if expr_4060 {
                    /// @src 50:13159:13175  "newTotalDeposits"
                    let _455 := var_newTotalDeposits_4045
                    let expr_4062 := _455
                    /// @src 50:13177:13189  "depositLimit"
                    let _456 := read_from_storage_split_offset_0_t_uint256(0x97)
                    let expr_4063 := _456
                    /// @src 50:13138:13190  "DepositLimitExceeded(newTotalDeposits, depositLimit)"
                    {
                        let _457 := allocate_unbounded()
                        mstore(_457, 110536061476123441520432868241734254982894621895984041791613453169399699603456)
                        let _458 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_457, 4) , expr_4062, expr_4063)
                        revert(_457, sub(_458, _457))
                    }/// @src 50:13080:13201  "if (newTotalDeposits > depositLimit) {..."
                }
                /// @src 50:13237:13243  "amount"
                let _459 := var_amount_4031
                let expr_4071 := _459
                /// @src 50:13227:13244  "_toShares(amount)"
                let expr_4072 := fun__toShares_3992(expr_4071)
                /// @src 50:13210:13244  "uint256 shares = _toShares(amount)"
                let var_shares_4069 := expr_4072
                /// @src 50:13258:13264  "shares"
                let _460 := var_shares_4069
                let expr_4074 := _460
                /// @src 50:13268:13269  "0"
                let expr_4075 := 0x00
                /// @src 50:13258:13269  "shares == 0"
                let expr_4076 := eq(cleanup_t_uint256(expr_4074), convert_t_rational_0_by_1_to_t_uint256(expr_4075))
                /// @src 50:13254:13324  "if (shares == 0) {..."
                if expr_4076 {
                    /// @src 50:13306:13312  "amount"
                    let _461 := var_amount_4031
                    let expr_4078 := _461
                    /// @src 50:13292:13313  "InvalidAmount(amount)"
                    {
                        let _462 := allocate_unbounded()
                        mstore(_462, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _463 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_462, 4) , expr_4078)
                        revert(_462, sub(_463, _462))
                    }/// @src 50:13254:13324  "if (shares == 0) {..."
                }
                /// @src 50:13439:13450  "totalShares"
                let _464 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_4083 := _464
                /// @src 50:13454:13455  "0"
                let expr_4084 := 0x00
                /// @src 50:13439:13455  "totalShares == 0"
                let expr_4085 := eq(cleanup_t_uint256(expr_4083), convert_t_rational_0_by_1_to_t_uint256(expr_4084))
                /// @src 50:13435:13742  "if (totalShares == 0) {..."
                if expr_4085 {
                    /// @src 50:13475:13481  "shares"
                    let _465 := var_shares_4069
                    let expr_4086 := _465
                    /// @src 50:13484:13508  "_MINIMUM_REQUIRED_SHARES"
                    let expr_4087 := constant__MINIMUM_REQUIRED_SHARES_3270()
                    /// @src 50:13475:13508  "shares < _MINIMUM_REQUIRED_SHARES"
                    let expr_4088 := lt(cleanup_t_uint256(expr_4086), cleanup_t_uint256(expr_4087))
                    /// @src 50:13471:13571  "if (shares < _MINIMUM_REQUIRED_SHARES) {..."
                    if expr_4088 {
                        /// @src 50:13549:13555  "amount"
                        let _467 := var_amount_4031
                        let expr_4090 := _467
                        /// @src 50:13535:13556  "InvalidAmount(amount)"
                        {
                            let _468 := allocate_unbounded()
                            mstore(_468, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                            let _469 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_468, 4) , expr_4090)
                            revert(_468, sub(_469, _468))
                        }/// @src 50:13471:13571  "if (shares < _MINIMUM_REQUIRED_SHARES) {..."
                    }
                    /// @src 50:13606:13630  "_MINIMUM_REQUIRED_SHARES"
                    let expr_4101 := constant__MINIMUM_REQUIRED_SHARES_3270()
                    /// @src 50:13584:13591  "_shares"
                    let _470_slot := 0xa0
                    let expr_4095_slot := _470_slot
                    /// @src 50:13600:13601  "0"
                    let expr_4098 := 0x00
                    /// @src 50:13592:13602  "address(0)"
                    let expr_4099 := convert_t_rational_0_by_1_to_t_address(expr_4098)
                    /// @src 50:13584:13603  "_shares[address(0)]"
                    let _471 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4095_slot,expr_4099)
                    /// @src 50:13584:13630  "_shares[address(0)] = _MINIMUM_REQUIRED_SHARES"
                    update_storage_value_offset_0t_uint256_to_t_uint256(_471, expr_4101)
                    let expr_4102 := expr_4101
                    /// @src 50:13659:13683  "_MINIMUM_REQUIRED_SHARES"
                    let expr_4105 := constant__MINIMUM_REQUIRED_SHARES_3270()
                    /// @src 50:13644:13683  "totalShares += _MINIMUM_REQUIRED_SHARES"
                    let _472 := read_from_storage_split_offset_0_t_uint256(0x98)
                    let expr_4106 := checked_add_t_uint256(_472, expr_4105)

                    update_storage_value_offset_0t_uint256_to_t_uint256(0x98, expr_4106)
                    /// @src 50:13707:13731  "_MINIMUM_REQUIRED_SHARES"
                    let expr_4109 := constant__MINIMUM_REQUIRED_SHARES_3270()
                    /// @src 50:13697:13731  "shares -= _MINIMUM_REQUIRED_SHARES"
                    let _473 := var_shares_4069
                    let expr_4110 := checked_sub_t_uint256(_473, expr_4109)

                    var_shares_4069 := expr_4110
                    /// @src 50:13435:13742  "if (totalShares == 0) {..."
                }
                /// @src 50:13775:13781  "shares"
                let _474 := var_shares_4069
                let expr_4117 := _474
                /// @src 50:13751:13758  "_shares"
                let _475_slot := 0xa0
                let expr_4114_slot := _475_slot
                /// @src 50:13759:13770  "beneficiary"
                let _476 := var_beneficiary_3995
                let expr_4115 := _476
                /// @src 50:13751:13771  "_shares[beneficiary]"
                let _477 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_4114_slot,expr_4115)
                /// @src 50:13751:13781  "_shares[beneficiary] += shares"
                let _478 := read_from_storage_split_offset_0_t_uint256(_477)
                let expr_4118 := checked_add_t_uint256(_478, expr_4117)

                update_storage_value_offset_0t_uint256_to_t_uint256(_477, expr_4118)
                /// @src 50:13806:13812  "shares"
                let _479 := var_shares_4069
                let expr_4121 := _479
                /// @src 50:13791:13812  "totalShares += shares"
                let _480 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_4122 := checked_add_t_uint256(_480, expr_4121)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x98, expr_4122)
                /// @src 50:13839:13845  "amount"
                let _481 := var_amount_4031
                let expr_4125 := _481
                /// @src 50:13822:13845  "totalUnstaked += amount"
                let _482 := read_from_storage_split_offset_0_t_uint256(0x9a)
                let expr_4126 := checked_add_t_uint256(_482, expr_4125)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9a, expr_4126)
                /// @src 50:13870:13877  "account"
                let _483 := var_account_4014
                let expr_4129 := _483
                /// @src 50:13879:13890  "beneficiary"
                let _484 := var_beneficiary_3995
                let expr_4130 := _484
                /// @src 50:13892:13898  "amount"
                let _485 := var_amount_4031
                let expr_4131 := _485
                /// @src 50:13860:13899  "Deposited(account, beneficiary, amount)"
                let _486 := 0x8752a472e571a816aea92eec8dae9baf628e840f4929fbcc2d155e6233ff68a7
                let _487 := convert_t_address_to_t_address(expr_4129)
                let _488 := convert_t_address_to_t_address(expr_4130)
                {
                    let _489 := allocate_unbounded()
                    let _490 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_489 , expr_4131)
                    log3(_489, sub(_490, _489) , _486, _487, _488)
                }/// @src 50:13914:13927  "ERC165Checker"
                let expr_4134_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/introspection/ERC165Checker.sol:ERC165Checker")
                /// @src 50:13946:13957  "beneficiary"
                let _491 := var_beneficiary_3995
                let expr_4136 := _491
                /// @src 50:13959:13997  "type(IVaultStakeRecipient).interfaceId"
                let expr_4140 := 0xe33c359500000000000000000000000000000000000000000000000000000000
                /// @src 50:13914:13998  "ERC165Checker.supportsInterface(beneficiary, type(IVaultStakeRecipient).interfaceId)"
                let expr_4141 := fun_supportsInterface_6303(expr_4136, expr_4140)
                /// @src 50:13910:14100  "if (ERC165Checker.supportsInterface(beneficiary, type(IVaultStakeRecipient).interfaceId)) {..."
                if expr_4141 {
                    /// @src 50:14035:14046  "beneficiary"
                    let _492 := var_beneficiary_3995
                    let expr_4143 := _492
                    /// @src 50:14014:14047  "IVaultStakeRecipient(beneficiary)"
                    let expr_4144_address := convert_t_address_to_t_contract$_IVaultStakeRecipient_$7841(expr_4143)
                    /// @src 50:14014:14068  "IVaultStakeRecipient(beneficiary).onVaultStakeReceived"
                    let expr_4145_address := convert_t_contract$_IVaultStakeRecipient_$7841_to_t_address(expr_4144_address)
                    let expr_4145_functionSelector := 0xe33c3595
                    /// @src 50:14069:14076  "account"
                    let _493 := var_account_4014
                    let expr_4146 := _493
                    /// @src 50:14078:14084  "amount"
                    let _494 := var_amount_4031
                    let expr_4147 := _494
                    /// @src 50:14014:14089  "IVaultStakeRecipient(beneficiary).onVaultStakeReceived(account, amount, \"\")"

                    if iszero(extcodesize(expr_4145_address)) { revert_error_0cc013b6b3b6beabea4e3a74a6d380f0df81852ca99887912475e1f66b2a2c20() }

                    // storage for arguments and returned data
                    let _495 := allocate_unbounded()
                    mstore(_495, shift_left_224(expr_4145_functionSelector))
                    let _496 := abi_encode_tuple_t_address_t_uint256_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_address_t_uint256_t_bytes_memory_ptr__fromStack(add(_495, 4) , expr_4146, expr_4147)

                    let _497 := call(gas(), expr_4145_address,  0,  _495, sub(_496, _495), _495, 0)

                    if iszero(_497) { revert_forward_1() }

                    if _497 {

                        let _498 := 0

                        if gt(_498, returndatasize()) {
                            _498 := returndatasize()
                        }

                        // update freeMemoryPointer according to dynamic return size
                        finalize_allocation(_495, _498)

                        // decode return parameters from external try-call into retVars
                        abi_decode_tuple__fromMemory(_495, add(_495, _498))
                    }
                    /// @src 50:13910:14100  "if (ERC165Checker.supportsInterface(beneficiary, type(IVaultStakeRecipient).interfaceId)) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4154
            /// @src 50:12496:14106  "function deposit(address beneficiary) public payable override whenNotPaused {..."
            function fun_deposit_4154(var_beneficiary_3995) {

                modifier_whenNotPaused_3999(var_beneficiary_3995)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3778
            /// @src 50:10105:10221  "function sharesOf(address account) external view override returns (uint256) {..."
            function fun_sharesOf_3778(var_account_3767) -> var__3771 {
                /// @src 50:10172:10179  "uint256"
                let zero_t_uint256_499 := zero_value_for_split_t_uint256()
                var__3771 := zero_t_uint256_499

                /// @src 50:10198:10205  "_shares"
                let _500_slot := 0xa0
                let expr_3773_slot := _500_slot
                /// @src 50:10206:10213  "account"
                let _501 := var_account_3767
                let expr_3774 := _501
                /// @src 50:10198:10214  "_shares[account]"
                let _502 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_3773_slot,expr_3774)
                let _503 := read_from_storage_split_offset_0_t_uint256(_502)
                let expr_3775 := _503
                /// @src 50:10191:10214  "return _shares[account]"
                var__3771 := expr_3775
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7471
            /// @src 25:2492:2595  "modifier nonReentrant() {..."
            function modifier_nonReentrant_4325(var_amount_4319, var_beneficiary_4321) {

                fun__nonReentrantBefore_7486()
                /// @src 25:2557:2558  "_"
                modifier_whenNotPaused_4327(var_amount_4319, var_beneficiary_4321)
                fun__nonReentrantAfter_7494()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_4327(var_amount_4319, var_beneficiary_4321) {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun_claimFees_4404_inner(var_amount_4319, var_beneficiary_4321)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 50:15619:16392  "function claimFees(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_claimFees_4404_inner(var_amount_4319, var_beneficiary_4321) {

                /// @src 50:15734:15745  "beneficiary"
                let _504 := var_beneficiary_4321
                let expr_4329 := _504
                /// @src 50:15757:15758  "0"
                let expr_4332 := 0x00
                /// @src 50:15749:15759  "address(0)"
                let expr_4333 := convert_t_rational_0_by_1_to_t_address(expr_4332)
                /// @src 50:15734:15759  "beneficiary == address(0)"
                let expr_4334 := eq(cleanup_t_address(expr_4329), cleanup_t_address(expr_4333))
                /// @src 50:15730:15820  "if (beneficiary == address(0)) {..."
                if expr_4334 {
                    /// @src 50:15797:15808  "beneficiary"
                    let _505 := var_beneficiary_4321
                    let expr_4336 := _505
                    /// @src 50:15782:15809  "InvalidAddress(beneficiary)"
                    {
                        let _506 := allocate_unbounded()
                        mstore(_506, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _507 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_506, 4) , expr_4336)
                        revert(_506, sub(_507, _506))
                    }/// @src 50:15730:15820  "if (beneficiary == address(0)) {..."
                }
                /// @src 50:15847:15857  "msg.sender"
                let expr_4344 := caller()
                /// @src 50:15829:15857  "address account = msg.sender"
                let var_account_4342 := expr_4344
                /// @src 50:15871:15878  "account"
                let _508 := var_account_4342
                let expr_4346 := _508
                /// @src 50:15882:15894  "feeRecipient"
                let _509 := read_from_storage_split_offset_4_t_address(0x9d)
                let expr_4347 := _509
                /// @src 50:15871:15894  "account != feeRecipient"
                let expr_4348 := iszero(eq(cleanup_t_address(expr_4346), cleanup_t_address(expr_4347)))
                /// @src 50:15867:15958  "if (account != feeRecipient) {..."
                if expr_4348 {
                    /// @src 50:15939:15946  "account"
                    let _510 := var_account_4342
                    let expr_4350 := _510
                    /// @src 50:15917:15947  "CallerNotFeeRecipient(account)"
                    {
                        let _511 := allocate_unbounded()
                        mstore(_511, 70393298186354549588598333624881277829766488281755810753633496358802146983936)
                        let _512 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_511, 4) , expr_4350)
                        revert(_511, sub(_512, _511))
                    }/// @src 50:15867:15958  "if (account != feeRecipient) {..."
                }
                /// @src 50:15971:15977  "amount"
                let _513 := var_amount_4319
                let expr_4355 := _513
                /// @src 50:15981:15982  "0"
                let expr_4356 := 0x00
                /// @src 50:15971:15982  "amount == 0"
                let expr_4357 := eq(cleanup_t_uint256(expr_4355), convert_t_rational_0_by_1_to_t_uint256(expr_4356))
                /// @src 50:15967:16037  "if (amount == 0) {..."
                if expr_4357 {
                    /// @src 50:16019:16025  "amount"
                    let _514 := var_amount_4319
                    let expr_4359 := _514
                    /// @src 50:16005:16026  "InvalidAmount(amount)"
                    {
                        let _515 := allocate_unbounded()
                        mstore(_515, 24949152120555342893642076180256588724364794719800428814778150814029195509760)
                        let _516 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(add(_515, 4) , expr_4359)
                        revert(_515, sub(_516, _515))
                    }/// @src 50:15967:16037  "if (amount == 0) {..."
                }
                /// @src 50:16050:16056  "amount"
                let _517 := var_amount_4319
                let expr_4364 := _517
                /// @src 50:16059:16068  "totalFees"
                let _518 := read_from_storage_split_offset_0_t_uint256(0x9e)
                let expr_4365 := _518
                /// @src 50:16050:16068  "amount > totalFees"
                let expr_4366 := gt(cleanup_t_uint256(expr_4364), cleanup_t_uint256(expr_4365))
                /// @src 50:16046:16140  "if (amount > totalFees) {..."
                if expr_4366 {
                    /// @src 50:16111:16120  "totalFees"
                    let _519 := read_from_storage_split_offset_0_t_uint256(0x9e)
                    let expr_4368 := _519
                    /// @src 50:16122:16128  "amount"
                    let _520 := var_amount_4319
                    let expr_4369 := _520
                    /// @src 50:16091:16129  "InsufficientBalance(totalFees, amount)"
                    {
                        let _521 := allocate_unbounded()
                        mstore(_521, 93755210029388812374860226833566461599576740329903563988591138487568456220672)
                        let _522 := abi_encode_tuple_t_uint256_t_uint256__to_t_uint256_t_uint256__fromStack(add(_521, 4) , expr_4368, expr_4369)
                        revert(_521, sub(_522, _521))
                    }/// @src 50:16046:16140  "if (amount > totalFees) {..."
                }
                /// @src 50:16162:16168  "amount"
                let _523 := var_amount_4319
                let expr_4375 := _523
                /// @src 50:16149:16168  "totalFees -= amount"
                let _524 := read_from_storage_split_offset_0_t_uint256(0x9e)
                let expr_4376 := checked_sub_t_uint256(_524, expr_4375)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x9e, expr_4376)
                /// @src 50:16196:16207  "beneficiary"
                let _525 := var_beneficiary_4321
                let expr_4380 := _525
                /// @src 50:16196:16212  "beneficiary.call"
                let expr_4381_address := expr_4380
                /// @src 50:16220:16226  "amount"
                let _526 := var_amount_4319
                let expr_4382 := _526
                /// @src 50:16196:16227  "beneficiary.call{value: amount}"
                let expr_4383_address := expr_4381_address
                let expr_4383_value := expr_4382
                /// @src 50:16196:16231  "beneficiary.call{value: amount}(\"\")"

                let _527 := allocate_unbounded()
                let _528 := sub(abi_encode_tuple_packed_t_stringliteral_c5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470__to_t_bytes_memory_ptr__nonPadded_inplace_fromStack(_527  ), _527)

                let expr_4385_component_1 := call(gas(), expr_4383_address,  expr_4383_value,  _527, _528, 0, 0)
                let expr_4385_component_2_mpos := extract_returndata()
                /// @src 50:16178:16231  "(bool success,) = beneficiary.call{value: amount}(\"\")"
                let var_success_4379 := expr_4385_component_1
                /// @src 50:16246:16253  "success"
                let _529 := var_success_4379
                let expr_4387 := _529
                /// @src 50:16245:16253  "!success"
                let expr_4388 := cleanup_t_bool(iszero(expr_4387))
                /// @src 50:16241:16331  "if (!success) {..."
                if expr_4388 {
                    /// @src 50:16291:16298  "account"
                    let _530 := var_account_4342
                    let expr_4390 := _530
                    /// @src 50:16300:16311  "beneficiary"
                    let _531 := var_beneficiary_4321
                    let expr_4391 := _531
                    /// @src 50:16313:16319  "amount"
                    let _532 := var_amount_4319
                    let expr_4392 := _532
                    /// @src 50:16276:16320  "FeeClaimFailed(account, beneficiary, amount)"
                    {
                        let _533 := allocate_unbounded()
                        mstore(_533, 62475617985550068202579317265051869586050626231702129579879173820589214269440)
                        let _534 := abi_encode_tuple_t_address_t_address_t_uint256__to_t_address_t_address_t_uint256__fromStack(add(_533, 4) , expr_4390, expr_4391, expr_4392)
                        revert(_533, sub(_534, _533))
                    }/// @src 50:16241:16331  "if (!success) {..."
                }
                /// @src 50:16356:16363  "account"
                let _535 := var_account_4342
                let expr_4398 := _535
                /// @src 50:16365:16376  "beneficiary"
                let _536 := var_beneficiary_4321
                let expr_4399 := _536
                /// @src 50:16378:16384  "amount"
                let _537 := var_amount_4319
                let expr_4400 := _537
                /// @src 50:16345:16385  "FeeClaimed(account, beneficiary, amount)"
                let _538 := 0x4a34429a0ef883c4301d5b40aa8ae85d4eb024946062f2c7ebd8320acedc831a
                let _539 := convert_t_address_to_t_address(expr_4398)
                let _540 := convert_t_address_to_t_address(expr_4399)
                {
                    let _541 := allocate_unbounded()
                    let _542 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_541 , expr_4400)
                    log3(_541, sub(_542, _541) , _538, _539, _540)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 4404
            /// @src 50:15619:16392  "function claimFees(uint256 amount, address beneficiary) external override nonReentrant whenNotPaused {..."
            function fun_claimFees_4404(var_amount_4319, var_beneficiary_4321) {

                modifier_nonReentrant_4325(var_amount_4319, var_beneficiary_4321)
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3480
            /// @src 50:7321:7384  "receive() external payable {..."
            function fun__3480() {

                /// @src 50:7366:7376  "msg.sender"
                let expr_3476 := caller()
                fun_deposit_4154(expr_3476)

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_2_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_2_by_1_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_rational_2_by_1(value)))
            }

            /// @src 25:1815:1852  "uint256 private constant _ENTERED = 2"
            function constant__ENTERED_7439() -> ret {
                /// @src 25:1851:1852  "2"
                let expr_7438 := 0x02
                let _544 := convert_t_rational_2_by_1_to_t_uint256(expr_7438)

                ret := _544
            }

            function store_literal_in_memory_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(memPtr) {

                mstore(add(memPtr, 0), "ReentrancyGuard: reentrant call")

            }

            function abi_encode_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
                store_literal_in_memory_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 7486
            /// @src 25:2601:2888  "function _nonReentrantBefore() private {..."
            function fun__nonReentrantBefore_7486() {

                /// @src 25:2733:2740  "_status"
                let _543 := read_from_storage_split_offset_0_t_uint256(0x01)
                let expr_7475 := _543
                /// @src 25:2744:2752  "_ENTERED"
                let expr_7476 := constant__ENTERED_7439()
                /// @src 25:2733:2752  "_status != _ENTERED"
                let expr_7477 := iszero(eq(cleanup_t_uint256(expr_7475), cleanup_t_uint256(expr_7476)))
                /// @src 25:2725:2788  "require(_status != _ENTERED, \"ReentrancyGuard: reentrant call\")"
                require_helper_t_stringliteral_ebf73bba305590e4764d5cb53b69bffd6d4d092d1a67551cb346f8cfcdab8619(expr_7477)
                /// @src 25:2873:2881  "_ENTERED"
                let expr_7482 := constant__ENTERED_7439()
                /// @src 25:2863:2881  "_status = _ENTERED"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x01, expr_7482)
                let expr_7483 := expr_7482

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 25:1768:1809  "uint256 private constant _NOT_ENTERED = 1"
            function constant__NOT_ENTERED_7436() -> ret {
                /// @src 25:1808:1809  "1"
                let expr_7435 := 0x01
                let _545 := convert_t_rational_1_by_1_to_t_uint256(expr_7435)

                ret := _545
            }

            /// @ast-id 7494
            /// @src 25:2894:3103  "function _nonReentrantAfter() private {..."
            function fun__nonReentrantAfter_7494() {

                /// @src 25:3084:3096  "_NOT_ENTERED"
                let expr_7490 := constant__NOT_ENTERED_7436()
                /// @src 25:3074:3096  "_status = _NOT_ENTERED"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x01, expr_7490)
                let expr_7491 := expr_7490

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

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
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3992
            /// @src 50:12257:12463  "function _toShares(uint256 amount) private view returns (uint256) {..."
            function fun__toShares_3992(var_amount_3971) -> var__3974 {
                /// @src 50:12314:12321  "uint256"
                let zero_t_uint256_546 := zero_value_for_split_t_uint256()
                var__3974 := zero_t_uint256_546

                /// @src 50:12337:12348  "totalShares"
                let _547 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_3976 := _547
                /// @src 50:12352:12353  "0"
                let expr_3977 := 0x00
                /// @src 50:12337:12353  "totalShares == 0"
                let expr_3978 := eq(cleanup_t_uint256(expr_3976), convert_t_rational_0_by_1_to_t_uint256(expr_3977))
                /// @src 50:12333:12393  "if (totalShares == 0) {..."
                if expr_3978 {
                    /// @src 50:12376:12382  "amount"
                    let _548 := var_amount_3971
                    let expr_3979 := _548
                    /// @src 50:12369:12382  "return amount"
                    var__3974 := expr_3979
                    leave
                    /// @src 50:12333:12393  "if (totalShares == 0) {..."
                }
                /// @src 50:12409:12413  "Math"
                let expr_3983_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                /// @src 50:12421:12427  "amount"
                let _549 := var_amount_3971
                let expr_3985 := _549
                /// @src 50:12429:12440  "totalShares"
                let _550 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_3986 := _550
                /// @src 50:12442:12455  "totalAssets()"
                let expr_3988 := fun_totalAssets_3946()
                /// @src 50:12409:12456  "Math.mulDiv(amount, totalShares, totalAssets())"
                let expr_3989 := fun_mulDiv_2529(expr_3985, expr_3986, expr_3988)
                /// @src 50:12402:12456  "return Math.mulDiv(amount, totalShares, totalAssets())"
                var__3974 := expr_3989
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7534
            /// @src 39:829:984  "function supportsInterface(bytes4 interfaceId) public view virtual override returns (bool) {..."
            function fun_supportsInterface_7534(var_interfaceId_7520) -> var__7524 {
                /// @src 39:914:918  "bool"
                let zero_t_bool_551 := zero_value_for_split_t_bool()
                var__7524 := zero_t_bool_551

                /// @src 39:937:948  "interfaceId"
                let _552 := var_interfaceId_7520
                let expr_7526 := _552
                /// @src 39:952:977  "type(IERC165).interfaceId"
                let expr_7530 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 39:937:977  "interfaceId == type(IERC165).interfaceId"
                let expr_7531 := eq(cleanup_t_bytes4(expr_7526), cleanup_t_bytes4(expr_7530))
                /// @src 39:930:977  "return interfaceId == type(IERC165).interfaceId"
                var__7524 := expr_7531
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3501
            /// @src 50:7390:7559  "function _checkOperator() private view {..."
            function fun__checkOperator_3501() {

                /// @src 50:7443:7453  "msg.sender"
                let expr_3484 := caller()
                /// @src 50:7457:7465  "operator"
                let _553 := read_from_storage_split_offset_0_t_address(0xa6)
                let expr_3485 := _553
                /// @src 50:7443:7465  "msg.sender != operator"
                let expr_3486 := iszero(eq(cleanup_t_address(expr_3484), cleanup_t_address(expr_3485)))
                /// @src 50:7443:7490  "msg.sender != operator && msg.sender != owner()"
                let expr_3492 := expr_3486
                if expr_3492 {
                    /// @src 50:7469:7479  "msg.sender"
                    let expr_3488 := caller()
                    /// @src 50:7483:7490  "owner()"
                    let expr_3490 := fun_owner_7340()
                    /// @src 50:7469:7490  "msg.sender != owner()"
                    let expr_3491 := iszero(eq(cleanup_t_address(expr_3488), cleanup_t_address(expr_3490)))
                    /// @src 50:7443:7490  "msg.sender != operator && msg.sender != owner()"
                    expr_3492 := expr_3491
                }
                /// @src 50:7439:7553  "if (msg.sender != operator && msg.sender != owner()) {..."
                if expr_3492 {
                    /// @src 50:7531:7541  "msg.sender"
                    let expr_3495 := caller()
                    /// @src 50:7513:7542  "CallerNotOperator(msg.sender)"
                    {
                        let _554 := allocate_unbounded()
                        mstore(_554, 105693809179989582199475744968927935694877647186938621403986217103715033153536)
                        let _555 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_554, 4) , expr_3495)
                        revert(_554, sub(_555, _554))
                    }/// @src 50:7439:7553  "if (msg.sender != operator && msg.sender != owner()) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7403
            /// @src 4:1838:1994  "function _checkOwner() internal view virtual {..."
            function fun__checkOwner_7403() {

                /// @src 4:1897:1904  "owner()"
                let expr_7391 := fun_owner_7340()
                /// @src 4:1908:1918  "msg.sender"
                let expr_7393 := caller()
                /// @src 4:1897:1918  "owner() != msg.sender"
                let expr_7394 := iszero(eq(cleanup_t_address(expr_7391), cleanup_t_address(expr_7393)))
                /// @src 4:1893:1988  "if (owner() != msg.sender) {..."
                if expr_7394 {
                    /// @src 4:1966:1976  "msg.sender"
                    let expr_7397 := caller()
                    /// @src 4:1941:1977  "OwnableCallerNotTheOwner(msg.sender)"
                    {
                        let _556 := allocate_unbounded()
                        mstore(_556, 86422520473981019150781550852605884595209469920836679229683194966280629125120)
                        let _557 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_556, 4) , expr_7397)
                        revert(_556, sub(_557, _556))
                    }/// @src 4:1893:1988  "if (owner() != msg.sender) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1922
            /// @src 24:1718:1784  "modifier whenPaused() {..."
            function modifier_whenPaused_1974() {

                fun__requirePaused_1954()
                /// @src 24:1776:1777  "_"
                fun__unpause_1986_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 24:2697:2814  "function _unpause() internal virtual whenPaused {..."
            function fun__unpause_1986_inner() {

                /// @src 24:2765:2770  "false"
                let expr_1977 := 0x00
                /// @src 24:2755:2770  "_paused = false"
                update_storage_value_offset_0t_bool_to_t_bool(0x65, expr_1977)
                let expr_1978 := expr_1977
                /// @src 24:2794:2806  "_msgSender()"
                let expr_1982 := fun__msgSender_7257()
                /// @src 24:2785:2807  "Unpaused(_msgSender())"
                let _558 := 0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa
                {
                    let _559 := allocate_unbounded()
                    let _560 := abi_encode_tuple_t_address__to_t_address__fromStack(_559 , expr_1982)
                    log1(_559, sub(_560, _559) , _558)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1986
            /// @src 24:2697:2814  "function _unpause() internal virtual whenPaused {..."
            function fun__unpause_1986() {

                modifier_whenPaused_1974()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3764
            /// @src 50:9904:10072  "function _checkOracle() private view {..."
            function fun__checkOracle_3764() {

                /// @src 50:9968:9978  "msg.sender"
                let expr_3751 := caller()
                /// @src 50:9951:9978  "address oracle = msg.sender"
                let var_oracle_3749 := expr_3751
                /// @src 50:10002:10008  "oracle"
                let _561 := var_oracle_3749
                let expr_3754 := _561
                /// @src 50:9993:10009  "isOracle(oracle)"
                let expr_3755 := fun_isOracle_3696(expr_3754)
                /// @src 50:9992:10009  "!isOracle(oracle)"
                let expr_3756 := cleanup_t_bool(iszero(expr_3755))
                /// @src 50:9988:10066  "if (!isOracle(oracle)) {..."
                if expr_3756 {
                    /// @src 50:10048:10054  "oracle"
                    let _562 := var_oracle_3749
                    let expr_3758 := _562
                    /// @src 50:10032:10055  "CallerNotOracle(oracle)"
                    {
                        let _563 := allocate_unbounded()
                        mstore(_563, 87945837235157218397923389624720136219357131873020567872419520530944060555264)
                        let _564 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_563, 4) , expr_3758)
                        revert(_563, sub(_564, _563))
                    }/// @src 50:9988:10066  "if (!isOracle(oracle)) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3969
            /// @src 50:11858:12251  "function _toBalance(uint256 shares) private view returns (uint256) {..."
            function fun__toBalance_3969(var_shares_3948) -> var__3951 {
                /// @src 50:11916:11923  "uint256"
                let zero_t_uint256_565 := zero_value_for_split_t_uint256()
                var__3951 := zero_t_uint256_565

                /// @src 50:11939:11950  "totalShares"
                let _566 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_3953 := _566
                /// @src 50:11954:11955  "0"
                let expr_3954 := 0x00
                /// @src 50:11939:11955  "totalShares == 0"
                let expr_3955 := eq(cleanup_t_uint256(expr_3953), convert_t_rational_0_by_1_to_t_uint256(expr_3954))
                /// @src 50:11935:11990  "if (totalShares == 0) {..."
                if expr_3955 {
                    /// @src 50:11978:11979  "0"
                    let expr_3956 := 0x00
                    /// @src 50:11971:11979  "return 0"
                    var__3951 := convert_t_rational_0_by_1_to_t_uint256(expr_3956)
                    leave
                    /// @src 50:11935:11990  "if (totalShares == 0) {..."
                }
                /// @src 50:12197:12201  "Math"
                let expr_3960_address := linkersymbol("node_modules/@openzeppelin/contracts/utils/math/Math.sol:Math")
                /// @src 50:12209:12215  "shares"
                let _567 := var_shares_3948
                let expr_3962 := _567
                /// @src 50:12217:12230  "totalAssets()"
                let expr_3964 := fun_totalAssets_3946()
                /// @src 50:12232:12243  "totalShares"
                let _568 := read_from_storage_split_offset_0_t_uint256(0x98)
                let expr_3965 := _568
                /// @src 50:12197:12244  "Math.mulDiv(shares, totalAssets(), totalShares)"
                let expr_3966 := fun_mulDiv_2529(expr_3962, expr_3964, expr_3965)
                /// @src 50:12190:12244  "return Math.mulDiv(shares, totalAssets(), totalShares)"
                var__3951 := expr_3966
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function update_byte_slice_20_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function update_storage_value_offset_0t_address_to_t_address(slot, value_0) {
                let convertedValue_0 := convert_t_address_to_t_address(value_0)
                sstore(slot, update_byte_slice_20_shift_0(sload(slot), prepare_store_t_address(convertedValue_0)))
            }

            /// @ast-id 7425
            /// @src 4:2133:2327  "function _setOwner(address newOwner) internal virtual {..."
            function fun__setOwner_7425(var_newOwner_7406) {

                /// @src 4:2201:2209  "newOwner"
                let _569 := var_newOwner_7406
                let expr_7409 := _569
                /// @src 4:2213:2220  "owner()"
                let expr_7411 := fun_owner_7340()
                /// @src 4:2201:2220  "newOwner != owner()"
                let expr_7412 := iszero(eq(cleanup_t_address(expr_7409), cleanup_t_address(expr_7411)))
                /// @src 4:2197:2321  "if (newOwner != owner()) {..."
                if expr_7412 {
                    /// @src 4:2262:2268  "_owner"
                    let _570 := read_from_storage_split_offset_0_t_address(0x00)
                    let expr_7414 := _570
                    /// @src 4:2270:2278  "newOwner"
                    let _571 := var_newOwner_7406
                    let expr_7415 := _571
                    /// @src 4:2241:2279  "OwnershipTransferred(_owner, newOwner)"
                    let _572 := 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0
                    let _573 := convert_t_address_to_t_address(expr_7414)
                    let _574 := convert_t_address_to_t_address(expr_7415)
                    {
                        let _575 := allocate_unbounded()
                        let _576 := abi_encode_tuple__to__fromStack(_575 )
                        log3(_575, sub(_576, _575) , _572, _573, _574)
                    }/// @src 4:2302:2310  "newOwner"
                    let _577 := var_newOwner_7406
                    let expr_7419 := _577
                    /// @src 4:2293:2310  "_owner = newOwner"
                    update_storage_value_offset_0t_address_to_t_address(0x00, expr_7419)
                    let expr_7420 := expr_7419
                    /// @src 4:2197:2321  "if (newOwner != owner()) {..."
                }

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 2358
            /// @src 42:588:692  "function min(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_min_2358(var_a_2343, var_b_2345) -> var__2348 {
                /// @src 42:646:653  "uint256"
                let zero_t_uint256_578 := zero_value_for_split_t_uint256()
                var__2348 := zero_t_uint256_578

                /// @src 42:672:673  "a"
                let _579 := var_a_2343
                let expr_2350 := _579
                /// @src 42:676:677  "b"
                let _580 := var_b_2345
                let expr_2351 := _580
                /// @src 42:672:677  "a < b"
                let expr_2352 := lt(cleanup_t_uint256(expr_2350), cleanup_t_uint256(expr_2351))
                /// @src 42:672:685  "a < b ? a : b"
                let expr_2355
                switch expr_2352
                case 0 {
                    /// @src 42:684:685  "b"
                    let _581 := var_b_2345
                    let expr_2354 := _581
                    /// @src 42:672:685  "a < b ? a : b"
                    expr_2355 := expr_2354
                }
                default {
                    /// @src 42:680:681  "a"
                    let _582 := var_a_2343
                    let expr_2353 := _582
                    /// @src 42:672:685  "a < b ? a : b"
                    expr_2355 := expr_2353
                }
                /// @src 42:665:685  "return a < b ? a : b"
                var__2348 := expr_2355
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

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

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 2529
            /// @src 42:1667:5880  "function mulDiv(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_mulDiv_2529(var_x_2409, var_y_2411, var_denominator_2413) -> var_result_2416 {
                /// @src 42:1749:1763  "uint256 result"
                let zero_t_uint256_583 := zero_value_for_split_t_uint256()
                var_result_2416 := zero_t_uint256_583

                /// @src 42:2096:2109  "uint256 prod0"
                let var_prod0_2419
                let zero_t_uint256_584 := zero_value_for_split_t_uint256()
                var_prod0_2419 := zero_t_uint256_584
                /// @src 42:2168:2181  "uint256 prod1"
                let var_prod1_2422
                let zero_t_uint256_585 := zero_value_for_split_t_uint256()
                var_prod1_2422 := zero_t_uint256_585
                /// @src 42:2239:2405  "assembly {..."
                {
                    let usr$mm := mulmod(var_x_2409, var_y_2411, not(0))
                    var_prod0_2419 := mul(var_x_2409, var_y_2411)
                    var_prod1_2422 := sub(sub(usr$mm, var_prod0_2419), lt(usr$mm, var_prod0_2419))
                }
                /// @src 42:2486:2491  "prod1"
                let _586 := var_prod1_2422
                let expr_2425 := _586
                /// @src 42:2495:2496  "0"
                let expr_2426 := 0x00
                /// @src 42:2486:2496  "prod1 == 0"
                let expr_2427 := eq(cleanup_t_uint256(expr_2425), convert_t_rational_0_by_1_to_t_uint256(expr_2426))
                /// @src 42:2482:2850  "if (prod1 == 0) {..."
                if expr_2427 {
                    /// @src 42:2816:2821  "prod0"
                    let _587 := var_prod0_2419
                    let expr_2428 := _587
                    /// @src 42:2824:2835  "denominator"
                    let _588 := var_denominator_2413
                    let expr_2429 := _588
                    /// @src 42:2816:2835  "prod0 / denominator"
                    let expr_2430 := wrapping_div_t_uint256(expr_2428, expr_2429)

                    /// @src 42:2809:2835  "return prod0 / denominator"
                    var_result_2416 := expr_2430
                    leave
                    /// @src 42:2482:2850  "if (prod1 == 0) {..."
                }
                /// @src 42:2960:2971  "denominator"
                let _589 := var_denominator_2413
                let expr_2435 := _589
                /// @src 42:2974:2979  "prod1"
                let _590 := var_prod1_2422
                let expr_2436 := _590
                /// @src 42:2960:2979  "denominator > prod1"
                let expr_2437 := gt(cleanup_t_uint256(expr_2435), cleanup_t_uint256(expr_2436))
                /// @src 42:2952:3005  "require(denominator > prod1, \"Math: mulDiv overflow\")"
                require_helper_t_stringliteral_d87093691d63b122ac2c14d1b11554b287e2431cf2b03550b3be7cffb0f86851(expr_2437)
                /// @src 42:3261:3278  "uint256 remainder"
                let var_remainder_2442
                let zero_t_uint256_591 := zero_value_for_split_t_uint256()
                var_remainder_2442 := zero_t_uint256_591
                /// @src 42:3292:3592  "assembly {..."
                {
                    var_remainder_2442 := mulmod(var_x_2409, var_y_2411, var_denominator_2413)
                    var_prod1_2422 := sub(var_prod1_2422, gt(var_remainder_2442, var_prod0_2419))
                    var_prod0_2419 := sub(var_prod0_2419, var_remainder_2442)
                }
                /// @src 42:3914:3925  "denominator"
                let _592 := var_denominator_2413
                let expr_2447 := _592
                /// @src 42:3930:3941  "denominator"
                let _593 := var_denominator_2413
                let expr_2448 := _593
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
                let _594 := var_prod1_2422
                let expr_2457 := _594
                /// @src 42:4414:4418  "twos"
                let _595 := var_twos_2446
                let expr_2458 := _595
                /// @src 42:4406:4418  "prod1 * twos"
                let expr_2459 := wrapping_mul_t_uint256(expr_2457, expr_2458)

                /// @src 42:4397:4418  "prod0 |= prod1 * twos"
                let _596 := var_prod0_2419
                let expr_2460 := or(_596, expr_2459)

                var_prod0_2419 := expr_2460
                /// @src 42:4755:4756  "3"
                let expr_2464 := 0x03
                /// @src 42:4759:4770  "denominator"
                let _597 := var_denominator_2413
                let expr_2465 := _597
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
                let _598 := var_denominator_2413
                let expr_2473 := _598
                /// @src 42:5021:5028  "inverse"
                let _599 := var_inverse_2463
                let expr_2474 := _599
                /// @src 42:5007:5028  "denominator * inverse"
                let expr_2475 := wrapping_mul_t_uint256(expr_2473, expr_2474)

                /// @src 42:5003:5028  "2 - denominator * inverse"
                let expr_2476 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2472), expr_2475)

                /// @src 42:4992:5028  "inverse *= 2 - denominator * inverse"
                let _600 := var_inverse_2463
                let expr_2477 := wrapping_mul_t_uint256(_600, expr_2476)

                var_inverse_2463 := expr_2477
                /// @src 42:5072:5073  "2"
                let expr_2480 := 0x02
                /// @src 42:5076:5087  "denominator"
                let _601 := var_denominator_2413
                let expr_2481 := _601
                /// @src 42:5090:5097  "inverse"
                let _602 := var_inverse_2463
                let expr_2482 := _602
                /// @src 42:5076:5097  "denominator * inverse"
                let expr_2483 := wrapping_mul_t_uint256(expr_2481, expr_2482)

                /// @src 42:5072:5097  "2 - denominator * inverse"
                let expr_2484 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2480), expr_2483)

                /// @src 42:5061:5097  "inverse *= 2 - denominator * inverse"
                let _603 := var_inverse_2463
                let expr_2485 := wrapping_mul_t_uint256(_603, expr_2484)

                var_inverse_2463 := expr_2485
                /// @src 42:5142:5143  "2"
                let expr_2488 := 0x02
                /// @src 42:5146:5157  "denominator"
                let _604 := var_denominator_2413
                let expr_2489 := _604
                /// @src 42:5160:5167  "inverse"
                let _605 := var_inverse_2463
                let expr_2490 := _605
                /// @src 42:5146:5167  "denominator * inverse"
                let expr_2491 := wrapping_mul_t_uint256(expr_2489, expr_2490)

                /// @src 42:5142:5167  "2 - denominator * inverse"
                let expr_2492 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2488), expr_2491)

                /// @src 42:5131:5167  "inverse *= 2 - denominator * inverse"
                let _606 := var_inverse_2463
                let expr_2493 := wrapping_mul_t_uint256(_606, expr_2492)

                var_inverse_2463 := expr_2493
                /// @src 42:5212:5213  "2"
                let expr_2496 := 0x02
                /// @src 42:5216:5227  "denominator"
                let _607 := var_denominator_2413
                let expr_2497 := _607
                /// @src 42:5230:5237  "inverse"
                let _608 := var_inverse_2463
                let expr_2498 := _608
                /// @src 42:5216:5237  "denominator * inverse"
                let expr_2499 := wrapping_mul_t_uint256(expr_2497, expr_2498)

                /// @src 42:5212:5237  "2 - denominator * inverse"
                let expr_2500 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2496), expr_2499)

                /// @src 42:5201:5237  "inverse *= 2 - denominator * inverse"
                let _609 := var_inverse_2463
                let expr_2501 := wrapping_mul_t_uint256(_609, expr_2500)

                var_inverse_2463 := expr_2501
                /// @src 42:5282:5283  "2"
                let expr_2504 := 0x02
                /// @src 42:5286:5297  "denominator"
                let _610 := var_denominator_2413
                let expr_2505 := _610
                /// @src 42:5300:5307  "inverse"
                let _611 := var_inverse_2463
                let expr_2506 := _611
                /// @src 42:5286:5307  "denominator * inverse"
                let expr_2507 := wrapping_mul_t_uint256(expr_2505, expr_2506)

                /// @src 42:5282:5307  "2 - denominator * inverse"
                let expr_2508 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2504), expr_2507)

                /// @src 42:5271:5307  "inverse *= 2 - denominator * inverse"
                let _612 := var_inverse_2463
                let expr_2509 := wrapping_mul_t_uint256(_612, expr_2508)

                var_inverse_2463 := expr_2509
                /// @src 42:5353:5354  "2"
                let expr_2512 := 0x02
                /// @src 42:5357:5368  "denominator"
                let _613 := var_denominator_2413
                let expr_2513 := _613
                /// @src 42:5371:5378  "inverse"
                let _614 := var_inverse_2463
                let expr_2514 := _614
                /// @src 42:5357:5378  "denominator * inverse"
                let expr_2515 := wrapping_mul_t_uint256(expr_2513, expr_2514)

                /// @src 42:5353:5378  "2 - denominator * inverse"
                let expr_2516 := wrapping_sub_t_uint256(convert_t_rational_2_by_1_to_t_uint256(expr_2512), expr_2515)

                /// @src 42:5342:5378  "inverse *= 2 - denominator * inverse"
                let _615 := var_inverse_2463
                let expr_2517 := wrapping_mul_t_uint256(_615, expr_2516)

                var_inverse_2463 := expr_2517
                /// @src 42:5821:5826  "prod0"
                let _616 := var_prod0_2419
                let expr_2520 := _616
                /// @src 42:5829:5836  "inverse"
                let _617 := var_inverse_2463
                let expr_2521 := _617
                /// @src 42:5821:5836  "prod0 * inverse"
                let expr_2522 := wrapping_mul_t_uint256(expr_2520, expr_2521)

                /// @src 42:5812:5836  "result = prod0 * inverse"
                var_result_2416 := expr_2522
                let expr_2523 := expr_2522
                /// @src 42:5857:5863  "result"
                let _618 := var_result_2416
                let expr_2525 := _618
                /// @src 42:5850:5863  "return result"
                var_result_2416 := expr_2525
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1914
            /// @src 24:1468:1540  "modifier whenNotPaused() {..."
            function modifier_whenNotPaused_1958() {

                fun__requireNotPaused_1943()
                /// @src 24:1532:1533  "_"
                fun__pause_1970_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 24:2450:2565  "function _pause() internal virtual whenNotPaused {..."
            function fun__pause_1970_inner() {

                /// @src 24:2519:2523  "true"
                let expr_1961 := 0x01
                /// @src 24:2509:2523  "_paused = true"
                update_storage_value_offset_0t_bool_to_t_bool(0x65, expr_1961)
                let expr_1962 := expr_1961
                /// @src 24:2545:2557  "_msgSender()"
                let expr_1966 := fun__msgSender_7257()
                /// @src 24:2538:2558  "Paused(_msgSender())"
                let _619 := 0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258
                {
                    let _620 := allocate_unbounded()
                    let _621 := abi_encode_tuple_t_address__to_t_address__fromStack(_620 , expr_1966)
                    log1(_620, sub(_621, _620) , _619)
                }
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1970
            /// @src 24:2450:2565  "function _pause() internal virtual whenNotPaused {..."
            function fun__pause_1970() {

                modifier_whenNotPaused_1958()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 3540
            /// @src 50:7677:7919  "function _setOperator(address newOperator) private {..."
            function fun__setOperator_3540(var_newOperator_3515) {

                /// @src 50:7742:7753  "newOperator"
                let _622 := var_newOperator_3515
                let expr_3518 := _622
                /// @src 50:7765:7766  "0"
                let expr_3521 := 0x00
                /// @src 50:7757:7767  "address(0)"
                let expr_3522 := convert_t_rational_0_by_1_to_t_address(expr_3521)
                /// @src 50:7742:7767  "newOperator == address(0)"
                let expr_3523 := eq(cleanup_t_address(expr_3518), cleanup_t_address(expr_3522))
                /// @src 50:7738:7828  "if (newOperator == address(0)) {..."
                if expr_3523 {
                    /// @src 50:7805:7816  "newOperator"
                    let _623 := var_newOperator_3515
                    let expr_3525 := _623
                    /// @src 50:7790:7817  "InvalidAddress(newOperator)"
                    {
                        let _624 := allocate_unbounded()
                        mstore(_624, 64363661792093988202869233268096534369334713472189181061533514992229738872832)
                        let _625 := abi_encode_tuple_t_address__to_t_address__fromStack(add(_624, 4) , expr_3525)
                        revert(_624, sub(_625, _624))
                    }/// @src 50:7738:7828  "if (newOperator == address(0)) {..."
                }
                /// @src 50:7858:7866  "operator"
                let _626 := read_from_storage_split_offset_0_t_address(0xa6)
                let expr_3531 := _626
                /// @src 50:7868:7879  "newOperator"
                let _627 := var_newOperator_3515
                let expr_3532 := _627
                /// @src 50:7842:7880  "OperatorChanged(operator, newOperator)"
                let _628 := 0xd58299b712891143e76310d5e664c4203c940a67db37cf856bdaa3c5c76a802c
                {
                    let _629 := allocate_unbounded()
                    let _630 := abi_encode_tuple_t_address_t_address__to_t_address_t_address__fromStack(_629 , expr_3531, expr_3532)
                    log1(_629, sub(_630, _629) , _628)
                }/// @src 50:7901:7912  "newOperator"
                let _631 := var_newOperator_3515
                let expr_3536 := _631
                /// @src 50:7890:7912  "operator = newOperator"
                update_storage_value_offset_0t_address_to_t_address(0xa6, expr_3536)
                let expr_3537 := expr_3536

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 8205
            /// @src 26:1423:1743  "function isContract(address account) internal view returns (bool) {..."
            function fun_isContract_8205(var_account_8193) -> var__8196 {
                /// @src 26:1483:1487  "bool"
                let zero_t_bool_632 := zero_value_for_split_t_bool()
                var__8196 := zero_t_bool_632

                /// @src 26:1713:1720  "account"
                let _633 := var_account_8193
                let expr_8198 := _633
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
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

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
            function modifier_onlyInitializing_7444() {

                /// @src 23:5374:5387  "_initializing"
                let _634 := read_from_storage_split_offset_21_t_bool(0x00)
                let expr_7168 := _634
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___ReentrancyGuard_init_7450_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 25:1889:2000  "function __ReentrancyGuard_init() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_7450_inner() {

                fun___ReentrancyGuard_init_unchained_7460()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7450
            /// @src 25:1889:2000  "function __ReentrancyGuard_init() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_7450() {

                modifier_onlyInitializing_7444()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_1890() {

                /// @src 23:5374:5387  "_initializing"
                let _635 := read_from_storage_split_offset_21_t_bool(0x00)
                let expr_7168 := _635
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___Pausable_init_1896_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 24:1084:1181  "function __Pausable_init() internal onlyInitializing {..."
            function fun___Pausable_init_1896_inner() {

                fun___Pausable_init_unchained_1906()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1896
            /// @src 24:1084:1181  "function __Pausable_init() internal onlyInitializing {..."
            function fun___Pausable_init_1896() {

                modifier_onlyInitializing_1890()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 6303
            /// @src 40:1349:1631  "function supportsInterface(address account, bytes4 interfaceId) internal view returns (bool) {..."
            function fun_supportsInterface_6303(var_account_6286, var_interfaceId_6288) -> var__6291 {
                /// @src 40:1436:1440  "bool"
                let zero_t_bool_636 := zero_value_for_split_t_bool()
                var__6291 := zero_t_bool_636

                /// @src 40:1558:1565  "account"
                let _637 := var_account_6286
                let expr_6294 := _637
                /// @src 40:1543:1566  "supportsERC165(account)"
                let expr_6295 := fun_supportsERC165_6283(expr_6294)
                /// @src 40:1543:1624  "supportsERC165(account) && supportsERC165InterfaceUnchecked(account, interfaceId)"
                let expr_6300 := expr_6295
                if expr_6300 {
                    /// @src 40:1603:1610  "account"
                    let _638 := var_account_6286
                    let expr_6297 := _638
                    /// @src 40:1612:1623  "interfaceId"
                    let _639 := var_interfaceId_6288
                    let expr_6298 := _639
                    /// @src 40:1570:1624  "supportsERC165InterfaceUnchecked(account, interfaceId)"
                    let expr_6299 := fun_supportsERC165InterfaceUnchecked_6446(expr_6297, expr_6298)
                    /// @src 40:1543:1624  "supportsERC165(account) && supportsERC165InterfaceUnchecked(account, interfaceId)"
                    expr_6300 := expr_6299
                }
                /// @src 40:1536:1624  "return supportsERC165(account) && supportsERC165InterfaceUnchecked(account, interfaceId)"
                var__6291 := expr_6300
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 2340
            /// @src 42:413:517  "function max(uint256 a, uint256 b) internal pure returns (uint256) {..."
            function fun_max_2340(var_a_2325, var_b_2327) -> var__2330 {
                /// @src 42:471:478  "uint256"
                let zero_t_uint256_640 := zero_value_for_split_t_uint256()
                var__2330 := zero_t_uint256_640

                /// @src 42:497:498  "a"
                let _641 := var_a_2325
                let expr_2332 := _641
                /// @src 42:501:502  "b"
                let _642 := var_b_2327
                let expr_2333 := _642
                /// @src 42:497:502  "a > b"
                let expr_2334 := gt(cleanup_t_uint256(expr_2332), cleanup_t_uint256(expr_2333))
                /// @src 42:497:510  "a > b ? a : b"
                let expr_2337
                switch expr_2334
                case 0 {
                    /// @src 42:509:510  "b"
                    let _643 := var_b_2327
                    let expr_2336 := _643
                    /// @src 42:497:510  "a > b ? a : b"
                    expr_2337 := expr_2336
                }
                default {
                    /// @src 42:505:506  "a"
                    let _644 := var_a_2325
                    let expr_2335 := _644
                    /// @src 42:497:510  "a > b ? a : b"
                    expr_2337 := expr_2335
                }
                /// @src 42:490:510  "return a > b ? a : b"
                var__2330 := expr_2337
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

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
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7257
            /// @src 27:886:982  "function _msgSender() internal view virtual returns (address) {..."
            function fun__msgSender_7257() -> var__7251 {
                /// @src 27:939:946  "address"
                let zero_t_address_645 := zero_value_for_split_t_address()
                var__7251 := zero_t_address_645

                /// @src 27:965:975  "msg.sender"
                let expr_7254 := caller()
                /// @src 27:958:975  "return msg.sender"
                var__7251 := expr_7254
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_7453() {

                /// @src 23:5374:5387  "_initializing"
                let _646 := read_from_storage_split_offset_21_t_bool(0x00)
                let expr_7168 := _646
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___ReentrancyGuard_init_unchained_7460_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 25:2006:2115  "function __ReentrancyGuard_init_unchained() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_unchained_7460_inner() {

                /// @src 25:2096:2108  "_NOT_ENTERED"
                let expr_7456 := constant__NOT_ENTERED_7436()
                /// @src 25:2086:2108  "_status = _NOT_ENTERED"
                update_storage_value_offset_0t_uint256_to_t_uint256(0x01, expr_7456)
                let expr_7457 := expr_7456

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7460
            /// @src 25:2006:2115  "function __ReentrancyGuard_init_unchained() internal onlyInitializing {..."
            function fun___ReentrancyGuard_init_unchained_7460() {

                modifier_onlyInitializing_7453()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 7174
            /// @src 23:5328:5453  "modifier onlyInitializing() {..."
            function modifier_onlyInitializing_1899() {

                /// @src 23:5374:5387  "_initializing"
                let _647 := read_from_storage_split_offset_21_t_bool(0x00)
                let expr_7168 := _647
                /// @src 23:5366:5435  "require(_initializing, \"Initializable: contract is not initializing\")"
                require_helper_t_stringliteral_d688db918bb9dd50354922faa108595679886fe9ff08046ad1ffe30aaea55f8b(expr_7168)
                /// @src 23:5445:5446  "_"
                fun___Pausable_init_unchained_1906_inner()

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @src 24:1187:1282  "function __Pausable_init_unchained() internal onlyInitializing {..."
            function fun___Pausable_init_unchained_1906_inner() {

                /// @src 24:1270:1275  "false"
                let expr_1902 := 0x00
                /// @src 24:1260:1275  "_paused = false"
                update_storage_value_offset_0t_bool_to_t_bool(0x65, expr_1902)
                let expr_1903 := expr_1902

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            /// @ast-id 1906
            /// @src 24:1187:1282  "function __Pausable_init_unchained() internal onlyInitializing {..."
            function fun___Pausable_init_unchained_1906() {

                modifier_onlyInitializing_1899()
            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function cleanup_t_rational_4294967295_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_4294967295_by_1_to_t_bytes4(value) -> converted {
                converted := cleanup_t_bytes4(shift_left_224(cleanup_t_rational_4294967295_by_1(value)))
            }

            /// @src 40:551:609  "bytes4 private constant _INTERFACE_ID_INVALID = 0xffffffff"
            function constant__INTERFACE_ID_INVALID_6260() -> ret {
                /// @src 40:599:609  "0xffffffff"
                let expr_6259 := 0xffffffff
                let _651 := convert_t_rational_4294967295_by_1_to_t_bytes4(expr_6259)

                ret := _651
            }

            /// @ast-id 6283
            /// @src 40:704:1131  "function supportsERC165(address account) internal view returns (bool) {..."
            function fun_supportsERC165_6283(var_account_6263) -> var__6266 {
                /// @src 40:768:772  "bool"
                let zero_t_bool_648 := zero_value_for_split_t_bool()
                var__6266 := zero_t_bool_648

                /// @src 40:1008:1015  "account"
                let _649 := var_account_6263
                let expr_6269 := _649
                /// @src 40:1017:1042  "type(IERC165).interfaceId"
                let expr_6273 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 40:975:1043  "supportsERC165InterfaceUnchecked(account, type(IERC165).interfaceId)"
                let expr_6274 := fun_supportsERC165InterfaceUnchecked_6446(expr_6269, expr_6273)
                /// @src 40:975:1124  "supportsERC165InterfaceUnchecked(account, type(IERC165).interfaceId) &&..."
                let expr_6280 := expr_6274
                if expr_6280 {
                    /// @src 40:1093:1100  "account"
                    let _650 := var_account_6263
                    let expr_6276 := _650
                    /// @src 40:1102:1123  "_INTERFACE_ID_INVALID"
                    let expr_6277 := constant__INTERFACE_ID_INVALID_6260()
                    /// @src 40:1060:1124  "supportsERC165InterfaceUnchecked(account, _INTERFACE_ID_INVALID)"
                    let expr_6278 := fun_supportsERC165InterfaceUnchecked_6446(expr_6276, expr_6277)
                    /// @src 40:1059:1124  "!supportsERC165InterfaceUnchecked(account, _INTERFACE_ID_INVALID)"
                    let expr_6279 := cleanup_t_bool(iszero(expr_6278))
                    /// @src 40:975:1124  "supportsERC165InterfaceUnchecked(account, type(IERC165).interfaceId) &&..."
                    expr_6280 := expr_6279
                }
                /// @src 40:956:1124  "return..."
                var__6266 := expr_6280
                leave

            }
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

            function abi_encode_t_bytes4_to_t_bytes4_fromStack(value, pos) {
                mstore(pos, cleanup_t_bytes4(value))
            }

            function abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bytes4_to_t_bytes4_fromStack(value0,  add(headStart, 0))

            }

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
                let zero_t_bool_652 := zero_value_for_split_t_bool()
                var__6413 := zero_t_bool_652

                /// @src 40:4615:4649  "IERC165.supportsInterface.selector"
                let expr_6421 := 0x01ffc9a700000000000000000000000000000000000000000000000000000000
                /// @src 40:4651:4662  "interfaceId"
                let _653 := var_interfaceId_6410
                let expr_6422 := _653
                /// @src 40:4592:4663  "abi.encodeWithSelector(IERC165.supportsInterface.selector, interfaceId)"

                let expr_6423_mpos := allocate_unbounded()
                let _654 := add(expr_6423_mpos, 0x20)

                mstore(_654, expr_6421)
                _654 := add(_654, 4)

                let _655 := abi_encode_tuple_t_bytes4__to_t_bytes4__fromStack(_654, expr_6422)
                mstore(expr_6423_mpos, sub(_655, add(expr_6423_mpos, 0x20)))
                finalize_allocation(expr_6423_mpos, sub(_655, expr_6423_mpos))
                /// @src 40:4563:4663  "bytes memory encodedParams = abi.encodeWithSelector(IERC165.supportsInterface.selector, interfaceId)"
                let var_encodedParams_6416_mpos := expr_6423_mpos
                /// @src 40:4705:4717  "bool success"
                let var_success_6426
                let zero_t_bool_656 := zero_value_for_split_t_bool()
                var_success_6426 := zero_t_bool_656
                /// @src 40:4727:4745  "uint256 returnSize"
                let var_returnSize_6429
                let zero_t_uint256_657 := zero_value_for_split_t_uint256()
                var_returnSize_6429 := zero_t_uint256_657
                /// @src 40:4755:4774  "uint256 returnValue"
                let var_returnValue_6432
                let zero_t_uint256_658 := zero_value_for_split_t_uint256()
                var_returnValue_6432 := zero_t_uint256_658
                /// @src 40:4784:4996  "assembly {..."
                {
                    var_success_6426 := staticcall(30000, var_account_6408, add(var_encodedParams_6416_mpos, 0x20), mload(var_encodedParams_6416_mpos), 0x00, 0x20)
                    var_returnSize_6429 := returndatasize()
                    var_returnValue_6432 := mload(0x00)
                }
                /// @src 40:5013:5020  "success"
                let _659 := var_success_6426
                let expr_6435 := _659
                /// @src 40:5013:5042  "success && returnSize >= 0x20"
                let expr_6439 := expr_6435
                if expr_6439 {
                    /// @src 40:5024:5034  "returnSize"
                    let _660 := var_returnSize_6429
                    let expr_6436 := _660
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
                    let _661 := var_returnValue_6432
                    let expr_6440 := _661
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
            /// @src 50:3671:22218  "contract StakingverseVault is IVault, ERC165, OwnableUnset, ReentrancyGuardUpgradeable, PausableUpgradeable {..."

        }

        data ".metadata" hex"a2646970667358221220535307dffe5bb3c38cc315d15fb7b95b106884890f689b16e0f54ce4bcf25b7964736f6c63430008160033"
    }

}

