// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
struct div{
    uint a;
}

contract My{
    // 第一种声明方式，没有初始化
    uint256[3] public sz1;
    // 第二种声明方式，顺便初始化数据
    uint256[3] public sz2 = [1,2,3];
    bool[] a;
    address[] b;
    bytes1[] c;
    div[] d;

    // 构造函数
    constructor(){
        sz1[0] = 10;
        sz1[1] = 20;
        sz1[2] = 30;
    }

    function name() public pure returns (uint256[3] memory){
        // 第三种声明方式，内存数组
        uint256[3] memory sz3 = [uint256(1),2,3];
        return sz3;
    }
}