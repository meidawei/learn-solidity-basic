// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    function name() public view returns (uint256) {
        // 返回当前账户的余额 wei为单位
        //  59999999999978286926
        return msg.sender.balance;
    }

    // 收款人:_adr
    // 扣款人:msg.sender 消息调用者

    function name2(address _adr) public payable {
        // 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
        address payable a = payable(_adr);
        a.transfer(msg.value);
    }

    // 收款人：_adr
    // 扣款人：msg.sender 消息调用者
    function name3(address _adr) public payable {
        address payable a = payable(_adr);
        // 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2
        // 是否成功
        bool b = a.send(msg.value);
        require(b);
    }
}
