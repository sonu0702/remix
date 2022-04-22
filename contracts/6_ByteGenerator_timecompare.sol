// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
/// @title Voting with delegation.
contract Bytegenerator {
    uint public times;
    function getbytes() pure public returns (bytes32[3] memory b32Arr) {
        b32Arr = [bytes32("prop1"), bytes32("prop2"), bytes32("prop3")];
        return b32Arr;
    }
    function gettime()  public returns (uint) {
        times = block.timestamp;
        return block.timestamp;
    }
    function hasItBeen() view public returns (bool) {
        uint nummin = block.timestamp;
        uint existingmin =  times;
        bool newval =(nummin - existingmin) > 1 minutes;
        return newval;
    }
}
//['0x70726f7031000000000000000000000000000000000000000000000000000000','0x70726f7032000000000000000000000000000000000000000000000000000000','0x70726f7033000000000000000000000000000000000000000000000000000000']