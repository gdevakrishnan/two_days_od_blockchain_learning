// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.21;

contract todo {
    string[] todoArr;
    
    function addTodo(string memory _newTodo) public returns (string[] memory)  {
        todoArr.push(_newTodo);
        return todoArr;
    }

    function getTodo() public view returns (string[] memory) {
        return todoArr;
    }

    function delTodo(uint _index) public {
        delete todoArr[_index];
    }
}