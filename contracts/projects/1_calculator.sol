// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

// PROJECT-1 DAY - 2
// CALCULATOR CONTRACT
contract calculator {
    uint operand1;
    uint operand2;

    function setter(uint _operand1, uint _operand2) public {
        operand1 = _operand1;
        operand2 = _operand2;
    }

    function addition() public view returns (uint){
        return operand1 + operand2;
    }

    function subtraction() public view returns (uint) {
        return operand1 - operand2;
    }

    function multiplication() public view returns (uint) {
        return operand1 * operand2;
    }

    function division() public view returns (uint) {
        return operand1 / operand2;
    }

    function reset() public {
        operand1 = 0;
        operand2 = 0;
    }
}