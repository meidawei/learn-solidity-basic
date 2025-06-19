// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    function name(uint8 _a, uint8 _b) public pure returns (uint8) {
        return _a & _b;
    }

    function name1(uint8 _a, uint8 _b) public pure returns (uint8) {
        return _a | _b;
    }

    function name2(uint8 _a, uint8 _b) public pure returns (uint8) {
        return _a ^ _b;
    }

    function name3(int8 _a) public pure returns (int8) {
        // 12
        // -13
        return ~_a;
    }
}
