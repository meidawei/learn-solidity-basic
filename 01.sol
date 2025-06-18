// 从这里开始声明一个合约
pragma solidity ^0.8.0;
// SPDX-License-Identifier: MIT

// 声明一个合约
contract My {
    // 合约逻辑

    // 第一个变量
    string name = "Hello, World!";

    function getName() public view returns (string memory) {
        return name;
    }
}