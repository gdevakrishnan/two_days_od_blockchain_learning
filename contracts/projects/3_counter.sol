// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 < 0.9.0;

// Project - 3 - COUNTER
contract counter {
    uint count;

    modifier checkCount() {
        require(count >= 0 && count <= 10, "The count was exceeded");
        _;
    }

    function increment() public checkCount {
        count++;
    }

    function decrement() public checkCount {
        count--;
    }

    function getter() public view returns (uint) {
        return count;
    }
}