// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 1-100递增得到结果
contract My {
    function name() public pure returns (uint256) {
        uint256 x = 0;
        uint256 i = 0;
        while (i < 100) {
            // 如果遇到break则跳出循环，不再自增下去
            i += 1;
            x += i;
            if (x > 50) {
                break;
            }
        }
        // 55
        return x;
    }
}
