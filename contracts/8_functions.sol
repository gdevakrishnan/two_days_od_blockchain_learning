// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// FUNCTIONS IN SOLIDITY
contract functions {
    uint public num;    // state variable (visible to the user using public)
    uint abc;   // state variable (does not visible to the user)

    /*
        the above variable in line 6. Is a public state variable.
        It is not only a state variable. The solidity makes the num as a getter function
    */

    /*
        abc is not a public variable
    */
       
    function setter(uint _num) public {
        // _num => is argument passed during the run time
        num = _num;

        // this setter function changes the state of num variable
    }

    function getter() public view returns (uint) {
        return num;
    }
}

/*
    SYNTAX

    function function_name(arguments) visibility_specifier returns(datatype of return) {
        ...statements
    }

*/
