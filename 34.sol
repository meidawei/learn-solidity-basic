// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    uint256[][5] private  values;

    function name(uint256 index) public view returns (uint256) {
        return values[index].length;
    }

    constructor() {
        values[0] = [1, 2];
        values[1] = [1, 2, 3];
        values[2] = [1, 2, 3, 4];
        values[3] = [1, 2, 3, 4, 5];
        values[4] = [1, 2, 3, 4, 5, 6];
    }
}
