// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract variables {
    uint public num = 20;   // state variable

    function local() public pure returns (uint) {
        uint a = 20;    // local variable
        uint b = 30;    // local variable
        return  a+b;
    }
}

/*
    SPDX - Software Package Data Exchange
    GPL-3.0 - GNU for General Public License v3.0
*/

/*

    State Variable:
        consume Gas
        stores data permenently
        declared outside of the function
        cost expensive
    
    local variable:
        does not consume gas
        does not store data permenently
        declated inside of the function
        free

*/