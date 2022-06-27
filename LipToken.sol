// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract LipToken is ERC721, Ownable {

    uint256 counter = 1;

    constructor(string memory _name, string memory _symbol)
    ERC721(_name, _symbol)
    {}
  
    function mintNFT(address _to)  public onlyOwner() {
      _safeMint(_to, counter);
      counter++;
  }

}