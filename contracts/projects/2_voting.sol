// SPDX-License-Identifier: GPL-3.0

pragma solidity >= 0.7.0 < 0.9.0;

contract voting {
    uint public age;    // Voters age
    uint party1Count;
    uint party2Count;

    function setter(uint _age) public {
        age = _age;
    }

    /*
    constructor (uint _age) {
        age = _age;
    }
    */

    function party1() public {
        require(age >= 18, "Not Eligible to vote");
        party1Count += 1;
    }

    function party2() public {
        require(age >= 18, "Not Eligible to vote");
        party2Count += 1;
    }

    function winner() public view returns (string memory) {
        if (party1Count > party2Count) {
            return "Party 1 was won the election";
        }   else {
            return "Party 2 was won the election";
        }
    }
}