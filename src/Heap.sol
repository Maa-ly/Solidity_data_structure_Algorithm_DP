// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Heap {
    uint[] public heap;

    // Insert a new value into the heap
    function insert(uint value) public {
        heap.push(value);
        _bubbleUp(heap.length - 1);
    }

    // Extract the minimum value from the heap
    function extractMin() public returns (uint) {
        require(heap.length > 0, "Heap is empty");
        uint minValue = heap[0];
        heap[0] = heap[heap.length - 1];
        heap.pop();
        _bubbleDown(0);
        return minValue;
    }

    // Helper function to bubble up the last element
    function _bubbleUp(uint index) internal {
        while (index > 0) {
            uint parentIndex = (index - 1) / 2;
            if (heap[index] >= heap[parentIndex]) break;
            (heap[index], heap[parentIndex]) = (heap[parentIndex], heap[index]);
            index = parentIndex;
        }
    }

    // Helper function to bubble down the root element
    function _bubbleDown(uint index) internal {
        uint length = heap.length;
        while (true) {
            uint leftChildIndex = 2 * index + 1;
            uint rightChildIndex = 2 * index + 2;
            uint smallestIndex = index;

            if (
                leftChildIndex < length &&
                heap[leftChildIndex] < heap[smallestIndex]
            ) {
                smallestIndex = leftChildIndex;
            }
            if (
                rightChildIndex < length &&
                heap[rightChildIndex] < heap[smallestIndex]
            ) {
                smallestIndex = rightChildIndex;
            }
            if (smallestIndex == index) break;

            (heap[index], heap[smallestIndex]) = (
                heap[smallestIndex],
                heap[index]
            );
            index = smallestIndex;
        }
    }

    // Get the minimum value without removing it
    function getMin() public view returns (uint) {
        require(heap.length > 0, "Heap is empty");
        return heap[0];
    }

    // Get the size of the heap
    function size() public view returns (uint) {
        return heap.length;
    }
}
