// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

/**
 * @title MyToken
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */


import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping(string => uint256) public itemPrices;
    mapping(address => mapping(string => uint256)) public itemsRedeemed;

    constructor() ERC20("Degen", "DGN") {
        itemPrices["guitar"] = 1000;
        itemPrices["piano"] = 2000;
        itemPrices["organ"] = 3000;
    }

    function redeemItem(string memory itemName) public {
        require(itemPrices[itemName] > 0, "Item not available for redemption");
        require(balanceOf(msg.sender) >= itemPrices[itemName], "Insufficient balance");

        burn(itemPrices[itemName]);
        itemsRedeemed[msg.sender][itemName] += 1;
        emit ItemRedeemed(msg.sender, itemName);
    }

    event ItemRedeemed(address indexed user, string itemName);

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public onlyOwner {
        _burn(owner(), amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(_msgSender(), to, amount);
        return true;
    }
}