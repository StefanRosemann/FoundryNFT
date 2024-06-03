// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {FoundryNFT} from "../src/FoundryNFT.sol";

contract FoundryNFTTest is Test {
    function testFoundryNFT() public {
        FoundryNFT foundryNFT = new FoundryNFT();
        assertEq(foundryNFT.name(), "FoundryNFT");
    }

    function testMint() public {
        FoundryNFT foundryNFT = new FoundryNFT();
        uint256 ts = foundryNFT.totalSupply();

        foundryNFT.mint();
        assertEq(foundryNFT.totalSupply(), ts + 1);
    }

    function testIfStatement() public {
        FoundryNFT foundryNFT = new FoundryNFT();

        assertEq(foundryNFT.ifStatement(true), true);
        assertEq(foundryNFT.ifStatement(false), false);
    }
}
