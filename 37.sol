// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract My {
    uint256[][5] public values;

    // 添加
    function addValue(uint256 _index, uint256 _value) public {
        values[_index].push(_value);
    }

    // 更新整个数组
    function updateValue(uint256 _index, uint256[] memory _value) public {
        values[_index] = _value;
    }

    // 更新单个值
    function updateValue(
        uint256 _index1,
        uint256 _index2,
        uint256 _value
    ) public {
        values[_index1][_index2] = _value;
    }

    // 删除整个数据
    function delValue(uint256 _index1) public {
        delete values[_index1];
    }

    // 删除单个数据
    function delValue(uint256 _index1, uint256 _index2) public {
        delete values[_index1][_index2];
    }

    // 返回整个数组
    function getValue(uint256 _index1) public view returns (uint256[] memory) {
        return values[_index1];
    }

    // 返回单个值
    function getValue(uint256 _index1, uint256 _index2)
        public
        view
        returns (uint256)
    {
        return values[_index1][_index2];
    }

    // 长度
    function length(uint256 _index1) public view returns (uint256) {
        return values[_index1].length;
    }
}
