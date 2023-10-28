// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MyToken
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

contract OwOToken is ERC20 {
    constructor() ERC20("OwO", "OWO") {
        _mint(msg.sender, 100*10**decimals());
    }
        function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }
}