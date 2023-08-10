// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract Token is ERC20 {

    constructor() ERC20("Foundry Template", "Foundry Template") {
    }

    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }
}
