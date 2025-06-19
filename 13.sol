// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    int256 a;
    uint256 b;

    function minUint8() public pure returns (uint8) {
        // 0
        return type(uint8).min;
    }

    function maxUint8() public pure returns (uint8) {
        // 127
        return type(uint8).max;
    }

    function minUint256() public pure returns (uint256) {
        // 0
        return type(uint256).min;
    }

    function maxUint256() public pure returns (uint256) {
        // 115792089237316195423570985008687907853269984665640564039457584007913129639935
        return type(uint256).max;
    }

    function minInt8() public pure returns (int8) {
        // -128
        return type(int8).min;
    }

    function maxInt8() public pure returns (int8) {
        // 127
        return type(int8).max;
    }
}
