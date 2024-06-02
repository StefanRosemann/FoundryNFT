// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {FoundryNFT} from "../src/FoundryNFT.sol";

contract FoundryNFTScript is Script {
    function setUp() public {}

    function run() public {
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        address account = vm.addr(privateKey);

        console.log("ACCOUNT", account);

        vm.startBroadcast(privateKey);
        FoundryNFT foundryNFT = new FoundryNFT();
        foundryNFT.mint();
        vm.stopBroadcast();
    }
}

// source .env
// forge script script/FoundryNFT.s.sol:FoundryNFTScript --rpc-url $SEPOLIA_RPC_URL --etherscan-api-key $ETHERSCAN_KEY --broadcast --verify -vvvv
