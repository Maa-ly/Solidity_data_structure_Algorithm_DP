// Stack
//Definition:
//A stack is a last-in, first-out (LIFO) data structure where the last element added is the first to be removed.
//A stack is like a stack of plates. You add plates to the top, and when you need one, you always take the top plate first. This is called Last In, First Out (LIFO).

//Why use it?
//When you only need to use the latest thing you added and don’t care about older ones.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StackExample {
    uint[] private stack;

    // Push an element onto the stack
    function push(uint _value) public {
        stack.push(_value);
    }

    // Pop the top element from the stack
    function pop() public returns (uint) {
        require(stack.length > 0, "Stack is empty");
        uint value = stack[stack.length - 1];
        stack.pop();
        return value;
    }

    // Get the stack
    function getStack() public view returns (uint[] memory) {
        return stack;
    }

    uint[] public plateStack;

function addPlate(uint _plate) public {
    plateStack.push(_plate); // Add plate to the top
}

function removeTopPlate() public returns (uint) {
    require(plateStack.length > 0, "No plates left!");
    uint topPlate = plateStack[plateStack.length - 1];
    plateStack.pop(); // Remove the top plate
    return topPlate;
}

}
