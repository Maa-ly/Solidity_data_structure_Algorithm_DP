//Queue
//Definition:
//A queue is a first-in, first-out (FIFO) data structure where the first element added is the first to be removed.
//A queue is like a line for ice cream. The first person in line gets served first. This is called First In, First Out (FIFO).

//Why use it?
//When you want to be fair, like serving everyone in the order they arrived.

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract QueueExample {
    uint[] private queue;

    // Enqueue an element
    function enqueue(uint _value) public {
        queue.push(_value);
    }

    // Dequeue the front element
    function dequeue() public returns (uint) {
        require(queue.length > 0, "Queue is empty");
        uint value = queue[0];
        for (uint i = 0; i < queue.length - 1; i++) {
            queue[i] = queue[i + 1];
        }
        queue.pop();
        return value;
    }

    // Get the queue
    function getQueue() public view returns (uint[] memory) {
        return queue;
    }

    ///////////////////////////////////////
    uint[] public iceCreamLine;

function joinLine(uint _person) public {
    iceCreamLine.push(_person); // Person joins at the end of the line
}

function serveIceCream() public returns (uint) {
    require(iceCreamLine.length > 0, "No one is in line!");
    uint servedPerson = iceCreamLine[0];
    for (uint i = 0; i < iceCreamLine.length - 1; i++) {
        iceCreamLine[i] = iceCreamLine[i + 1]; // Shift everyone forward
    }
    iceCreamLine.pop(); // Remove the last one
    return servedPerson;
}

}
