// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    mapping(uint256 => uint256) public itemPrices;
    mapping(address => mapping(uint256 => bool)) public claimedItem;

    constructor(address initialOwner) ERC20("Degen", "DGN") Ownable(initialOwner) {
        // Initialize item prices in the constructor
        itemPrices[1] = 1500;
        itemPrices[2] = 2000;
        itemPrices[3] = 1000;
    }

    // Function to mint tokens (onlyOwner)
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Override ERC20 transfer function to add custom logic
    function transfer(address to, uint256 amount) public override returns (bool) {
        require(amount <= balanceOf(_msgSender()), "Insufficient balance");
        _transfer(_msgSender(), to, amount);
        return true;
    }

    // Burn tokens (anyone can burn their own tokens)
    function burn(uint256 amount) public {
        _burn(_msgSender(), amount);
    }

    // Return the in-game store information
    function store() public pure returns (string memory) {
        return "1. Folding Artifacts for 1500 2. Exclusive Skins for 2000 3. Venus Core Pool NFT for 1000";
    }

    // Redeem items from the in-game store
    function redeem(uint256 itemId) public {
        require(itemPrices[itemId] > 0, "Invalid item ID");
        require(balanceOf(_msgSender()) >= itemPrices[itemId], "Insufficient balance");
        require(!claimedItem[_msgSender()][itemId], "Item already claimed");

        // Transfer tokens to the contract owner (or another designated address)
        _transfer(_msgSender(), owner(), itemPrices[itemId]);
        claimedItem[_msgSender()][itemId] = true;
    }

    // Override the balanceOf function to provide accurate balance information
    function balanceOf(address account) public view override returns (uint256) {
        return super.balanceOf(account);
    }
}
