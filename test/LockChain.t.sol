// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

import "forge-std/Test.sol";
import "../src/LockChain.sol";

contract LockChainTest is Test {
    LockChain lock;

    function setUp() public {
        lock = new LockChain();
    }

    function testDefaultLocked() public {
        assertTrue(lock.getStatus());
    }

    function testUnlock() public {
        lock.unlock();
        assertFalse(lock.getStatus());
    }

    function testLockAgain() public {
        lock.unlock();
        lock.lock();
        assertTrue(lock.getStatus());
    }
}
