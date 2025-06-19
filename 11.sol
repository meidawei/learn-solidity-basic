// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    string a = "Hello";
    string b = "World";
    string c = unicode"哈喽";
    string d = "hello";

    // 字符串拼接
    function name() public view returns (string memory) {
        return string(abi.encodePacked(a, "", b));
    }

    // 获取字符串长度
    function length() public view returns (uint256) {
        return bytes(a).length;
    }

    // 字符串对比
    function isEq() public view returns (bool) {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(d));
    }

    // 字符长度对比
    function isLength() public view returns (bool){
        return bytes(a).length == bytes(d).length;
    }
}