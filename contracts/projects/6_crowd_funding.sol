// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract crowdFunding {
    address NGO;
    
    constructor () {
        NGO = msg.sender;
    }

    function giveFund () payable public {
        require(msg.value >= 1 ether, "You needs to give fund minimum 1 ether");
    }

    function getBalance() internal view returns (uint) {
        return address(this).balance;
    }

    function transferToOrphanage(address payable _orphanageAddress, uint _minEth) payable public {
        require(NGO == msg.sender, "You are not from that NGO");
        uint balanceEth = getBalance();
        require(balanceEth >= _minEth, "There is minimum balance");
        _orphanageAddress.transfer(balanceEth);
    }
}