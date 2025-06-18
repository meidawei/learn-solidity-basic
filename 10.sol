// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    event log(uint256 i);

    function name(uint256 a) public returns (uint256) {
        // 当达到这个条件会报错
        // 会提示下面的信息
        require(a == 100, "a number is 100");
        uint256 x = 0;
        for (uint256 i = 0; i <= a; i++) {
            x += i;
        }
        emit log(x);
        return x;
    }
}
