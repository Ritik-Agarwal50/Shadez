// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.12;

import {Script} from "forge-std/Script.sol";
import {WalletFactory} from "../src/WalletFactory.sol";
import {IEntryPoint} from "account-abstraction/interfaces/IEntryPoint.sol";

contract WalletFactoryScript is Script {
    IEntryPoint constant ENTRYPOINT =
        IEntryPoint(0x5FF137D4b0FDCD49DcA30c7CF57E578a026d2789);

    function run() external {
        uint256 deployPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployPrivateKey);
        WalletFactory walletFactory = new WalletFactory(ENTRYPOINT);
        vm.stopBroadcast();
    }
}
