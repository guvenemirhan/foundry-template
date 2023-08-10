// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.19;

import "forge-std/Test.sol";
import "../src/Token.sol";

contract TokenTest is Test {
    Token public token;

    function setUp() public {
        token = new Token();
    }

    function testMint() public {
        vm.prank(msg.sender);
        token.mint(1 ether);
        uint256 balance = token.balanceOf(msg.sender);
        assertEq(balance, 1 ether);
    }

}
