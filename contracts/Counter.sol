// SPDX-License-Identifier: Unlicense
pragma solidity >=0.8.17;

import { ICounter } from "./interfaces/ICounter.sol";

contract Counter is ICounter {
	/*//////////////////////////////////////////////////////////////
                               VARIABLES
    //////////////////////////////////////////////////////////////*/

	uint256 private nextCounterId;

	/*//////////////////////////////////////////////////////////////
                                MAPPINGS
    //////////////////////////////////////////////////////////////*/

	mapping(uint256 => Counter) public counters;

	/*//////////////////////////////////////////////////////////////
                                FUNCTIONS
    //////////////////////////////////////////////////////////////*/

	constructor() {
		nextCounterId = 1;
	}

	function createCounter() external returns (uint256) {
		uint256 counterId = _getNextAndIncrementCounterId();

		counters[counterId] = ICounter.Counter(0);

		return counterId;
	}

	function count(uint256 counterId) external view returns (uint256) {
		Counter storage counter = counters[counterId];
		return counter.value;
	}

	function increment(uint256 counterId) external {
		Counter storage counter = counters[counterId];
		if (counter.value == type(uint256).max) {
			revert CounterOverflow();
		}
		unchecked {
			++counter.value;
		}
	}

	function decrement(uint256 counterId) external {
		Counter storage counter = counters[counterId];
		if (counter.value == 0) {
			revert CounterOverflow();
		}
		unchecked {
			--counter.value;
		}
	}

	function reset(uint256 counterId) external {
		Counter storage counter = counters[counterId];
		counter.value = 0;
	}

	function _getNextAndIncrementCounterId() internal returns (uint256) {
		unchecked {
			return ++nextCounterId;
		}
	}
}
