// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    uint256 a = 1 ether;
    // ** 表示次方的意思 10的9次方
    uint256 b = 10**9 * 1 gwei;
    uint256 c = 10**18 * 1 wei;

    function name() public view returns (bool) {
        // true
        return b == c;
    }

    function name1() public view returns (bool) {
        // true
        return a == c;
    }
}
