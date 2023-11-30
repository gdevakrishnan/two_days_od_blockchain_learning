// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CrowdFunding {
    address NGO;
    address payable[] donaters;

    constructor () {
        NGO = msg.sender;
    }

    function getToken() public payable {
        (msg.value >= 1 ether, "You needs to pay minimum 1 ether to donate");
    }

    function getBalance() internal view returns (uint){
        return address(this).balance;
    }

    function donate(address payable _orphanage, uint _minEther) payable public {
        require(NGO == msg.sender, "You are not the NGO");
        uint balance = getBalance();
        require(balance > _minEther, "There is minimum ether");
        _orphanage.transfer(_minEther);
        donaters = new address payable[](0);
    } 
}