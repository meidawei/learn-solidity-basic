// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    // 第一种声明方式，没有初始化
    uint256[] public sz1;
    // 第二种声明方式，顺便初始化了数据
    uint256[] public sz2 = [1, 2, 3];
    // 第三种声明方式，
    uint256[] public sz3 = new uint256[](3);

    constructor() {
        sz2.push(666);
        sz3.push(555);
        sz1.push(111);
    }

    // 定义一个操作按钮
    function name() public pure returns (uint256[] memory) {
        // 内存中的使用方式
        uint256[] memory sz4 = new uint256[](3);
        sz4[1] = 777;
        return sz4;
    }
}
