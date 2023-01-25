// SPDX-License-Identifier: Unlicense

pragma solidity >=0.8.17;

import { Counter } from "../Counter.sol";
import { Test } from "forge-std/Test.sol";

contract CounterTest is Test {
	Counter public counter;

	function setUp() public {
		counter = new Counter();
	}

	function test_CreateCounter() public {
		uint256 counterId = counter.createCounter();
		assertEq(counter.count(counterId), 0);
	}

	function test_Increment() public {
		uint256 counterId = counter.createCounter();
		counter.increment(counterId);
		assertEq(counter.count(counterId), 1);
	}

	function test_Decrement() public {
		uint256 counterId = counter.createCounter();
		counter.increment(counterId);
		counter.decrement(counterId);
		assertEq(counter.count(counterId), 0);
	}
}
