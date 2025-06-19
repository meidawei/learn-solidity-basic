// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    function name() public pure returns (bool[6] memory) {
        // 1. 在内存中创建新数组
        bool[6] memory result = [true, false, true, false, true, false];

        // 2. 可以修改内存数组（因为是memory）
        result[1] = true; // ✅ 允许修改

        // 3. 返回内存数组（数据复制给调用者）
        return result;
    }
}
