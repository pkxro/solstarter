# ICounter
[Git Source](https://github.com/partyscript/solstarter/blob/a55d32ccd0d67c5b3d382a48012977f2ba04180f/contracts/interfaces/ICounter.sol)


## Functions
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

## Errors
### CounterOverflow

```solidity
error CounterOverflow();
```

## Structs
### Counter

```solidity
struct Counter {
    uint256 value;
}
```

