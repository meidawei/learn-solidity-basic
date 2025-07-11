// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    event log(uint256 i);

    function name() public returns (uint256) {
        uint256 x = 0;
        uint256 i = 0;
        while (i < 100) {
            i += 1;
            x += i;
            emit log(x);
        }
        // 5050
        return x;
    }
}
