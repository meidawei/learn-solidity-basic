// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    // ==
    function name() public payable {
        require(msg.value == 1 ether, "message");
    }

    // <=
    function name2() public payable {
        require(msg.value <= 1 ether, "message");
    }

    // <
    function name3() public payable {
        require(msg.value < 1 ether, "message");
    }

    // !=
    function name4(uint256 _amont) public payable {
        require(msg.value != _amont, " message");
    }

    // >=
    function name5(uint256 _amont) public payable {
        require(msg.value >= _amont, " message");
    }

    // >
    function name6(uint256 _amont) public payable {
        require(msg.value > _amont, " message");
    }

    // >1
    function name7(uint256 _amont) public pure {
        require(_amont > 1, "message");
    }
}
