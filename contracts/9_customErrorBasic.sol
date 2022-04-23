// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.4;

error Unauthorized();
error UnauthorizedParams(uint available, uint required);
contract Test {
    function throwError() pure public {
        revert Unauthorized();
    }
    function throwErrorWithParameters() pure public {
        revert UnauthorizedParams({
            available : 3,
            required : 12
        });
    }
}
//reference : https://blog.soliditylang.org/2021/04/21/custom-errors/