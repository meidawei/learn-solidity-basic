// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    event log(uint256 i);

    // 1-100相加得到5050
    function name() public returns (uint256) {
        uint256 x = 0;
        uint256 i = 0;
        // while意思就是满足条件就会向下执行
        while (i < 100) {
            i += 1;
            if (i == 50) {
                // 相当于等于50不执行操作
                // 但是又不阻塞下一步操作
                // 估计最后得出来的结果是5000
                continue;
            }
            x += i;
        }
        // 5000
        emit log(x);
        return x;
    }
}
