// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract constructors {
    uint public num1 = 4;
    uint public num2;

    constructor(uint _num2) {
        num1 = 100;
        num2 = _num2;
    }
}

// CONSTRUCTOR

/*
    constructor is a function
    we can able to pass arguments in the constructor
    we can change the values of state variables using constructor

    ** We can use only on constructor in a contract **
    ** Constructor was executed on start on deploy **
    ** A compiler was created a default constructor when the constructor is not exist in the contract **
*/
