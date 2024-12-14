//Linked List
//Definition:
//A linked list is a collection of nodes where each node contains data and a pointer to the next node. This allows for efficient insertion and deletion.
//A linked list is like a treasure hunt. Each treasure chest (node) holds some treasure (data) and a map (pointer) to the next chest. If you follow the maps, you’ll find all the chests.

//Why use it?
//It’s easy to add or remove chests without reshuffling everything, but finding a specific chest takes time because you have to follow the maps.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract LinkedListExample {
    struct Node {
        uint data;
        uint next;
        bool exists;
    }

    mapping(uint => Node) public nodes;
    uint public head;
    uint public size;

    constructor() {
        head = 0;
        size = 0;
    }

    // Insert a new node at the head
    function insert(uint _data) public {
        nodes[size] = Node(_data, head, true);
        head = size;
        size++;
    }

    // Get a node by index
    function get(uint _index) public view returns (uint, uint) {
        require(nodes[_index].exists, "Node does not exist");
        return (nodes[_index].data, nodes[_index].next);
    }

    struct Treasure {
        uint value;
        uint next; // Pointer to the next chest
        bool exists;
    }
    
    mapping(uint => Treasure) public treasureMap;
    uint public head; // Start of the treasure hunt
    uint public totalTreasures;
    
    function addTreasure(uint _value) public {
        treasureMap[totalTreasures] = Treasure(_value, head, true);
        head = totalTreasures; // The new chest is now the first one
        totalTreasures++;
    }
    
}
