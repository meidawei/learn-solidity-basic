// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    event log(uint256 i);

    // 1-100相加得出结果
    function name() public pure returns (uint256) {
        uint256 x = 0;
        uint256 i = 0;
        // do while 会至少执行第一次，即使第一次不满足条件
        do {
            i += 1;
            x += i;
        } while (i < 100);
        return x;
    }
}
