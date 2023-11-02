// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.21;

contract arrayStruct {
    struct Student {
        string Name;
        uint moibleNo;
        bool result;
    }

    Student[] public s;

    function setter(string memory _Name, uint _mobileNo, bool _result) public {
        s.push(Student(_Name, _mobileNo, _result));
    }
}