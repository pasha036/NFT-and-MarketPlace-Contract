pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract ClassNFT is ERC721 {
    string public name = "Class NFT";
    string public symbol = "CNFT";
    uint256 public totalSupply = 10000;

    constructor() public {
        _mint(msg.sender, 1);
    }

    function mint(address _to, uint256 _tokenId) public {
        _mint(_to, _tokenId);
    }

    function transferFrom(address _from, address _to, uint256 _tokenId) public {
        _transferFrom(_from, _to, _tokenId);
    }
}
