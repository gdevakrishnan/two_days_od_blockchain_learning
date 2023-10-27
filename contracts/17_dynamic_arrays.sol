// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract dynamic_array {
    uint[] myArr;

    function insert(uint _num) public {
        myArr.push(_num);
    }

    function popElement() public {
        myArr.pop();
    }

    function getLength() public view returns (uint) {
        return myArr.length;
    }

    function getter() public view returns (uint[] memory) {
        return myArr;
    }
}