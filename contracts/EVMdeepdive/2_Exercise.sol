pragma solidity ^0.5.11;

import {MyContract} from "./1_Exercise.sol";

contract AnotherContract {
  MyContract public myContract;
  constructor() public {
    myContract = new MyContract();
  }
}