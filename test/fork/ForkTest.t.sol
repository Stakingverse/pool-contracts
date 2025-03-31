// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

// Test helpers
import {Test, console} from "forge-std/Test.sol";

// Testing + Setups
import {StakingverseVault} from "../../src/StakingverseVault.sol";
import {IDepositContract} from "../../src/IDepositContract.sol";
import {
    TransparentUpgradeableProxy,
    ITransparentUpgradeableProxy as IProxy
} from "@openzeppelin/contracts-v4.9.0/proxy/transparent/TransparentUpgradeableProxy.sol";

// Contracts to test
import {SLYXToken} from "../../src/SLYXToken.sol";

// Constants
import {PROXY_ADMIN_MAINNET, VAULT_PROXY_MAINNET, SLYX_TOKEN_PROXY_MAINNET} from "../../script/MainnetConstants.sol";

// Contract addresses deployed on mainnet
address payable constant VAULT_IMPLEMENTATION = payable(0x2Cb02ef26aDDAB15686ed634d70699ab64F195f4);
address payable constant VAULT_PROXY = payable(VAULT_PROXY_MAINNET);
address payable constant SLYX_PROXY = payable(SLYX_TOKEN_PROXY_MAINNET);

// Config addresses setup on mainnet
address constant VAULT_AND_SLYX_PROXY_ADMIN = PROXY_ADMIN_MAINNET;
address constant VAULT_CONTRACT_OWNER_AND_OPERATOR = 0x8909ce174B12Be1311bA80797d2f3A8BEdD913Bf;
address constant VAULT_ORACLE = 0x6a44823e20CD97250AfA3c73e45aBef4Ff79c51F;

// Upcoming SLYX Token Contract owner
address constant SLYX_CONTRACT_OWNER = 0x49d32954698344592407C2C1f76c431F0032167c;

bytes constant SLYX_PROXY_BYTECODE =
    hex"60806040523661001357610011610017565b005b6100115b61001f610168565b6001600160a01b0316330361015e5760606001600160e01b03195f35166364d3180d60e11b81016100595761005261019a565b9150610156565b63587086bd60e11b6001600160e01b0319821601610079576100526101ed565b63070d7c6960e41b6001600160e01b031982160161009957610052610231565b621eb96f60e61b6001600160e01b03198216016100b857610052610261565b63a39f25e560e01b6001600160e01b03198216016100d8576100526102a0565b60405162461bcd60e51b815260206004820152604260248201527f5472616e73706172656e745570677261646561626c6550726f78793a2061646d60448201527f696e2063616e6e6f742066616c6c6261636b20746f2070726f78792074617267606482015261195d60f21b608482015260a4015b60405180910390fd5b815160208301f35b6101666102b3565b565b5f7fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035b546001600160a01b0316919050565b60606101a46102c3565b5f6101b23660048184610668565b8101906101bf91906106aa565b90506101da8160405180602001604052805f8152505f6102cd565b505060408051602081019091525f815290565b60605f806101fe3660048184610668565b81019061020b91906106d7565b9150915061021b828260016102cd565b60405180602001604052805f8152509250505090565b606061023b6102c3565b5f6102493660048184610668565b81019061025691906106aa565b90506101da816102f8565b606061026b6102c3565b5f610274610168565b604080516001600160a01b03831660208201529192500160405160208183030381529060405291505090565b60606102aa6102c3565b5f61027461034f565b6101666102be61034f565b61035d565b3415610166575f80fd5b6102d68361037b565b5f825111806102e25750805b156102f3576102f183836103ba565b505b505050565b7f7e644d79422f17c01e4894b5f4f588d331ebfa28653d42ae832dc59e38c9798f610321610168565b604080516001600160a01b03928316815291841660208301520160405180910390a161034c816103e6565b50565b5f61035861048f565b905090565b365f80375f80365f845af43d5f803e808015610377573d5ff35b3d5ffd5b610384816104b6565b6040516001600160a01b038216907fbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b905f90a250565b60606103df83836040518060600160405280602781526020016108036027913961054a565b9392505050565b6001600160a01b03811661044b5760405162461bcd60e51b815260206004820152602660248201527f455243313936373a206e65772061646d696e20697320746865207a65726f206160448201526564647265737360d01b606482015260840161014d565b807fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035b80546001600160a01b0319166001600160a01b039290921691909117905550565b5f7f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc61018b565b6001600160a01b0381163b6105235760405162461bcd60e51b815260206004820152602d60248201527f455243313936373a206e657720696d706c656d656e746174696f6e206973206e60448201526c1bdd08184818dbdb9d1c9858dd609a1b606482015260840161014d565b807f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc61046e565b60605f80856001600160a01b03168560405161056691906107b5565b5f60405180830381855af49150503d805f811461059e576040519150601f19603f3d011682016040523d82523d5f602084013e6105a3565b606091505b50915091506105b4868383876105be565b9695505050505050565b6060831561062c5782515f03610625576001600160a01b0385163b6106255760405162461bcd60e51b815260206004820152601d60248201527f416464726573733a2063616c6c20746f206e6f6e2d636f6e7472616374000000604482015260640161014d565b5081610636565b610636838361063e565b949350505050565b81511561064e5781518083602001fd5b8060405162461bcd60e51b815260040161014d91906107d0565b5f8085851115610676575f80fd5b83861115610682575f80fd5b5050820193919092039150565b80356001600160a01b03811681146106a5575f80fd5b919050565b5f602082840312156106ba575f80fd5b6103df8261068f565b634e487b7160e01b5f52604160045260245ffd5b5f80604083850312156106e8575f80fd5b6106f18361068f565b9150602083013567ffffffffffffffff8082111561070d575f80fd5b818501915085601f830112610720575f80fd5b813581811115610732576107326106c3565b604051601f8201601f19908116603f0116810190838211818310171561075a5761075a6106c3565b81604052828152886020848701011115610772575f80fd5b826020860160208301375f6020848301015280955050505050509250929050565b5f5b838110156107ad578181015183820152602001610795565b50505f910152565b5f82516107c6818460208701610793565b9190910192915050565b602081525f82518060208401526107ee816040850160208701610793565b601f01601f1916919091016040019291505056fe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c6564a264697066735822122015b4231dda86f0402c82dbd8505d83543efd1acf89fcd12f9a9ddb52aab9449364736f6c63430008160033";
