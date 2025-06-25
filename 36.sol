// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract DeleteArray {
    // 重置状态数组
    uint256[] public numbers;

    // 添加数组元素
    function addNumbers() public {
        numbers.push(1);
        numbers.push(2);
    }

    // 将数组重置，所有元素变为0，动态数组长度变为0
    function deleetNumbers() public {
        delete numbers;
    }

    // 重置内存数组
    function deleteMemoryArray() public pure returns (uint256[3] memory) {
        uint256[3] memory nums = [uint256(1), 2, 3];
        // 将所有元素重置为0，但是数组长度仍为3
        delete nums;
        return nums;
    }

    // 返回所有数组
    function all() public view returns (uint256[] memory) {
        return numbers;
    }

    // 长度
    function length() public view returns (uint256) {
        return numbers.length;
    }
}
