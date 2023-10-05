// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract view_pure {
    uint public num;

    // To Write the State Vaniables => (NOTHING)
    function setter_1(uint _num) public {
        num = _num;
    }

    // To get or view the state variables => (VIEW)
    function getter() public view returns(uint) {
        return num;
    }

    // To Compute and return the value => (PURE)
    function setter_2() public pure returns(uint) {
        uint a = 10;
        uint b = 20;
        return a + b;
    }

    // To Change the state variable, compute and return => (NOTHING)
    function setter_3(uint _num1, uint _num2) public {
        num = _num1 + _num2;
    }

    // To get the values as local variables, compute and return => (PURE)
    function setter_4(uint _num1, uint _num2) public pure returns (uint) {
        uint num3 = _num1;
        uint num4 = _num2;
        return num3 + num4;
    }
}


// EXPLANATION
/*

    ** VIEW AND PURE FUNCTIONS **

    view and pure is functions to read and write the state variables

    Function type  |  read    |  write
    ---------------|----------|-----------
    nothing        |  no      |  yes
    ---------------|----------|-----------
    view           |  yes     |  no 
    ---------------|----------|-----------
    pure           |  no      |  no
    ---------------|----------|-----------

*/

/*
    use of pure function
    To compute and return a value of local variables in a function

*/