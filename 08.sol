// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 函数中可以有多个形参
contract My {
    event log(uint256 i);

    function name()
        public
        pure
        returns (
            uint256,
            bool,
            string memory x
        )
    {
        return (100, false, "hahaha");
    }

    function name2()
        public
        pure
        returns (
            uint256 a,
            bool b,
            string memory c
        )
    {
        b = false;
        a = 100;
        c = "walalal";
        // 即使没有返回值也不报错
    }
}
