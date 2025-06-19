// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    // 向指定账户转账 1 ether
    function name(address _addr) public payable {
        address payable ap = payable(_addr);
        // 意思就是符合条件的话，返回提示信息
        require(msg.value == 1 ether, "message");
        // msg.sender 向 ap 的地址发送以太币
        ap.transfer(msg.value);
    }

    // 向指定账户转账 10 gei
    function name2(address _addr) public payable {
        address payable a = payable(_addr);
        require(msg.value == 10 gwei, "message");
        a.transfer(msg.value);
    }

    // 向指定账户转账10wei
    function name3(address _addr) public payable {
        address payable ap = payable(_addr);
        require(msg.value == 10 wei, "message");
        ap.transfer(msg.value);
    }

    // 向指定账户转账 1 Fineey 以太币
    // 0.001 Ether 相当于 1 Fineey
    // Fineey 是一个人名,在Solidity中没有收录这个单位
    // 更多是纪念意义
    function name4(address _addr) public payable {
        address payable ap = payable(_addr);
        require(msg.value == 0.001 ether, "message");
        ap.transfer(msg.value);
    }
}
