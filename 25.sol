// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    function name(address _addr) public view returns (uint256) {
        // 返回账户余额
        return _addr.balance;
    }

    function name() public payable {
        require(msg.value == 5 ether, "is no money");
        // 定义一个6位数的数组
        address[5] memory adds;
        adds[0] = 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB;
        adds[1] = 0x617F2E2fD72FD9D5503197092aC168c91465E7f2;
        adds[2] = 0x17F6AD8Ef982297579C203069C1DbfFE4348c372;
        adds[3] = 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678;
        adds[4] = 0x03C6FcED478cBbC9a4FAB34eF9f40767739D1Ff7;
        for (uint256 i = 0; i < adds.length; i++) {
            address payable a = payable(adds[i]);
            a.transfer(1 ether);
        }
    }
}
