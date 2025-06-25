// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    // 存储参与者是否已投票的数组
    bool[] public hasVoted;
    address[] public adds;

    // 构造函数，初始化参与者数量
    constructor(uint256 _numVoters) {
        // 这个项目，如果3个人投票，就需要3个投屏
        // 投票 true = 已投票 false = 没有投票
        hasVoted = new bool[](_numVoters);
        // 同时初始化投票地址
        adds = new address[](_numVoters);
    }

    // 参与者投票
    function vote(uint256 voterId) public {
        // 检查 数组没有越界
        require(voterId < hasVoted.length, "Invaild voter ID");
        // 如果已经投票 返回
        require(!hasVoted[voterId], "Voter has already voted");
        // 记录投票信息
        // 标记为已投票
        hasVoted[voterId] = true;
        adds[voterId] = msg.sender;
    }
}
