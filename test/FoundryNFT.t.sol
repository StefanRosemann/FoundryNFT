// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FoundryNFT} from "../src/FoundryNFT.sol";

contract FoundryNFTTest is Test {
    //FoundryNFT public foundryNFT;

    function testFoundryNFT() public {
        FoundryNFT foundryNFT = new FoundryNFT();
        assertEq(foundryNFT.name(), "FoundryNFT");
    }
    
    function testMint() public {
        FoundryNFT foundryNFT = new FoundryNFT();
        foundryNFT.mint();
        assertEq(foundryNFT.totalSupply(), 1);
    }
}
