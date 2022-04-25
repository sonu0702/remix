// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.11;

contract MyContract {
  event Log(address addr);

  constructor() public {
    emit Log(address(this));
  }

  function add(uint256 a, uint256 b) public pure returns (uint256) {
    return a + b;
  }
}
//Reference : https://medium.com/swlh/getting-deep-into-evm-how-ethereum-works-backstage-ab6ad9c0d0bf
