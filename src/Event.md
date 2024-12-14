- They act as an interface between the smart contract and the frontend (DApp) or off-chain systems.
- Events are not accessible within the contract itself; they are primarily used for external listening and logging.

### Syntax
```solidity
pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Events.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate events feature
 */
 
contract Events{
    event myEvent(address indexed sender, uint256 indexed amount, string message);
    
    function executeEvent(string memory _message) public payable returns(string memory){
        emit myEvent(msg.sender, msg.value, _message);
        return _message;
    }
}
```
## Why Use Events?

**Logging:**

Events log specific actions or data for external use.
For instance, when tokens are transferred, the Transfer event logs the sender, recipient, and value.

**Efficient Communication:**

DApps can listen to these events via libraries like Web3.js or Ethers.js.
Events notify the frontend when important actions occur in a contract.

**Gas Efficiency:**

Logging data with events is cheaper in gas compared to storing data on-chain.

# Importance of Indexed Events

- Indexed parameters allow you to filter and search events efficiently.
- When parameters are marked as indexed, they are stored in the topics section of the log.

Each event can have up to 3 indexed parameters.

# How Indexed Parameters Work
- Without indexed, parameters are stored in the data section of the log.
- Indexed parameters are searchable via blockchain explorers or libraries.

# Benefits of Indexed Parameters

**Searchability:**

You can search for events based on indexed parameters without scanning all logs.

**Efficiency:**
Speeds up querying specific actions.

When to Use Events?

- Use events to log critical actions:
- Transfers (e.g., in ERC-20 and ERC-721 tokens).
- State Changes (e.g., contract upgrades, role changes).
- Alerts (e.g., when thresholds are met or conditions fail).

### Additional resources to mastering Event
1. https://docs.chainstack.com/docs/ethereum-logs-tutorial-series-logs-and-filters

2. https://dev.to/search?utf8=%E2%9C%93&q=events+in+solidty

