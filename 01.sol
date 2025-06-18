// SPDX-License-Identifier: MIT
// 上面得注释如果不加会有报警提示
pragma solidity ^0.8.0;

// 可以定义多个合约
contract Name {

}

// 第一个合约
contract My {
    // 这里是声明一个合约的地方
    // 第一个变量
    string name = "Hello world";
    event log2(uint256 a1);

    // returns
    function getName() public returns (string memory) {
        uint256 a = 1;
        // emit是打印的意思
        // 打印出来
        emit log2(a);
        a = a + 10;
        emit log2(a);
        a = a + 20;
        emit log2(a);
        return name;
    }
}
