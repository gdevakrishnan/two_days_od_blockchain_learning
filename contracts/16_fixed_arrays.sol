// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract fixed_array {
    uint[4] myArr = [10, 20, 30, 40];

    function getter() public view returns (uint[4] memory) {
        return myArr;
    }

    function setter(uint _index, uint _value) public {
        myArr[_index] = _value;
    }
}