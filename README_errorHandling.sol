# MyToken Smart Contract README

This repository contains the source code for the "MyToken" smart contract, a basic token contract written in Solidity. MyToken facilitates the creation, destruction, and transfer of tokens. Below, you'll find important information about this contract.

## Functionality of `assert()`, `require()`, and `revert()`

The "MyToken" smart contract uses the following error handling mechanisms: `assert()`, `require()`, and `revert()`. These mechanisms are crucial for enforcing conditions and providing informative error messages in the contract's functions.

- **`require()`:**
  - The `require()` statement is used to check input conditions and ensure that a function is only executed if certain conditions are met.
  - In this contract, `require()` is used in the `transfer` function to check if the sender has a sufficient balance before allowing the transfer. If the condition is not met, it throws an error message: "Insufficient Balance."

- **`assert()`:**
  - `assert()` is used for checking invariants that should never be violated. It indicates issues that should not occur during normal operation.
  - While not used in this contract, it's worth noting that `assert()` is typically used for internal error handling.

- **`revert()`:**
  - The `revert()` statement is used for custom error handling and provides a custom error message along with the option to revert a transaction.
  - In the "MyToken" contract, `revert()` is used in the `burn` function to indicate an "InsufficientBalance" error if the balance of the target address is lower than the amount to be burned.

These error handling mechanisms help in enforcing conditions, ensuring the safety and integrity of the contract, and providing feedback to users or developers when unexpected situations occur.
The "MyToken" contract is designed to be a simple token contract that allows the minting, burning, and transferring of tokens. It also includes the following functionalities:

- Minting new tokens: The owner of the contract can create and add new tokens to the total supply.

- Burning tokens: The owner can destroy tokens, effectively reducing the total supply.

- Transferring tokens: Users can transfer tokens between themselves, assuming they have a sufficient balance.

## Contract Details

- **License:** MIT License

- **Solidity Version:** 0.8.18

## Contract Variables and Functions

1. **Constructor**: The constructor sets the owner of the contract to the address that deploys the contract.

2. **Token Information**:
   - `name` and `symbol` represent the name and symbol of the token, respectively.
   - `totalSupply` tracks the total supply of tokens.
   - `owner` stores the address of the contract owner.

3. **Events**:
   - `Mint`: Emits when new tokens are minted.
   - `Burn`: Emits when tokens are burned (destroyed).
   - `Transfer`: Emits when tokens are transferred between addresses.

4. **Custom Error**:
   - `InsufficientBalance` is a custom error used to indicate that a user has an insufficient balance to perform a specific action.

5. **Balances Mapping**:
   - `balances` is a mapping that associates addresses with token balances.

6. **Modifier**:
   - `onlyOwner` is a modifier that restricts certain functions to only be callable by the contract owner.

7. **Minting Tokens**:
   - `mint`: This function allows the contract owner to mint and add new tokens to the total supply. It also increases the balance of the specified address.

8. **Burning Tokens**:
   - `burn`: The burn function allows the contract owner to destroy tokens, reducing the total supply. It includes a check for the balance of the target address to ensure that there are enough tokens to burn.

9. **Transferring Tokens**:
   - `transfer`: This function enables users to transfer tokens to another address. It checks if the sender has a sufficient balance before completing the transfer.

## Usage

To use the "MyToken" contract, you'll need to deploy it to a blockchain network that supports Solidity smart contracts. After deployment, the contract owner can mint new tokens, destroy tokens, and users can transfer tokens among themselves.

Please ensure that you are familiar with Ethereum and smart contract development before deploying and interacting with this contract.

## License

This contract is released under the MIT License. You can find the full license details in the source code (SPDX-License-Identifier: MIT).

**Note:** This README provides an overview of the "MyToken" smart contract. For detailed code and usage instructions, please refer to the source code provided in this repository.

