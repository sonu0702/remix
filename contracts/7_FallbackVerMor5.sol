// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract FallBackDemo {
    uint public runtime;
    uint public recruntime;
    /* 
    * - When a sample CALLDATA value is sent since 
    * contract handle with any of the function `fallback`
    * function is executed
    * - This function cannot have arguments, cannot return 
    * anything and has to have external visibility. 
    */
    fallback () external {
        runtime = block.timestamp;
    }
    /* 
    * - receive ether function must be payable and external.
    * - When a empty CALLDATA value is supplied the `receive` 
    * is called
    */
    receive () external payable{
        recruntime = block.timestamp;
    }
}

//fallback
//receive
//Reference : https://blog.soliditylang.org/2020/03/26/fallback-receive-split/