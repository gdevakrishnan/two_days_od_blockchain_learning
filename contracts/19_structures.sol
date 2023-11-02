// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Structures {
    struct Student {
        string Name;
        uint mobileNo;
        bool result;
    }

    Student public s1;

    function setter(string memory _Name, uint _mobileNo, bool _result) public {
        // s1 = Student(_Name, _mobileNo, _result);
        // Alter

        s1.Name = _Name;
        s1.mobileNo = _mobileNo;
        s1.result = _result;
    }

    function getter() public view returns (Student memory) {
        return s1;
    }
}