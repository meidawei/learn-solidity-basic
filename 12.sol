// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    bool a = true;
    bool b = false;
    event log(uint256 x);

    function test1() public view returns (bool) {
        return !a;
    }

    function test2() public view returns (bool) {
        return a && b;
    }

    function test3() public view returns (bool) {
        return a || b;
    }

    function test4() public view returns (bool) {
        return a != b;
    }

    function test5() public view returns (bool) {
        return a == b;
    }

    function nameTrue() public returns (bool) {
        emit log(2);
        return true;
    }

    function nameFalse() public returns (bool) {
        emit log(3);
        return false;
    }

    // bool 表示返回值是 布尔类型
    function name() public returns (bool) {
        emit log(1);
        return nameFalse() && nameTrue();
    }

    function name2() public returns (bool) {
        emit log(1);
        return nameFalse() || nameTrue();
    }
}
