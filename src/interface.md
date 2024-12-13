# Understanding Interfaces in Solidity

## What is an Interface?
- An **interface** in Solidity is a way to define the functions that other contracts must implement.
- Interfaces **only declare the function signatures** (i.e., name, inputs, outputs, etc.) but **do not provide the implementation**.
- Interfaces allow contracts to **interact** with each other without needing to know the specifics of the implementation.

### Interface Syntax
```solidity
// SPDX-License-Identifier: GPL-3.0

pragma solidity  ^0.8.0;

/**
 * @title interface implementation.
 * @author [Priyda](https://github.com/priyda)
 * @dev Contract to demonstrate how interface works.
 */


interface SumInterface{
    
    struct Task{
        uint256 num1;
        uint256 num2;
        uint256 result;
    }
    
    
    function sum(uint256, uint256) external returns(uint256);
}

// implmenting interface
contract Calculator is SumInterface{
    function sum(uint256 _num1, uint256 _num2) override public pure returns(uint256 result){
        return (_num1 + _num2);
    }
}

```
The SumInterface defines a function sum that takes two uint256 arguments and returns a uint256 result.

**Why Use Interfaces?**
- Decoupling:

Interfaces help in decoupling the contract's interface from the actual implementation. This means you can change the implementation of a contract without affecting other contracts that interact with it.

- Contract Interoperability:

Contracts can interact with other contracts as long as they adhere to the same interface, enabling standardization (e.g., ERC-20 token standard).

- Security:

By using `interfaces`, the code becomes more modular and easier to audit, reducing security risks.

- Interface:
Defines a contract blueprint with function signatures but no implementations.

- Struct:
A reusable data structure (Task) with three fields: num1, num2, and result.

- Function Signature:
The sum function takes two `uint256 `arguments and returns a `uint256`.

The function is marked `external`, meaning it can be called from outside the contract.

Inheritance:
The Calculator contract implements the SumInterface.
Function Implementation:
The sum function computes and returns the sum of _num1 and _num2.
Marked override to indicate it implements the interface function.
Marked pure because it does not modify or read the contract state.
Key Learning Points

1. What is an Interface?
An interface in Solidity is a contract-like structure that:
Contains only function signatures and no implementations.
Cannot have state variables or constructor functions.
Is used to define a contract blueprint.

2. Why Use Interfaces?
Modularity: Helps decouple contracts by defining a standard that multiple contracts can implement.

Reusability: Multiple contracts can implement the same interface, ensuring consistency.

Interoperability: Allows interaction between contracts following the same interface.

3. Structs in Interfaces
Structs defined in an interface can be used in contracts implementing the interface.
Useful for defining reusable data structures.

4. Key Function Modifiers
`external:`
Functions marked as external can only be called from outside the contract (not internally).
`override:`
Ensures that the function implementation matches the signature in the interface.

# Key Concepts in This Example:

Interfaces and Contract Inheritance:

The Calculator contract `inherits` the `SumInterface` interface and must implement all functions defined in that interface.
This allows the Calculator contract to be used by other contracts that expect the `SumInterface`.

Override Keyword:

The `override` keyword is mandatory when implementing a function from an interface.
It signals that this function implementation is replacing the declaration in the interface.

Pure Functions:

The sum function is marked as `pure`, meaning it does not access or modify the contract's state. It only computes based on the input parameters.

### Override like you are 5

Imagine you and your friends decide on a rule for how everyone should build a LEGO car. The rule says:

- The car must have 4 wheels.
- The car must have a steering wheel.

Now, someone writes these rules down on a piece of paper and says, "These are the rules every LEGO car must follow. `But` how you make the car look or work is up to you!"

**How Override Fits In**
You decide to build your LEGO car, but you want to make it special. Maybe your car has red wheels and a fancy steering wheel. Even though it looks different, you're still following the main rules (4 wheels and a steering wheel).

When you show your car to the group, you say:

"I followed the rules, but this is my version of the car."

This is what override means in programming. It tells everyone:

"I’m following the rules from the blueprint (like an interface or parent contract)."
"But this is my own special way of doing it!"

## additional resources 

1. https://www.bing.com/ck/a?!&&p=c96b95024d88023d67a6cc427f34e4847be1875022d9bea04fabb0e3e5c4a1e4JmltdHM9MTczNDA0ODAwMA&ptn=3&ver=2&hsh=4&fclid=015fcb0c-bae6-6d66-038d-de23bb9f6c5b&psq=Solidity+Documentation%3a+Interfaces&u=a1aHR0cHM6Ly9zb2xhbmcucmVhZHRoZWRvY3MuaW8vZW4vbGF0ZXN0L2xhbmd1YWdlL2ludGVyZmFjZV9saWJyYXJpZXMuaHRtbCM6fjp0ZXh0PUFuJTIwaW50ZXJmYWNlJTIwaXMlMjBhJTIwY29udHJhY3QlMjBzdWdhciUyMHR5cGUlMjB3aXRoLGNvbnRyYWN0JTIwd2hpY2glMjBjYW4lMjBiZSUyMHJldXNlZCUyMGluJTIwbXVsdGlwbGUlMjBjb250cmFjdHMu&ntb=1

2. https://www.geeksforgeeks.org/solidity-basics-of-interface/

3. https://codedamn.com/news/solidity/interfaces-in-solidity


