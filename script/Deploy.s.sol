// SPDX-License-Identifier: Unlicense

pragma solidity >=0.8.17;

import "forge-std/Script.sol";
import { Counter } from "../contracts/Counter.sol";

contract Deployer is Script {
	function setUp() public {}

	function run() external {
		vm.startBroadcast();

        Counter counter = new Counter();

		console.log("Counter Address: ", address(counter));

		vm.stopBroadcast();
	}
}
