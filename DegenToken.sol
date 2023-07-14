// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {

    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transferTokens(address _reciever, uint amount) external {
        require(balanceOf(msg.sender) >= amount, "you are not owner");
        approve(msg.sender, amount);
        transferFrom(msg.sender, _reciever, amount);
    }

    function checkBalance() external view returns(uint) {
        return balanceOf(msg.sender);
    }

    function burnTokens(uint amount) external {
        require(balanceOf(msg.sender) >= amount, "You do not have enough Tokens");
        _burn(msg.sender, amount);
    }

    function gameStore() public pure returns(string memory) {
        return "1. ProPlayer NFT value = 200\n2. SuperNinja value = 100\n3. DegenCap value = 75";
    }

    function redeemTokens(uint choice) external payable {
        require(choice <= 3, "Invalid selection.");

        // Redeem a ProPlayer NFT.
        if (choice == 1) {
            require(balanceOf(msg.sender) >= 200, "Insufficient balance.");
            approve(msg.sender, 200);
            transferFrom(msg.sender, owner(), 200);
        }

        // Redeem a SuperNinja NFT.
        else if (choice == 2) {
            require(balanceOf(msg.sender) >= 100, "Insufficient balance.");
            approve(msg.sender, 100);
            transferFrom(msg.sender, owner(), 100);
        }

        // Redeem a DegenCap NFT.
        else {
            require(balanceOf(msg.sender) >= 75, "Insufficient balance.");
            approve(msg.sender, 75);
            transferFrom(msg.sender, owner(), 75);
        }
    }
}
