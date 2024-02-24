// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {OneShot} from "../src/OneShot.sol";
import {CredToken} from "../src/CredToken.sol";
import {RapBattle} from "../src/RapBattle.sol";
import {Streets} from "../src/Streets.sol";

contract DeployOneShot is Script {

  function run() public {
    vm.startBroadcast();
    OneShot oneShot = new OneShot();
    CredToken credToken = new CredToken();
    RapBattle rapBattle = new RapBattle(oneShot, credToken);
    Street street = new Street(oneShot, credToken);
    vm.stopBroadcast();
  }
}