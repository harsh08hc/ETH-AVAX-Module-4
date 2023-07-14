pragma solidity ^0.8.0;

contract DegenGamingToken is ERC20 {

    constructor(string memory name, string memory symbol) ERC20(name, symbol) {}

    // Mint new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Transfer tokens
    function transfer(address to, uint256 amount) public returns (bool) {
        return _transfer(msg.sender, to, amount);
    }

    // Redeem tokens for items
    function redeem(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    // Check token balance
    function balanceOf(address account) public view returns (uint256) {
        return _balances[account];
    }

    // Burn tokens
    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    address private owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can mint tokens");
        _;
    }

    function setOwner(address newOwner) public {
        require(msg.sender == owner, "Only the owner can change the owner");
        owner = newOwner;
    }

}
