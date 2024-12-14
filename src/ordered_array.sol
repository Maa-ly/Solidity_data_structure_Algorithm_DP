// Ordered Array
//Definition:
//An ordered array is a sorted collection of elements. This structure is useful for binary searches, but insertion and deletion are slower due to reordering.
      // This is like a row of lockers, but you always keep the lockers sorted by their contents, smallest to largest. It’s easier to find something because it’s sorted, but putting things in the right order takes time.

   // Why use it?
   // Finding stuff is faster, but adding or removing items means reshuffling everything.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract OrderedArrayExample {
    uint[] public orderedArray;

    // Insert value while keeping the array sorted
    function insertOrdered(uint _value) public {
        uint i = 0;
        while (i < orderedArray.length && orderedArray[i] < _value) {
            i++;
        }
        orderedArray.push(_value); // Add at the end
        for (uint j = orderedArray.length - 1; j > i; j--) {
            orderedArray[j] = orderedArray[j - 1];
        }
        orderedArray[i] = _value;
    }

    // Get the array
    function getArray() public view returns (uint[] memory) {
        return orderedArray;
    }
    uint[] public sortedLockers;

function addAndSort(uint _item) public {
    uint i = 0;
    while (i < sortedLockers.length && sortedLockers[i] < _item) {
        i++;
    }
    sortedLockers.push(_item); // Add at the end
    for (uint j = sortedLockers.length - 1; j > i; j--) {
        sortedLockers[j] = sortedLockers[j - 1]; // Move lockers down
    }
    sortedLockers[i] = _item; // Place the item in the correct spot
}

}
