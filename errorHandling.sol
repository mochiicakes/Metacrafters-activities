// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken{

    constructor(){
        owner = msg.sender;
    }

    string public name = "world";
    string public symbol = "WRL";
    uint public totalSupply = 0;
    address public owner;

    event Mint(address indexed to, uint amount);
    event Burn(address indexed from, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);

    error InsufficientBalance(uint balance, uint withdrawAmount);

    mapping(address=> uint) public balances;

    modifier onlyOwner {
        assert(msg.sender == owner);
        _;
    }

    function mint(address _address, uint _value) public onlyOwner{
        totalSupply += _value;
        balances[_address] += _value;
        emit Mint(_address, _value);
    }

    function burn(address _address, uint _value) public onlyOwner{
        
        if (balances[_address] < _value){
            revert InsufficientBalance({balance: balances[_address], withdrawAmount: _value});
        }
        else{
        totalSupply -= _value;
        balances[_address] -= _value;
        emit Burn(_address, _value);
        }
    }

    function transfer(address _receiver, uint _value) public{
        require(balances[msg.sender] >= _value, "Insufficient Balance.");
        balances[msg.sender] -= _value;
        balances[_receiver] += _value;
        emit Transfer(msg.sender, _receiver, _value);
    }
}

