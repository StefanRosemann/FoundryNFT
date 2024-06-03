// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/// @title FoundryNFT: a test contract to play around with an ERC721 aka NFT
/// @author Part of the solidity course by rare skills https://www.rareskills.io/learn-solidity
/// @notice You can find it in the section "Launch and verify an NFT in foundry"
/// @dev This is sandbox level at the very beginning :)
/// @custom:experimental Not for professional use.
contract FoundryNFT is ERC721 {
    /// @notice totalSupply counts the amount of "minted coins" initiliezd by zero
    /// @notice neither the possibility to burn nor already burned coins are ever taken into account
    uint256 public totalSupply = 0;

    /// @notice Uses the Constructor of the super contract ERC721 by openzepplin library
    /// @notice Fixes the name of the contract to "FoundryNFT" and the symbol to "FNFT"
    constructor() ERC721("FoundryNFT", "FNFT") {}

    /// @notice Creates a NFT for the caller of the function mint.
    /// @dev reverts if msg.sender already has such a token.
    function mint() external payable {
        // you can add a price check here if you like
        totalSupply++;
        _mint(msg.sender, totalSupply);
    }

    /// @notice Useless function expect for testing branches
    function ifStatement(bool b) public pure returns (bool) {
        if (b) {
            return b;
        } else {
            return b;
        }
    }
}
