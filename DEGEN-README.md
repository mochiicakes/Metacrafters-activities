# DegenToken Readme

This repository contains the source code for the DegenToken, a simple ERC-20 token with additional functionality for redeeming items. The token is implemented in Solidity, utilizing the OpenZeppelin library for ERC-20 and Ownable functionalities.

## Table of Contents
- [Introduction](#introduction)
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Deploying and Testing](#deploying-and-testing)
- [License](#license)

## Introduction

DegenToken is an ERC-20 token with some additional features. Users can redeem items by spending tokens, and the contract owner has the ability to mint and burn tokens.

## Features
ERC-20 Token: Implements the ERC-20 standard with additional functionality.
Item Redemption: Users can redeem items by spending tokens.
Mint and Burn: The contract owner can mint new tokens and burn existing tokens.
Prerequisites
Before you begin, ensure you have the following installed:
Node.js and npm
Hardhat - Ethereum development environment
OpenZeppelin Contracts - Ethereum smart contract library
Installation
Clone the repository:

## Prerequisites
Copy codegit clone https://github.com/yourusername/DegenToken.git``
Install dependencies:
``npm install``
Usage
The primary functionality of the DegenToken contract includes minting, burning, transferring, and redeeming items. For specific details, refer to the inline comments in the DegenToken.sol file.

## Deploying and Testing
Deploying and Testing
To deploy and test the contract, follow these steps:

Run Hardhat:
``npx hardhat node``
Deploy the contract:
``npx hardhat run scripts/deploy.js --network localhost``
Run tests:
``npx hardhat test``

## License
This contract is available under the MIT License.

