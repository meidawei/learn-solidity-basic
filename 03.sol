// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    event log(uint256 i);

    // 把1 + 2 + 3 + 4 + ... + 100 相加等于多少
    function name() public returns (uint256) {
        uint256 x = 0;
        for (uint256 i = 0; i <= 100; i++) {
            x += i;
            emit log(i);
        }
        // 5050
        emit log(x);
        return x;
    }
}