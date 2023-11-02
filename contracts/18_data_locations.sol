// SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

contract myContract {
    uint[5] public arr = [12, 23, 34, 45, 56]; // storage

    function fmemory() public view {
        uint[5] memory arr1 = arr;
        arr1[0] = 90;   // It does not affects the state variable
    }

    function fstorage() public {
        uint[5] storage arr2 = arr;
        arr2[0] = 90;   // It affects the state variable
                        // arr2 act as a pointer to arr
    }
}

/*
    Reference data types are required to mention the data location, so we use
    => Memory
    => Calldata
    => Storage
*/

// MEMORY
/*
    => We can use it in anywhere in the function like FUNCTION ARGUMENTS AND RETURNS PARAMETERS
    => The function argument values are MUTABLE
*/

// CALLDATA
/*
    => We fcan use it only in FUNCTION ARGUMENTS
    => The function argument values are IMMUTABLE
*/

// STORAGE
/*
    => The state variable area is a storage
    => The storage is a datalocation to create a pointer variable to state variables
        to change the state variables 
*/