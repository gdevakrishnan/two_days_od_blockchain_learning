// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract globalVariables {
    // msg.sender
    // block.timestamp

    function callerAddress() public view returns(address) {
        return msg.sender;
    }

    function returnBlockTime() public view returns (uint) {
        return block.timestamp;
    }
}