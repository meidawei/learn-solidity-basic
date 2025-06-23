// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    uint256 public value;

    function setValue(uint256 x) public {
        value = x;
    }

    function query() public view returns (address, address) {
        return (msg.sender, tx.origin);
    }

    function sq() public payable {}
}
