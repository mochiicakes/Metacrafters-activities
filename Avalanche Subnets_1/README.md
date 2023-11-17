# ERC-20 Token Vault and Token Contracts

This repository contains two Ethereum smart contracts written in Solidity:

1. **Vault.sol**: A simple token vault contract that allows users to deposit and withdraw ERC-20 tokens.

2. **ERC20.sol**: A basic ERC-20 token contract with functions for token transfers, approvals, minting, and burning.

## Deployment and Interaction

### Requirements

- [Remix IDE](https://remix.ethereum.org/)
- [Metamask](https://metamask.io/) browser extension

### Deploying the Contracts

1. Open Remix IDE in your web browser.

2. Copy and paste the content of `ERC20.sol` into a new file in Remix and deploy it as an ERC-20 token.

3. Copy and paste the content of `Vault.sol` into another file in Remix and deploy it, specifying the address of the ERC-20 token deployed in step 2.

### Interacting with the Contracts

1. Make sure Metamask is installed in your browser and connected to the Ethereum testnet or mainnet.

2. Interact with the deployed ERC-20 token contract to mint some tokens to your address.

3. Use the Vault contract to deposit and withdraw tokens. Connect your Metamask account and perform these actions through the Remix interface.

### Contract Addresses

Record the addresses of the deployed ERC-20 token and Vault contracts for future interactions.

### Testing

You can test the functionality of the contracts by using Remix's testing environment or writing additional tests using tools like Truffle or Hardhat.

## Disclaimer

This code is provided as-is without any warranties. Make sure to review and test thoroughly before deploying in a production environment.

Feel free to reach out for any questions or issues related to these contracts.
