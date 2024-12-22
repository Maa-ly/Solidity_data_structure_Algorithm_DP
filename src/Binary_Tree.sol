//Binary Tree
//Definition:
//A binary tree is a hierarchical structure where each node has at most two children, referred to as the left and right child.
//Imagine a family tree where every person has up to two children. If you want to find someone, you follow their branches: left for smaller numbers, right for bigger numbers.

//Why use it?
//It’s great for quickly finding or organizing things, but it can become messy if not balanced

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BinaryTreeExample {
    struct Node {
        uint data;
        uint left;
        uint right;
        bool exists;
    }

    mapping(uint => Node) public nodes;
    uint public root;
    uint public size;

    constructor() {
        root = 0;
        size = 0;
    }

    // Insert a node into the binary tree
    function insert(uint _data) public {
        if (size == 0) {
            nodes[size] = Node(_data, 0, 0, true);
            root = size;
        } else {
            uint current = root;
            while (true) {
                if (_data < nodes[current].data) {
                    if (!nodes[current].exists) {
                        nodes[size] = Node(_data, 0, 0, true);
                        nodes[current].left = size;
                        break;
                    }
                    current = nodes[current].left;
                } else {
                    if (!nodes[current].exists) {
                        nodes[size] = Node(_data, 0, 0, true);
                        nodes[current].right = size;
                        break;
                    }
                    current = nodes[current].right;
                }
            }
        }
        size++;
    }

    //////////////////////////////////////////////////////////////

    struct TreeNode {
        uint value;
        uint left; // Pointer to the left child
        uint right; // Pointer to the right child
        bool exists;
    }

    mapping(uint => TreeNode) public tree;

    uint public treeSize;

    function addNode(uint _value) public {
        if (treeSize == 0) {
            tree[treeSize] = TreeNode(_value, 0, 0, true);
            root = treeSize;
        } else {
            uint current = root;
            while (true) {
                if (_value < tree[current].value) {
                    if (!tree[current].exists) {
                        tree[treeSize] = TreeNode(_value, 0, 0, true);
                        tree[current].left = treeSize;
                        break;
                    }
                    current = tree[current].left;
                } else {
                    if (!tree[current].exists) {
                        tree[treeSize] = TreeNode(_value, 0, 0, true);
                        tree[current].right = treeSize;
                        break;
                    }
                    current = tree[current].right;
                }
            }
        }
        treeSize++;
    }
}
