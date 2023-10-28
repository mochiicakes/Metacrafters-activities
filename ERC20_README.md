# OwOToken (ERC-20 Token)

## Overview

OwOToken is an ERC-20 token smart contract deployed on the Ethereum blockchain. It provides the basic functionality of a fungible token, allowing users to transfer, mint, and burn tokens. The contract also includes a `onlyOwner` restriction for certain functions to maintain control.

## Features

- **Name:** OwOToken
- **Symbol:** OWO
- **Decimals:** 18
- **Total Supply:** 100 Tokens

## Usage

### Minting Tokens
The contract owner (typically the deployer) has the ability to mint new tokens. Minting allows the creation of additional tokens and increases the total supply.

#### Function:

solidity
```function mint(address to, uint256 amount) public onlyOwner```

`to`: The address to receive the newly minted tokens.
`amount`: The amount of tokens to mint.

### Burning Tokens
Users can burn (destroy) their own tokens, which reduces the total supply.

#### Function:
```function burn(uint256 amount) public```
`amount`: The amount of tokens to burn.

### Transferring Tokens
Users can transfer their tokens to other addresses.

#### Function:
```function transfer(address to, uint256 value) public returns (bool)```
`to`: The recipient's address.
`value`: The amount of tokens to transfer.

### Getting Started
Deploy the OwOToken contract on the Ethereum blockchain.
Connect your Ethereum wallet to the contract owner's address.
Use the provided functions to mint, burn, and transfer tokens.

###License
This contract is available under the MIT License.
