// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    uint256 public a;

    // payable 表示可以转账
    function save_money() public payable {
        a = a + msg.value;
    }

    function name2() public pure returns (uint256) {
        uint256 x = 0;
        for (uint256 i = 0; i <= 100; i++) {
            x += i;
        }
        return x;
    }

    function name3() public pure returns (uint256) {
        uint256 x = 0;
        for (uint256 i = 100; i != 0; i--) {
            x += i;
        }
        return x;
    }

    function name4() public pure returns (uint256) {
        uint256 x = 0;
        // 将x自增再返回x的值
        // 可以直接获取+1的值
        ++x;
        return x;
    }

    function name5() public pure returns (uint256) {
        uint256 x = 33;
        // 将x自增再返回x的值
        // 可以直接获取+1的值
        --x;
        return x;
    }

    function name6() public pure returns (int256) {
        int256 x = 33;
        // 一元减 只适用于有符号的整数 也就是int
        // uint或报错
        // 返回x的负数
        return -x;
    }
}
