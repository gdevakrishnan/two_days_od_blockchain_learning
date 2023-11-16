// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract globalVariables {
    // msg.sender
    // block.timestamp

    function callerAddress() public view returns(address) {
        return msg.sender;  // Returns the senders address (who call this function)
    }

    function returnBlockTime() public view returns (uint) {
        return block.timestamp; //Returns the timestamps (since jan 1, 1970)
    }
}