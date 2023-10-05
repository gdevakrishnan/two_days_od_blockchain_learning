//SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract loops {
    /*
        for loop
        while loop
        do-while loop
    */
    uint public sum = 0;

    function setter(uint _n) public {
        // FOR loop
        for(uint i = 1;i <= _n;i++) {
            sum += i;
        }

        // WHILE loop
        /*
        uint i = 1;
        while (i <= _n) {
            sum += i;
            i += 1;
        }
        */

        // DO-WHILE loop
        /*
        uint i = 1;
        do {
            sum += i;
            i += 1;
        }   while (i <= _n);
        */
    }

    function getter() public view returns (uint) {
        return sum;
    }

    function reset() public {
        sum = 0;
    }
}