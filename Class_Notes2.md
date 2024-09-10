# Class Notes #2 - Advanced Data Types


## Review

- Initialize a variable using the `var` keyword. Ex: `var myNum = 10`
- Initialize a constant using the `let` keyword. Ex: `let myConstant = "hello"`
- Variables can only be intialized once. But you can reassign there values multiple times. Ex: `myNum = 20`
- Constants can only be initialized once and cannot be reassigned. 

## 

Swift can also store data in more advanced ways.

## Arrays
An **array** is a useful way to store a list of information.

Here are some examples of arrays:
```swift
let hsYears = ["freshman", "sophomore", "junior", "senior"]
var temps = [90.1, 85.4, 72.3]
var bools = [true, true, false, true, false]
```
We can access an items in an array using an **index**.

The first item of the array as index 0. 
The second items of the array as index 1. 
The third items of the array as index 2. 

For example, we can get the first three items of the array `hsYears` in the following way:
```swift 
hsYears[0] // gets "freshman"
hsYears[1] // gets "sophomore"
hsYears[2] // gets "junior"
```

We can initialize an **empty array** in the following ways: 

Method 1: 
```
swift var moves: [String] = []
```

Method 2: 
```
swift var values: [Int]()
```
In either of the above cases, we have to specify the `data type` the array will store. 

We can **add items** to the array using the `append()` method. 

```swift
moves.append("rock")
moves.append("papers")
moves.append("scissors")
//Now moves = ["rock", "papers", "scissors"]
```

We can *remove items* from the array at a specfic index using the `moves(at: )` method.
```swift
moves.remove(at: 1)
//This removes the item at index 1. 
//In this case, it removes "papers" from the array.
//So moves = ["rock", "scissors"] now.
```

## Other important methods and properties:

### Properties
```swift
myArray.count //gives the number of elements
myArray.isEmpty //returns true if the array is empty, and false otherwise
myArray.first //gives the first element of the array
myArray.last //gives the last element of the array
```

### Methods
```swift
myArray.sort() //sorts the array into alphabetical or numerical order
myArray.removeFirst() //removes the first element
myArray.removeLast() //removes the last element
```



## Dictionaries
A **dictionary** is a collection of key-value pairs, like a list of (x, y) points.

For example, each student at Penn Charter has a student ID. We can store each student as a key-value pair `Student: StudentID.`

Here is another example:
```swift 
var myGrades = ["Math": 95.5, "Science": 88.0, "History": 92.5]
```
The keys are are names of courses. The values are the current grades. 

We can **add to the dictionary** in the following way:
```swift
myGrades["Coding"] = 100.0
```

We can get the the value for a given key like this:
```swift
myGrades["Math"] //gets the grade for math
```


