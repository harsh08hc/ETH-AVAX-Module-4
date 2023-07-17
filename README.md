Certainly! Here's an example README file for the `DegenToken` contract you provided:

# DegenToken

DegenToken is an ERC20 token contract that allows users to mint, transfer, burn tokens, and redeem tokens for non-fungible tokens (NFTs). The contract includes functionality for managing NFT types, limits, and claiming.

## Table of Contents
- [Prerequisites](#prerequisites)
- [Deployment](#deployment)
- [Usage](#usage)
  - [Minting Tokens](#minting-tokens)
  - [Transferring Tokens](#transferring-tokens)
  - [Burning Tokens](#burning-tokens)
  - [Redeeming Tokens](#redeeming-tokens)
  - [Checking Token Balance](#checking-token-balance)
  - [NFT Statistics](#nft-statistics)

## Prerequisites

- Solidity ^0.8.18
- OpenZeppelin Contracts v4.4.0

## Deployment

1. Install the necessary dependencies using the following command:
   ```bash
   npm install @openzeppelin/contracts
   ```

2. Compile the Solidity contract `DegenToken.sol` using a Solidity compiler.

3. Deploy the contract to the desired network (e.g., Avalanche) using a suitable deployment tool like Hardhat, Truffle, or Remix IDE.

## Usage

### Minting Tokens

The `mint` function allows the contract owner to create and distribute new tokens.

```solidity
function mint(address to, uint256 amount) public onlyOwner
```

To mint new tokens, provide the recipient's address (`to`) and the desired token amount (`amount`) as function arguments.

### Transferring Tokens

Users can transfer their tokens to other addresses using the `transferTokens` function.

```solidity
function transferTokens(address recipient, uint256 amount) external
```

To transfer tokens, call the `transferTokens` function and provide the recipient's address (`recipient`) and the token amount (`amount`) to be transferred.

### Burning Tokens

Any token holder can burn their tokens using the `burnTokens` function.

```solidity
function burnTokens(uint256 amount) external
```

To burn tokens, call the `burnTokens` function and specify the token amount (`amount`) to be burned.

### Redeeming Tokens

Users can redeem their tokens for non-fungible tokens (NFTs) using the `claimNFT` function.

```solidity
function claimNFT(NFTType nftType) external
```

To redeem an NFT, call the `claimNFT` function and provide the desired `nftType`. The available NFT types are defined in the `NFTType` enumeration.

### Checking Token Balance

The `checkBalance` function allows users to check their token balance.

```solidity
function checkBalance() external view returns(uint256)
```

Calling the `checkBalance` function will return the token balance of the caller.

### NFT Statistics

The contract provides functions to retrieve statistics about the NFTs.

```solidity
function getNFTClaimed(address recipient) external view returns (NFTType)
```

The `getNFTClaimed` function returns the type of NFT claimed by a given `recipient` address.

```solidity
function getNFTStats(NFTType nftType) external view returns (uint256, uint256, uint256)
```

The `getNFTStats` function returns the value, limit, and claimed count of a specific `nftType` NFT.

## License

This contract is released under the [MIT License](https://opensource.org/licenses/MIT).


### Video Walkthrough



## Author
  
Harsh Chaudhary
