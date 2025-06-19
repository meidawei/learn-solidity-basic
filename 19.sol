// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    // 0x00 16进制表示
    bytes1 public a = 0;
    // 0x01 16进制表示
    bytes1 public b = 0x01;
    // 0xff 16进制表示
    bytes1 public c = bytes1(uint8(255));
}
