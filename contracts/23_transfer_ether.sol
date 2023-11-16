// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract transferEther {
    // This Function Can Recieve Ether To This Contract Account
    function sendEtherToContract() public payable {

    }

    // To View The Balance Of The Contract
    function contractBalance() public view returns (uint) {
        return address(this).balance;
    }

    // To Transfer Account From One Account To Another Account
    function setEther(address payable reciever) public payable {
        reciever.transfer(msg.value);
    }
}