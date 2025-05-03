// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "forge-std/Script.sol";
import "../src/LockChain.sol";

contract DeployLockChain is Script {
    function run() external {
        // Mulai si broadcast transaksi
        vm.startBroadcast();
        
        // Deploy kontrak
        new LockChain();
        
        // Selesai broadcast transaksi
        vm.stopBroadcast();
    }
}
