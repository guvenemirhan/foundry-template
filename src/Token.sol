// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import {ERC20} from "openzeppelin-contracts/contracts/token/ERC20/ERC20.sol";


contract Token is ERC20 {

    constructor() ERC20("Foundry Template", "Foundry Template") {
    }

    function mint(uint256 amount) external {
        _mint(msg.sender, amount);
    }
}
