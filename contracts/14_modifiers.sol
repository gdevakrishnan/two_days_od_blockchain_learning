// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract modifiers {
    // Check odd or even below 100 (without modifier)
    /*
    function checkOdd (uint _num) public pure returns (bool) {
        require(_num < 100, "The Given is above 100");
        if (_num % 2 != 0) {
            return true;
        }   else {
            revert("The given number is even");
        }
    }

    function checkEven (uint _num) public pure returns (bool) {
        require(_num < 100, "The Given is above 100");
        if (_num % 2 == 0) {
            return true;
        }   else {
            revert("The Given number is odd");
        }
    }
    */


    // Check odd or even below 100 (with modifier)
    modifier _isLessThanHundred(uint _num) {
        require(_num < 100, "The Given is above 100");
        _;  // It ('_') replaces the remining code of the function
    }

    function checkOdd (uint _num) public pure _isLessThanHundred(_num) returns (bool) {
        if (_num % 2 != 0) {
            return true;
        }   else {
            revert("The given number is even");
        }
    }

    function checkEven (uint _num) public pure _isLessThanHundred(_num) returns (bool) {
        if (_num % 2 == 0) {
            return true;
        }   else {
            revert("The Given number is odd");
        }
    }
}

// Modifier

/*
    => Modifier is a function in solidity
    => Modifier reduce the repeatations of require statement
    => _; => The underscore replaces the remaining code of the function
    => If you needs to mention the modifier in a function.
       Add the modifier name next to the pure and view functions in the function declaration.
*/