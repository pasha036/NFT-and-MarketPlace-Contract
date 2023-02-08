pragma solidity ^0.8.0;

contract Marketplace {
    address payable public feeCollector;
    uint256 public listingFee;
    ClassNFT public nftContract;

    constructor(address _nftContractAddress, uint256 _listingFee) public {
        nftContract = ClassNFT(_nftContractAddress);
        listingFee = _listingFee;
        feeCollector = msg.sender;
    }

    function listNFT(uint256 _tokenId) public payable {
        require(msg.value >= listingFee, "The listing fee has not been paid.");
        require(nftContract.ownerOf(_tokenId) == msg.sender, "You are not the owner of this NFT.");
        // Your code here to list the NFT
        feeCollector.transfer(msg.value);
    }
}
