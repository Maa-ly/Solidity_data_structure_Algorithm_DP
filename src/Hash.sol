//Hash Table
//Definition:
//A hash table is a structure that stores key-value pairs for quick lookup by using a hash function
//Imagine you have a magical address book. If you know someone’s name (key), the book immediately tells you their address (value). This is done by hashing, which is like running their name through a secret code.

//Why use it?
//It’s super fast to find something when you know the key

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HashTableExample {
    mapping(uint => uint) public hashTable;

    // Add a key-value pair
    function insert(uint _key, uint _value) public {
        hashTable[_key] = _value;
    }

    // Retrieve a value by key
    function get(uint _key) public view returns (uint) {
        return hashTable[_key];
    }
/////////////////////////////////////////////////////////////
    mapping(string => string) public addressBook;

function addEntry(string memory _name, string memory _address) public {
    addressBook[_name] = _address; // Add or update entry
}

function findAddress(string memory _name) public view returns (string memory) {
    return addressBook[_name]; // Find address by name
}

}