bytes constant VAULT_PROXY_BYTECODE =
    hex"60806040523661001357610011610017565b005b6100115b61001f610202565b6001600160a01b031633036101f85760606001600160e01b0319600035167fc9a6301a0000000000000000000000000000000000000000000000000000000081016100735761006c610235565b91506101f0565b7fb0e10d7a000000000000000000000000000000000000000000000000000000006001600160e01b03198216016100ac5761006c61028c565b7f70d7c690000000000000000000000000000000000000000000000000000000006001600160e01b03198216016100e55761006c6102d2565b7f07ae5bc0000000000000000000000000000000000000000000000000000000006001600160e01b031982160161011e5761006c610303565b7fa39f25e5000000000000000000000000000000000000000000000000000000006001600160e01b03198216016101575761006c610343565b60405162461bcd60e51b815260206004820152604260248201527f5472616e73706172656e745570677261646561626c6550726f78793a2061646d60448201527f696e2063616e6e6f742066616c6c6261636b20746f2070726f7879207461726760648201527f6574000000000000000000000000000000000000000000000000000000000000608482015260a4015b60405180910390fd5b815160208301f35b610200610357565b565b60007fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035b546001600160a01b0316919050565b606061023f610367565b600061024e366004818461075b565b81019061025b91906107a1565b905061027881604051806020016040528060008152506000610372565b505060408051602081019091526000815290565b606060008061029e366004818461075b565b8101906102ab91906107eb565b915091506102bb82826001610372565b604051806020016040528060008152509250505090565b60606102dc610367565b60006102eb366004818461075b565b8101906102f891906107a1565b90506102788161039e565b606061030d610367565b6000610317610202565b604080516001600160a01b03831660208201529192500160405160208183030381529060405291505090565b606061034d610367565b60006103176103f5565b6102006103626103f5565b610404565b341561020057600080fd5b61037b83610428565b6000825111806103885750805b15610399576103978383610468565b505b505050565b7f7e644d79422f17c01e4894b5f4f588d331ebfa28653d42ae832dc59e38c9798f6103c7610202565b604080516001600160a01b03928316815291841660208301520160405180910390a16103f281610494565b50565b60006103ff61056c565b905090565b3660008037600080366000845af43d6000803e808015610423573d6000f35b3d6000fd5b61043181610594565b6040516001600160a01b038216907fbc7cd75a20ee27fd9adebab32041f755214dbc6bffa90cc0225b39da2e5c2d3b90600090a250565b606061048d838360405180606001604052806027815260200161092160279139610638565b9392505050565b6001600160a01b0381166105105760405162461bcd60e51b815260206004820152602660248201527f455243313936373a206e65772061646d696e20697320746865207a65726f206160448201527f646472657373000000000000000000000000000000000000000000000000000060648201526084016101e7565b807fb53127684a568b3173ae13b9f8a6016e243e63b6e8ee1178d6a717850b5d61035b80547fffffffffffffffffffffffff0000000000000000000000000000000000000000166001600160a01b039290921691909117905550565b60007f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc610226565b6001600160a01b0381163b6106115760405162461bcd60e51b815260206004820152602d60248201527f455243313936373a206e657720696d706c656d656e746174696f6e206973206e60448201527f6f74206120636f6e74726163740000000000000000000000000000000000000060648201526084016101e7565b807f360894a13ba1a3210667c828492db98dca3e2076cc3735a920a3ca505d382bbc610533565b6060600080856001600160a01b03168560405161065591906108d1565b600060405180830381855af49150503d8060008114610690576040519150601f19603f3d011682016040523d82523d6000602084013e610695565b606091505b50915091506106a6868383876106b0565b9695505050505050565b6060831561071f578251600003610718576001600160a01b0385163b6107185760405162461bcd60e51b815260206004820152601d60248201527f416464726573733a2063616c6c20746f206e6f6e2d636f6e747261637400000060448201526064016101e7565b5081610729565b6107298383610731565b949350505050565b8151156107415781518083602001fd5b8060405162461bcd60e51b81526004016101e791906108ed565b6000808585111561076b57600080fd5b8386111561077857600080fd5b5050820193919092039150565b80356001600160a01b038116811461079c57600080fd5b919050565b6000602082840312156107b357600080fd5b61048d82610785565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b600080604083850312156107fe57600080fd5b61080783610785565b9150602083013567ffffffffffffffff8082111561082457600080fd5b818501915085601f83011261083857600080fd5b81358181111561084a5761084a6107bc565b604051601f8201601f19908116603f01168101908382118183101715610872576108726107bc565b8160405282815288602084870101111561088b57600080fd5b8260208601602083013760006020848301015280955050505050509250929050565b60005b838110156108c85781810151838201526020016108b0565b50506000910152565b600082516108e38184602087016108ad565b9190910192915050565b602081526000825180602084015261090c8160408501602087016108ad565b601f01601f1916919091016040019291505056fe416464726573733a206c6f772d6c6576656c2064656c65676174652063616c6c206661696c6564a2646970667358221220280d55eaf8059181b8918c073f41b03e81059104244c761de8efef17dc73dad464736f6c63430008160033";

