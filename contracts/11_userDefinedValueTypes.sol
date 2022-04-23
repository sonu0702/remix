// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.8;

contract test {
    type Price is uint128;
    type Quantity is uint128;
}

type Decimal18 is uint256;

interface MinimalERC20 {
    function transfer(address to , Decimal18 value) pure external;
}


// Represent a 18 decimal, 256 bit wide fixed point type
// using a user defined value type.
type UFixed is uint256;

library UFixeder {
        uint constant multiplier = 10**18;

    /// Adds two UFixed numbers. Reverts on overflow, 
    /// relying on checked arithmetic on uint256.
    function add(UFixed a , UFixed b) pure public returns(UFixed){
        return UFixed.wrap(UFixed.unwrap(a) + UFixed.unwrap(b));
    }

    /// Turns a uint256 into a UFixed of the same value.
    /// Reverts if the integer is too large.
    function toUFixed(uint256 a) internal pure returns (UFixed) {
        return UFixed.wrap(a * multiplier);
    }
}

//reference : https://blog.soliditylang.org/2021/09/27/user-defined-value-types/