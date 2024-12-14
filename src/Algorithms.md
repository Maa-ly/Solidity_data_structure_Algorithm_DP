## About
● why do we need Data structures and algorithms?
● What are data strctures? What are algorithms

.A data structure is an arrangement of data in a computer’s memory (or sometimes on a disk). 
Data structures include linked lists, stacks, binary trees, and hash tables, among others.
Algorithms manipulate the data in these structures in various ways, such as inserting a
new data item, searching for a particular item, or sorting the items. You can think of an
algorithm as a recipe: a list of detailed instructions for carrying out an activity.

Real-World Data Storage
Many of the structures and techniques you’ll learn are concerned with how to handle
real-world data storage. By real-world data, we mean data that describes physical entities
external to the computer. Some examples are a personnel record that describes an actual
human being, an inventory record that describes an existing car part or grocery item, and
a financial transaction record that describes, say, an actual check written to pay the grocery bill

Programmer’s Tools
Not all data storage structures are used to store real-world data. Typically, real-world data
is accessed more or less directly by a program’s user. However, some data storage structures are not meant to be accessed by the user, but by the program itself. A programmer
uses such structures as tools to facilitate some other operation. Stacks, queues, and priority queues are often used in this way. W

```
**TABLE 1.1: Characteristics of Data Structures**

| **Data Structure** | **Advantages**                                     | **Disadvantages**                              |
|---------------------|---------------------------------------------------|------------------------------------------------|
| **Array**           | Quick insertion, very fast access if index known. | Slow search, slow deletion, fixed size.        |
| **Ordered Array**   | Quicker search than unsorted array.               | Slow insertion and deletion, fixed size.       |
| **Stack**           | Provides last-in, first-out access.               | Slow access to other items.                    |
| **Queue**           | Provides first-in, first-out access.              | Slow access to other items.                    |
| **Linked List**     | Quick insertion, quick deletion.                  | Slow search.                                   |
| **Binary Tree**     | Quick search, insertion, deletion (if balanced).  | Deletion algorithm is complex.                 |
| **Red-Black Tree**  | Quick search, insertion, deletion. Tree always balanced. | Complex.                                       |
| **2-3-4 Tree**      | Quick search, insertion, deletion. Tree always balanced. Good for disk storage. | Complex.                                       |
| **Hash Table**      | Very fast access if key known. Fast insertion.    | Slow deletion, access slow if key not known, inefficient memory usage. |
| **Heap**            | Fast insertion, deletion, access to largest item. | Slow access to other items.                    |

```