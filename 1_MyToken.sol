// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title MyToken
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

 /*
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
*/

contract MyToken {
    string public tName;
    string public symb;
    uint256 public tSupply;

    mapping(address => uint256) public balances;

    constructor(string memory _tName, string memory _symb, uint256 _initSupply) 
    {
        tName = _tName;
        symb = _symb;
        tSupply = _initSupply;
        balances[msg.sender] = _initSupply;
    }

    receive() external payable {
    }

    function mint(address _to, uint256 _value) public {
        tSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint256 _value) public {
        tSupply -= _value;
        balances[_from] -= _value;
    }
}
