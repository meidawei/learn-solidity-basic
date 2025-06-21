// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Name {
    mapping(address => uint256) public balances;
    event log(uint256 i);

    function cun_kun() public payable {
        // 现在用户余额加上添加的存款数值
        balances[msg.sender] = balances[msg.sender] + msg.value;
    }

    function balance() public view returns (uint256) {
        // 获取地址的balance，即是余额
        address self = address(this);
        return self.balance;
    }

    function qu_kun(uint256 _amount) public {
        // 首先输入的值要小于余额，否则根本取不出来
        require(balance() >= _amount, "no enough money");
        require(balances[msg.sender] >= _amount, "no money pay");
        emit log(balance());
        emit log(balances[msg.sender]);
        address payable ap = payable(msg.sender);
        // 向_amount转账
        ap.transfer(_amount);
        balances[msg.sender] = balances[msg.sender] - _amount;
    }
}
