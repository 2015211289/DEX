pragma solidity >=0.8.0 <0.9.0;
// SPDX-License-Identifier: MIT

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Balloons is ERC20 {

    event BalloonsApproval(address sender, address spender, uint256 tokenAmount);

    constructor() ERC20("Balloons", "BAL") {
        _mint(msg.sender, 1000 ether); // mints 1000 balloons!
    }

    function approve(address spender, uint256 amount) public override returns (bool) {
        emit BalloonsApproval(msg.sender, spender, amount);
        return super.approve(spender, amount);
    }
}
