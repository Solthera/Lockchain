// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract LockChain {
    bool public isLocked = true;

    function lock() public {
        isLocked = true;
    }

    function unlock() public {
        isLocked = false;
    }

    function getStatus() public view returns (bool) {
        return isLocked;
    }
}
