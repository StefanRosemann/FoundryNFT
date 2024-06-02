// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract FoundryNFT is ERC721 {
	uint256 public totalSupply = 0;

	constructor() ERC721("FoundryNFT", "FNFT") {}
	
	function mint() external payable {
	   totalSupply++;
		_mint(msg.sender, totalSupply);
	}
}
