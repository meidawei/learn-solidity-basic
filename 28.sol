// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address public owner;

    function Owner() public {
        owner = msg.sender;
    }

    // 检验是否是管理员
    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }
}
