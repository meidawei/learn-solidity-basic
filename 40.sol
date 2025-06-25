// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Name {
    mapping(address => uint256) public values;

    receive() external payable {
        values[msg.sender] = values[msg.sender] + msg.value;
    }

    // 获取当前用户余额
    // 就是记录谁转账了多少钱，要填写转账用户地址
    function getValue(address adr) public view returns (uint256) {
        return values[adr];
    }

    // 获取合约余额
    function getValue() public view returns (uint256) {
        return address(this).balance;
    }
}
