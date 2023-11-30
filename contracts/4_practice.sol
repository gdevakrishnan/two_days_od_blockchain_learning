// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract lottery {
    address manager;
    address payable[] players;
    address payable winner;

    constructor() {
        manager = msg.sender;
    }

    function participate() public payable {
        require(manager == msg.sender, "You are not a manager");
        require(
            msg.value == 1 ether,
            "You needs to pay minimum 1 ether to participate"
        );
        players.push(payable(msg.sender));
    }

    function random() internal view returns (uint256) {
        return (
            uint256(
                keccak256(
                    abi.encodePacked(
                        block.difficulty,
                        block.timestamp,
                        players.length
                    )
                )
            )
        );
    }

    function getBalance() internal view returns (uint256) {
        return address(this).balance;
    }

    function selectWinners() payable public {
        require(manager == msg.sender, "You are not a manager");
        require(players.length >= 3, "Minimum 3 participants are required");
        uint256 randomNumber = random();
        uint256 winnerIndex = randomNumber % players.length;
        winner = players[winnerIndex];
        winner.transfer(getBalance());
        players = new address payable[](0);
    }
}
