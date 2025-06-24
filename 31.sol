// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Name {
    uint256 a = 1 seconds;
    uint256 b = 1 minutes;
    uint256 c = 1 hours;
    uint256 d = 1 days;
    uint256 e = 1 weeks;

    function name(uint256 _day) public pure returns (uint256) {
        return _day * 1 days;
    }
}
