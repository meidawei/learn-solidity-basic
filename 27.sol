// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My{
    modifier modifierName(){
        // 注意这里可以访问参数，但不可以修改参数，修改了参数，对下面的逻辑也不生效
        // 修饰符的逻辑
        _;
    }
}