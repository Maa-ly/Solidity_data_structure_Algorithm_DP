//1. Array
//Definition:
//An array is a collection of elements, where each element can be accessed by its index. Arrays in Solidity can be fixed-size or dynamic.
//Think of an array like a row of lockers in a school. Each locker has a number (index) and can hold one thing inside (data). You can go directly to a locker by its number to check or replace its content.
//Why use it?
//It’s great when you know exactly where each thing is. However, adding new lockers or rearranging them is hard.
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ArrayExample {
    uint[] public dynamicArray;  // Dynamic array 
    uint[5] public fixedArray;   // Fixed array of size 5

    // Add an element to the dynamic array
    function addElement(uint _value) public {
        dynamicArray.push(_value);
    }

    // Get an element by index
    function getElement(uint _index) public view returns (uint) {
        return dynamicArray[_index];
    }
    /////////////////////////////////////////////////////
    // A row of lockers (array)
uint[] public myLockers;

function addLocker(uint _item) public {
    myLockers.push(_item); // Add item to the row of lockers
}

function seeLocker(uint _index) public view returns (uint) {
    return myLockers[_index]; // Check what's inside a specific locker
}
}
