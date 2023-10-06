// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

contract address_datatype {
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;

    /*
    function getter() public view returns (address) {
        return addr;
    } 
    */
}

// ADDRESS DATATYPE
/*
    => Address data type have 160 bit values
    => We cannot perform arithmetic operation using address values in solidity
*/