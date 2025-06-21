// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 构造函数可以在其他合约中直接生成对象调用
// 可以在一份代码中声明多个合约
contract NameMain {
    uint256 public value;

    function setValue(uint256 _value) public {
        value = _value;
    }

    function getValue() public view returns (uint256) {
        return value;
    }
}

contract NameSub {
    // 利用前面合约的构造函数声明对象
    // 可以直接使用对象里面的方法
    NameMain public main;

    // 构造函数
    constructor() {
        main = new NameMain();
    }

    function setValue(uint256 _value) public {
        main.setValue(_value);
    }

    function getValue() public view returns (uint256) {
        return main.getValue();
    }
}
