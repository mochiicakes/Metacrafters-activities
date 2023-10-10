# 1_MyToken.md

is a simple program which shows a simple structure in creating a Solidity Contract. This involves creating a Token, a straightforward minting mechanic and burning mechanic as a requirement for this assessment.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The assessment has the following requirements:
REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.

### Executing program

To run this program, Remix online IDE is used: https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

```javascript
// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

/**
 * @title MyToken
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract MyToken {
    string public tokenName = "META";
    string public tokenAbbrv = "MTA";
    uint public totalSupply = 0;

    mapping(address => uint) public balances;

    function mint(address _address, uint256 _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    function burn(address _address, uint256 _value) public {
        if (balances[_address] >= _value){
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to any compiler along >=0.8.2 <0.9.0 and click on the "Compile and Run script" button.

Upon compiling, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar and selecting your latest and present contract from the dropdown menu, and then click on the "Deploy" button.

After deploying, you can interact with it by any of the following methods:
1. Minting - fill in parameters _from address, and a corresponding value and click on transact.
2. Burning - fill in parameters _to address, and a corresponding value and click on transact.
3. balances by filling it with either the contract address (gas cost applies), the _to address, or the _from address.
