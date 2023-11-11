//SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

// Useful for debugging. Remove when deploying to a live network.
import "hardhat/console.sol";

// Use openzeppelin to inherit battle-tested implementations (ERC20, ERC721, etc)
// import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * A smart contract that allows changing a state variable of the contract and tracking the changes
 * It also allows the owner to withdraw the Ether in the contract
 * @author BuidlGuidl
 */
contract YourContract {
	address public sardius = 0xfc7125cCbb19A4F89Ae0dCb42afb6eB5d51eCd71;

	mapping(address => uint256) public balance;

	constructor() {
		balance[msg.sender] = 47;
	}

	function transfer(address _to, uint256 amount) public {
		require(balance[msg.sender] >= amount, "Insufficient balance.");
		balance[msg.sender] -= amount;
		balance[_to] += amount;
	}
}
