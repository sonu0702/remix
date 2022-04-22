// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title HelloWorld
 * @dev Implements simple hello world contract
 */
contract HelloWorld {
    uint public anumber;
    /**
     * @dev assign '_number' to anumber.
     * @param _number number which will be assigned to anumber.
     */
    function storeNumber(uint _number) public {
        anumber = _number;
    }
    /**
    * @dev return anumber.
    */
    function retrieveNumber()  public view returns (uint){
        return anumber;
    }
}