// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    // 第一种声明方式，没有初始化
    uint256[] items;

    // 添加元素
    function addItem(uint256 _value) public {
        items.push(_value);
    }

    // 修改元素
    function updateItem(uint256 _index, uint256 _value) public {
        items[_index] = _value;
    }

    // 读取制定元素
    // 被删除元素获取不到
    function getItem(uint256 _index) public view returns (uint256) {
        return items[_index];
    }

    // 删除元素
    function delItem(uint256 _index) public {
        // [0,1,,2,3]
        // 被删除元素重置为0
        delete items[_index];
    }

    // 移除元素
    function popItemLast() public {
        items.pop();
    }

    // 长度
    function length() public view returns (uint256) {
        return items.length;
    }

    // 返回所有
    function all() public view returns (uint256[] memory) {
        return items;
    }
}
