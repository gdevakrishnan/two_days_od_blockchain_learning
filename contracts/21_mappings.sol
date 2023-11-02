// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Mappings {
    // mapping(key => value)
    /*
    mapping(uint => bool) public result;


    function setter(uint _rollno, bool _result) public {
        result[_rollno] = _result;
    }
    */

    // Nested Mapping

    struct Student {
        string Name;
        uint mobileNo;
        bool pass;
    }

    mapping (uint => Student) public result;

    function setter(uint _rollNo, string memory _Name, uint _mobileNo, bool _pass) public {
        result[_rollNo] = Student(_Name, _mobileNo, _pass);
    }
}