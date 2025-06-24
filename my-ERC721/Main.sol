// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "IERC721.sol";
import "IERC721Metadata.sol";
import "IERC165.sol";

contract Name is IERC721, IERC721Metadata, IERC165 {
    /**
     * @dev 返回代币集合的名称。
     */
    function name() external view returns (string memory) {}

    /**
     * @dev 返回代币集合的符号。
     */
    function symbol() external view returns (string memory) {}

    /**
     * @dev 返回`tokenId`代币的统一资源标识符（URI）。
     */
    function tokenURI(uint256 tokenId) external view returns (string memory) {}

    /**
     * @dev 返回`owner`账户中的代币数量。
     */
    function balanceOf(address owner) external view returns (uint256 balance) {}

    /**
     * @dev 返回`tokenId`代币的拥有者。
     *
     * 要求：
     *
     * - `tokenId`必须存在。
     */
    function ownerOf(uint256 tokenId) external view returns (address owner) {}

    /**
     * @dev 安全地将`tokenId`代币从`from`转移到`to`。
     *
     * 要求：
     *
     * - `from`不能是零地址。
     * - `to`不能是零地址。
     * - `tokenId`代币必须存在且由`from`拥有。
     * - 如果调用者不是`from`，它必须已经通过{approve}或{setApprovalForAll}被授权移动此代币。
     * - 如果`to`指向一个智能合约，它必须实现{IERC721Receiver-onERC721Received}，在安全转移时调用。
     *
     * 触发一个{Transfer}事件。
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId,
        bytes calldata data
    ) external {}

    /**
     * @dev 安全地将`tokenId`代币从`from`转移到`to`，首先检查合约接收者是否了解ERC-721协议，以防止代币被永久锁定。
     *
     * 要求：
     *
     * - `from`不能是零地址。
     * - `to`不能是零地址。
     * - `tokenId`代币必须存在且由`from`拥有。
     * - 如果调用者不是`from`，它必须已经通过{approve}或{setApprovalForAll}被授权移动此代币。
     * - 如果`to`指向一个智能合约，它必须实现{IERC721Receiver-onERC721Received}，在安全转移时调用。
     *
     * 触发一个{Transfer}事件。
     */
    function safeTransferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external {}

    /**
     * @dev 将`tokenId`代币从`from`转移到`to`。
     *
     * 警告：注意调用者负责确认接收者能够接收ERC-721代币，否则它们可能会被永久丢失。使用{safeTransferFrom}可以防止丢失，尽管调用者必须理解这会增加一个外部调用，可能会创建重入漏洞。
     *
     * 要求：
     *
     * - `from`不能是零地址。
     * - `to`不能是零地址。
     * - `tokenId`代币必须由`from`拥有。
     * - 如果调用者不是`from`，它必须已经通过{approve}或{setApprovalForAll}被授权移动此代币。
     *
     * 触发一个{Transfer}事件。
     */
    function transferFrom(
        address from,
        address to,
        uint256 tokenId
    ) external {}

    /**
     * @dev 授权`to`转移`tokenId`代币到另一个账户。当代币转移时，授权将被清除。
     *
     * 一次只能授权一个账户，所以授权给零地址将清除之前的授权。
     *
     * 要求：
     *
     * - 调用者必须是代币的拥有者或被批准的操作员。
     * - `tokenId`必须存在。
     *
     * 触发一个{Approval}事件。
     */
    function approve(address to, uint256 tokenId) external {}

    /**
     * @dev 将`operator`作为调用者的操作员进行批准或移除。
     * 操作员可以调用{transferFrom}或{safeTransferFrom}来操作调用者拥有的任何代币。
     *
     * 要求：
     *
     * - `operator`不能是零地址。
     *
     * 触发一个{ApprovalForAll}事件。
     */
    function setApprovalForAll(address operator, bool approved) external {}

    /**
     * @dev 返回被批准管理`tokenId`代币的账户。
     *
     * 要求：
     *
     * - `tokenId`必须存在。
     */
    function getApproved(uint256 tokenId) external view returns (address operator) {}

    /**
     * @dev 返回`operator`是否被允许管理`owner`的所有资产。
     *
     * 见{setApprovalForAll}
     */
    function isApprovedForAll(address owner, address operator) external view returns (bool) {}

    /**
     * @dev 如果此合约实现了由 `interfaceId` 定义的接口，则返回 true。有关如何创建这些 ID 的更多信息，请参见相应的
     * https://eips.ethereum.org/EIPS/eip-165#how-interfaces-are-identified[ERC 部分]。
     *
     * 此函数调用必须消耗少于 30,000 gas。
     */
    function supportsInterface(bytes4 interfaceId) external view returns (bool) {}
}
