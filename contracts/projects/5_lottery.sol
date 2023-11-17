// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Lottery {
    // Entitiew => Manager, Player, Winner

    address public manager;
    address payable[] players;
    address payable winner;

    constructor() {
        manager = msg.sender;
        // msg.sender is a global variable that returns the address of one who deploy this contract
    }

    function participate() public payable {
        require(msg.value == 1 ether, "Please Pay 1 Ether to participate");
        players.push(payable(msg.sender));

        // msg.sender carries the addres of the user one who call this function
        // To make that address as payable address
    }

    function getBalance() internal view returns (uint256) {
        require(manager == msg.sender, "You are not the manager");
        return address(this).balance;

        // Returns the balance of this contract
    }

    // TO CREATE A RNADOM FUNCTION
    function random() internal view returns (uint256) {
        return
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        players.length
                    )
                )
            );

        // abi => Application Binary Interface
        // block.difficulty regulates the difficulty of the miners to mine the block
    }

    function pickWinner() public {
        require(manager == msg.sender, "You are not the Manager");
        require(players.length >= 3, "The Players are less than 3");

        uint256 r = random();
        uint256 index = r % players.length;
        winner = players[index];
        winner.transfer(getBalance());
        players = new address payable[](0); // Re-initialze the players array back to zero
    }
}
