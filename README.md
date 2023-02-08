# NFT-and-MarketPlace-Contract

The code creates an NFT contract on the Ethereum blockchain using the OpenZeppelin library and the ERC721 interface. The token is named "Class NFT" and has the symbol "CNFT". The total supply of the NFT is 10,000. The contract includes functions to mint new NFTs, transfer NFT ownership, and retrieve the name and symbol of the NFT.

The code also creates a marketplace contract where users can pay to list their NFT items. The listing fee is specified in the contract and the fee collector's address is also stored. The marketplace contract takes in the address of the NFT contract and the listing fee as parameters during construction. 

The contract includes a function to list NFT items, which requires payment of the listing fee and throws an error if the fee is not paid.