contract ForkTest is Test {
    /// @dev There is a rounding error of 1 Wei accepted as loss.
    /// https://github.com/Stakingverse/pool-contracts/blob/main/src/StakingverseVault.sol#L283
    uint256 internal constant VAULT_ROUNDING_ERROR_LOSS = 1 wei;

    address sLyxProxyAdmin;

    // existing vault contract address (proxy)
    StakingverseVault vault;

    // Implementations + proxies
    StakingverseVault newVaultImplementation;
    SLYXToken sLyxTokenImplementation;
    SLYXToken sLyxToken;

    uint256 initialDepositLimit;

    function setUp() public {
        console.log(unicode"🛞 Setup Fork testing. Block number: ", block.number);

        vault = StakingverseVault(VAULT_PROXY);

        newVaultImplementation = new StakingverseVault();

        // initial checks before upgrade
        assertEq(block.chainid, 42);

        initialDepositLimit = vault.depositLimit();

        // Note that this value might change and is increased regularly.
        assertGt(initialDepositLimit, 1_476_000 ether);
        assertEq(vault.owner(), VAULT_CONTRACT_OWNER_AND_OPERATOR);
        assertEq(vault.operator(), VAULT_CONTRACT_OWNER_AND_OPERATOR);
        assertTrue(vault.isOracle(VAULT_ORACLE));

        vm.startPrank(VAULT_AND_SLYX_PROXY_ADMIN);
        assertEq(IProxy(VAULT_PROXY).implementation(), VAULT_IMPLEMENTATION);
        assertEq(IProxy(VAULT_PROXY).admin(), VAULT_AND_SLYX_PROXY_ADMIN);
        vm.stopPrank();

        // For simplicity, we set the deposit limit to very high value to not reach quickly the error `DepositLimitExceeded`..
        vm.prank(VAULT_CONTRACT_OWNER_AND_OPERATOR);
        vault.setDepositLimit(3_000_000 ether);

        // CHECK the bytecode of the Vault proxy is correct
        assertEq(address(vault).code, VAULT_PROXY_BYTECODE);

        // CHECK the bytecode of the implementation is not the same as the bytecode
        // of the new Vault we are upgrading to.
        assertNotEq(address(newVaultImplementation).code, VAULT_IMPLEMENTATION.code);

        // upgrade vault
        bytes memory upgradeToCalldata = abi.encodeCall(IProxy.upgradeTo, address(newVaultImplementation));
        vm.prank(VAULT_AND_SLYX_PROXY_ADMIN);
        (bool success,) = address(vault).call(upgradeToCalldata);
        assertTrue(success, "upgrade failed");
        vm.prank(VAULT_AND_SLYX_PROXY_ADMIN);
        assertEq(IProxy(VAULT_PROXY).implementation(), address(newVaultImplementation));

        // allow the transaction to be validated
        vm.roll(block.number + 100);

        sLyxToken = SLYXToken(SLYX_PROXY);

        // CHECK the bytecode of the Vault proxy is correct
        assertEq(address(sLyxToken).code, SLYX_PROXY_BYTECODE);

        // CHECK SLYX Proxy admin is correctly set
        vm.prank(VAULT_AND_SLYX_PROXY_ADMIN);
        assertEq(IProxy(SLYX_PROXY).admin(), VAULT_AND_SLYX_PROXY_ADMIN);

        // Deploy the SLYX Token contract implementation
        // + upgrade the SLYX Proxy contract to the new implementation
        sLyxTokenImplementation = new SLYXToken();

        bytes memory slyxInitializeCalldata = abi.encodeCall(SLYXToken.initialize, (SLYX_CONTRACT_OWNER, vault));

        vm.startPrank(VAULT_AND_SLYX_PROXY_ADMIN);
        IProxy(SLYX_PROXY).upgradeToAndCall(address(sLyxTokenImplementation), slyxInitializeCalldata);

        // CHECK implementation address has been upgraded successfully
        assertEq(IProxy(SLYX_PROXY).implementation(), address(sLyxTokenImplementation));

        // CHECK admin remains the same after upgrade
        assertEq(IProxy(SLYX_PROXY).admin(), VAULT_AND_SLYX_PROXY_ADMIN);
        vm.stopPrank();

        vm.roll(block.number + 1000);

        console.log(unicode"🧪 Starting Fork testing. Block number: ", block.number);
    }

    function test_vaultStorageRemainSameAfterUpgrade() public view {
        assertGt(vault.depositLimit(), initialDepositLimit); // Note that this value might change
        assertEq(vault.owner(), VAULT_CONTRACT_OWNER_AND_OPERATOR);
        assertEq(vault.operator(), VAULT_CONTRACT_OWNER_AND_OPERATOR);
        assertTrue(vault.isOracle(VAULT_ORACLE));
    }

    function test_cannotInitializeVaultProxyAfterUpgrade() public {
        vm.expectRevert("Initializable: contract is already initialized");
        vault.initialize(
            VAULT_CONTRACT_OWNER_AND_OPERATOR,
            VAULT_CONTRACT_OWNER_AND_OPERATOR,
            IDepositContract(0xCAfe00000000000000000000000000000000CAfe)
        );
    }

    function test_cannotInitializeNewVaultImplementation() public {
        vm.expectRevert("Initializable: contract is already initialized");
        newVaultImplementation.initialize(
            VAULT_CONTRACT_OWNER_AND_OPERATOR,
            VAULT_CONTRACT_OWNER_AND_OPERATOR,
            IDepositContract(0xCAfe00000000000000000000000000000000CAfe)
        );
    }

    function test_cannotInitializeSLYXTokenProxyAfterUpgrade() public {
        vm.expectRevert("Initializable: contract is already initialized");
        sLyxToken.initialize(address(111), vault);
    }

    function test_cannotInitializeSLYXTokenImplementation() public {
        vm.expectRevert("Initializable: contract is already initialized");
        sLyxTokenImplementation.initialize(address(111), vault);
    }

    function test_NoSLYXTokenMintedInitially() public view {
        assertEq(sLyxToken.totalSupply(), 0);
    }

    function test_ExchangeRateForSLYXToLyxStartAt1To1SinceNoSLYXGotMinted() public view {
        assertEq(sLyxToken.getExchangeRate(), 1 ether);
        assertEq(sLyxToken.getNativeTokenValue(12345 ether), 12345 ether);
        assertEq(sLyxToken.getSLYXTokenValue(12345 ether), 12345 ether);
    }

    function test_NewUserStakeAndMintSLYXLater() public {
        address alice = makeAddr("alice");
        uint256 depositAmount = 320 ether;

        uint256 totalUnstakedBefore = vault.totalUnstaked();

        vm.deal(alice, depositAmount);
        vm.startPrank(alice);

        vault.deposit{value: depositAmount}(alice);
        assertEq(vault.totalUnstaked(), totalUnstakedBefore + depositAmount);

        uint256 aliceStake = vault.balanceOf(alice);
        uint256 aliceShares = vault.sharesOf(alice);
        assertEq(vault.balanceOf(alice), aliceStake);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.roll(block.number + 1000);

        vault.transferStake(address(sLyxToken), aliceStake, "");
        // Rounding error remaining?
        assertEq(vault.balanceOf(alice), 1 wei);

        // All test have rounding errors remaining
        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.totalSupply(), aliceShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.balanceOf(alice), aliceShares - VAULT_ROUNDING_ERROR_LOSS);

        vm.stopPrank();
    }

    function test_NewUserMintSLYXAtTheSameTimeThanDepositing() public {
        address alice = makeAddr("alice");
        uint256 depositAmount = 320 ether;

        uint256 totalUnstakedBefore = vault.totalUnstaked();

        vm.deal(alice, depositAmount);
        vm.startPrank(alice);

        vault.deposit{value: depositAmount}(address(sLyxToken));
        assertEq(vault.totalUnstaked(), totalUnstakedBefore + depositAmount);

        uint256 sLyxTokenShares = vault.sharesOf(address(sLyxToken));
        assertEq(vault.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), depositAmount - VAULT_ROUNDING_ERROR_LOSS);

        assertEq(sLyxToken.totalSupply(), sLyxTokenShares);
        assertEq(sLyxToken.balanceOf(alice), sLyxTokenShares);

        vm.stopPrank();
    }

    function test_NewUserStakeForSomeoneElseWhoMintSLYXLater() public {
        address alice = makeAddr("alice");
        address bob = makeAddr("bob");
        uint256 depositAmount = 320 ether;

        uint256 totalUnstakedBefore = vault.totalUnstaked();

        hoax(alice, depositAmount);
        vault.deposit{value: depositAmount}(bob);
        assertEq(vault.totalUnstaked(), totalUnstakedBefore + depositAmount);

        uint256 bobStake = vault.balanceOf(bob);
        uint256 bobShares = vault.sharesOf(bob);
        assertEq(vault.balanceOf(bob), bobStake);
        assertEq(vault.balanceOf(address(sLyxToken)), 0);

        vm.roll(block.number + 1000);

        vm.prank(bob);
        vault.transferStake(address(sLyxToken), bobStake, "");
        assertEq(vault.balanceOf(bob), 1);

        assertEq(vault.balanceOf(address(sLyxToken)), bobStake - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.totalSupply(), bobShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.balanceOf(bob), bobShares - VAULT_ROUNDING_ERROR_LOSS);

        vm.stopPrank();
    }

    function test_ExistingStakerConvertSomeOfItsStakeToSLYX() public {
        address largeStaker = 0x01C2a6EB1568C1A3E0B8fE864056FaC8B4867f77;
        uint256 largeStakerStake = vault.balanceOf(largeStaker);
        uint256 largeStakerShares = vault.sharesOf(largeStaker);

        assertGt(vault.balanceOf(largeStaker), 6_400 ether);

        // Convert half of the stake to sLYX
        uint256 amountToConvertAsSLYX = largeStakerStake / 2;

        vm.prank(largeStaker);
        vault.transferStake(address(sLyxToken), amountToConvertAsSLYX, "");

        assertEq(vault.balanceOf(largeStaker), largeStakerStake - amountToConvertAsSLYX + VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.balanceOf(address(sLyxToken)), amountToConvertAsSLYX - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.sharesOf(largeStaker), largeStakerShares / 2 + VAULT_ROUNDING_ERROR_LOSS);

        // broad check to ensure SLYX is minted as shares (shares MUST always be lower than LYX staked balances)
        assertLt(sLyxToken.totalSupply(), amountToConvertAsSLYX);
        assertLt(sLyxToken.balanceOf(largeStaker), amountToConvertAsSLYX);

        // Since user converted half of its stake to sLYX, its SLYX balance is half of its shares
        assertEq(sLyxToken.balanceOf(largeStaker), vault.sharesOf(largeStaker) - VAULT_ROUNDING_ERROR_LOSS);
    }

    function test_ExistingStakeConvertAllItsStakeToSLYX() public {
        address existingUser = 0xC99Fe517d665c23035B050e13188eb4d7075C91d;
        uint256 userStake = vault.balanceOf(existingUser);
        uint256 userShares = vault.sharesOf(existingUser);

        vm.prank(existingUser);
        vault.transferStake(address(sLyxToken), userStake, "");

        assertEq(vault.balanceOf(existingUser), VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.balanceOf(address(sLyxToken)), userStake - VAULT_ROUNDING_ERROR_LOSS);

        assertEq(sLyxToken.totalSupply(), userShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.balanceOf(existingUser), userShares - VAULT_ROUNDING_ERROR_LOSS);
    }

    function test_ExchangeRateForSLYXToLyxStartIncreasesAfterMintingSLYX() public {
        uint256 initialSLyxToLyxExchangeRate = sLyxToken.getExchangeRate();
        assertEq(initialSLyxToLyxExchangeRate, 1 ether);

        address alice = makeAddr("alice");
        uint256 depositAmount = 320 ether;

        vm.deal(alice, depositAmount);
        vm.startPrank(alice);

        vault.deposit{value: depositAmount}(alice);

        uint256 aliceStake = vault.balanceOf(alice);
        uint256 aliceShares = vault.sharesOf(alice);

        vm.roll(block.number + 1000);

        vault.transferStake(address(sLyxToken), aliceStake, "");

        // CHECK the exchange rate increased
        uint256 newSLyxToLyxExchangeRate = sLyxToken.getExchangeRate();
        assertGt(newSLyxToLyxExchangeRate, initialSLyxToLyxExchangeRate);

        assertEq(vault.balanceOf(address(sLyxToken)), aliceStake - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.totalSupply(), aliceShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(sLyxToken.balanceOf(alice), aliceShares - VAULT_ROUNDING_ERROR_LOSS);

        // Check the exchange rate is not 1:1 from the start (since the Vault already contains rewards)
        assertGt(sLyxToken.getExchangeRate(), 1 ether);

        // CHECK alice get back the same amount she staked if she would burn immediately
        sLyxToken.burn(alice, sLyxToken.balanceOf(alice), "");

        assertEq(sLyxToken.totalSupply(), 0);
        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(address(sLyxToken)), 1);
        assertEq(vault.balanceOf(alice), aliceStake - VAULT_ROUNDING_ERROR_LOSS);

        vm.stopPrank();
    }

    function test_UserReceivesSLYXAndBurnThemToConvertToStake() public {
        address existingUser = 0xC99Fe517d665c23035B050e13188eb4d7075C91d;
        uint256 userStake = vault.balanceOf(existingUser);
        uint256 userShares = vault.sharesOf(existingUser);

        vm.prank(existingUser);
        vault.transferStake(address(sLyxToken), userStake, "");

        assertEq(vault.balanceOf(existingUser), VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.balanceOf(address(sLyxToken)), userStake - VAULT_ROUNDING_ERROR_LOSS);

        uint256 userSLYXBalance = sLyxToken.balanceOf(existingUser);

        assertEq(sLyxToken.totalSupply(), userShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(userSLYXBalance, userShares - VAULT_ROUNDING_ERROR_LOSS);

        // transfer some SLYX to another user
        address alice = makeAddr("alice");
        uint256 amountToTransfer = 100 ether;
        // Check the user has enough SLYX to transfer
        assertLe(amountToTransfer, userSLYXBalance);

        vm.prank(existingUser);
        sLyxToken.transfer(existingUser, alice, amountToTransfer, true, "");

        assertEq(sLyxToken.balanceOf(existingUser), userSLYXBalance - amountToTransfer);
        assertEq(sLyxToken.balanceOf(alice), amountToTransfer);

        // Alice burns the SLYX to convert them to stake
        vm.prank(alice);
        sLyxToken.burn(alice, amountToTransfer, "");

        assertEq(sLyxToken.balanceOf(alice), 0);
        uint256 expectedLYXStake = sLyxToken.getNativeTokenValue(amountToTransfer);

        // not clear why there are 18 wei difference
        assertEq(vault.balanceOf(alice), expectedLYXStake - 18 wei);
    }

    function test_UserReceivesSLYXAndBurnThemToConvertToStakeAfterAccumulatingRewards() public {
        address existingUser = 0xC99Fe517d665c23035B050e13188eb4d7075C91d;
        uint256 userStake = vault.balanceOf(existingUser);
        uint256 userShares = vault.sharesOf(existingUser);

        vm.prank(existingUser);
        vault.transferStake(address(sLyxToken), userStake, "");

        assertEq(vault.balanceOf(existingUser), VAULT_ROUNDING_ERROR_LOSS);
        assertEq(vault.balanceOf(address(sLyxToken)), userStake - VAULT_ROUNDING_ERROR_LOSS);

        uint256 userSLYXBalance = sLyxToken.balanceOf(existingUser);

        assertEq(sLyxToken.totalSupply(), userShares - VAULT_ROUNDING_ERROR_LOSS);
        assertEq(userSLYXBalance, userShares - VAULT_ROUNDING_ERROR_LOSS);

        // transfer some SLYX to another user
        address alice = makeAddr("alice");
        uint256 sLyxAmountToTransfer = 100 ether;
        // Check the user has enough SLYX to transfer
        assertLe(sLyxAmountToTransfer, userSLYXBalance);

        vm.prank(existingUser);
        sLyxToken.transfer(existingUser, alice, sLyxAmountToTransfer, true, "");

        assertEq(sLyxToken.balanceOf(existingUser), userSLYXBalance - sLyxAmountToTransfer);
        assertEq(sLyxToken.balanceOf(alice), sLyxAmountToTransfer);

        uint256 exchangeRateBefore = sLyxToken.getExchangeRate();
        uint256 sLyxToLYXValueBefore = sLyxToken.getNativeTokenValue(sLyxAmountToTransfer);

        vm.roll(block.number + 1000);

        // simulate rewards +10 ethers
        uint256 validatorRewards = 10 ether;
        vm.deal(address(vault), validatorRewards + address(vault).balance);

        // periodical update
        vm.prank(VAULT_ORACLE);
        vault.rebalance();

        vm.roll(block.number + 1000);

        uint256 exchangeRateAfter = sLyxToken.getExchangeRate();
        uint256 sLyxToLYXValueAfter = sLyxToken.getNativeTokenValue(sLyxAmountToTransfer);

        // CHECK exchange rate increased
        assertGt(exchangeRateAfter, exchangeRateBefore);
        // CHECK value of sLYX increased
        assertGt(sLyxToLYXValueAfter, sLyxToLYXValueBefore);

        // CHECK alice get back more than same amount she staked if she would burn immediately
        vm.startPrank(alice);
        sLyxToken.burn(alice, sLyxToken.balanceOf(alice), "");

        // CHECK stake after burning increased
        assertEq(sLyxToken.balanceOf(alice), 0);
        assertEq(vault.balanceOf(alice), sLyxToLYXValueAfter - VAULT_ROUNDING_ERROR_LOSS);

        vm.stopPrank();
    }
}
