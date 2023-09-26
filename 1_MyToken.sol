// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title MyToken
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract MyToken {
    string public name;
    string public symbol;
    uint256 public totalSupply;

    mapping(address => uint256) public balances;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Mint(address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    address public owner;

    constructor(string memory _name, string memory _symbol, uint256 _initialSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _initialSupply;
        balances[msg.sender] = _initialSupply;
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;
    }

    receive() external payable {
    }

    function mint(address _to, uint256 _value) public onlyOwner {
        require(_to != address(0), "Invalid address");
        require(_value > 0, "Value must be greater than zero");

        totalSupply += _value;
        balances[_to] += _value;
        emit Mint(_to, _value);
        emit Transfer(address(0), _to, _value);
    }

    function burn(address _from, uint256 _value) public onlyOwner {
        require(_from != address(0), "Invalid address");
        require(balances[_from] >= _value, "Insufficient balance");
        require(_value > 0, "Value must be greater than zero");

        totalSupply -= _value;
        balances[_from] -= _value;
        emit Burn(_from, _value);
        emit Transfer(_from, address(0), _value);
    }
}