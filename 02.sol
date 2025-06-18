// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// 定义一个合约
contract My {
    function name(uint256 a) public pure returns (string memory) {
        // solidity 中是没有 === 的，不像java和JavaScript
        if (a == 15) {
            // 而且一定要;结尾
            // 不像JavaScript那么随意
            return unicode"我们去吃中餐";
        } else if (a == 16) {
            return unicode"我们去吃西餐";
        } else {
            return unicode"我们去吃面条吧，太穷了~";
        }
    }
}
