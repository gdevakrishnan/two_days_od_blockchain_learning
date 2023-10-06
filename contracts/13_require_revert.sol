// SPDX-License-Identifier: GPL-3.0
pragma solidity >= 0.7.0 < 0.9.0;

contract require_revert {
    function isZero(uint _num) public pure returns (bool) {
        require(_num == 0, "_num is not zero");
        return true;
    }

    function isZeroIf(uint _num) public pure returns (bool) {
        if (_num != 0) {
            revert("_num is not zero");
        } else {
            return true;
        }
    }
}

/*
    
    REQUIRE SYNTAX
    require(condition, revert statement);
    -------------------------------------------------
    REVERT SYNTAX
    
    if(condition) {
        revert(revert statement);
    }

    --------------------------------------------------
    REVERT: revert is a function in solidity that is used to revert the transaction and
    undo the changes made so far.

    ** it is commonly used for error handling **

*/ 