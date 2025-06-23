// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract MyToken is ERC20, ERC20Permit {
    constructor() ERC20("MyToken", "MTK") ERC20Permit("MyToken") {
        // 创建新代币并分配给指定地址
        // msg.sender：合约部署者的地址。
        // 10000 * 10 ** 18：铸造 10,000 个完整代币（假设代币精度为 18 位小数）。
        _mint(msg.sender, 10000 * 10**18);
    }
}
