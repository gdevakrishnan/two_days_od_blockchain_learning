// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Voting {
    uint age;
    uint party1;
    uint party2;
    bool check;

    modifier isValid {
        require(check, "Please validate your age");
        _;
    }

    // constructor (uint _age) {
    //     age = _age;
    // }

    function setter(uint _age) public {
        age = _age;
    }

    function validate() public {
        require(age >= 18, "You are not eligible to vote");
        check = true;
    }

    function vote_party1() public isValid {
        party1 += 1;
    }

    function vote_party2() public isValid {
        party2 += 1;
    }

    function winner() public view returns (string memory) {
        if (party1 > party2) {
            return "Party 1 won the election";
        }   else {
            return "Party 2 won the election";
        }
    }
}