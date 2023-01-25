# Counter
[Git Source](https://github.com/partyscript/solstarter/blob/a55d32ccd0d67c5b3d382a48012977f2ba04180f/contracts/Counter.sol)

**Inherits:**
[ICounter](/contracts/interfaces/ICounter.sol/contract.ICounter.md)


## State Variables
### nextCounterId

```solidity
uint256 private nextCounterId;
```


### counters

```solidity
mapping(uint256 => Counter) public counters;
```


## Functions
### constructor


```solidity
constructor();
```

### createCounter


```solidity
function createCounter() external returns (uint256);
```

### count


```solidity
function count(uint256 counterId) external view returns (uint256);
```

### increment


```solidity
function increment(uint256 counterId) external;
```

### decrement


```solidity
function decrement(uint256 counterId) external;
```

### reset


```solidity
function reset(uint256 counterId) external;
```

### _getNextAndIncrementCounterId


```solidity
function _getNextAndIncrementCounterId() internal returns (uint256);
```

