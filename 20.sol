// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    address public a = 0xa42b1378D1A84b153eB3e3838aE62870A67a40EA;

    // 把地址转换成可支付地址
    function name() public view returns (address payable) {
        // 0xa42b1378D1A84b153eB3e3838aE62870A67a40EA
        return payable(a);
    }

    // 把地址转换成数字
    function name2() public view returns (uint160) {
        // 937235114704645712581822031191316043069570826474
        return uint160(a);
    }

    // 把数字转换成地址
    function name3(uint160 _a) public pure returns (address) {
        // 0xa42b1378D1A84b153eB3e3838aE62870A67a40EA
        return address(_a);
    }

    // 把一个地址转换成字节类型
    function name4() public view returns (bytes20) {
        // 0xa42b1378d1a84b153eb3e3838ae62870a67a40ea
        return bytes20(a);
    }

    // 把字节类型转换成地址
    function name5(bytes20 _a) public pure returns (address) {
        // 0xa42b1378D1A84b153eB3e3838aE62870A67a40EA
        return address(_a);
    }
}
