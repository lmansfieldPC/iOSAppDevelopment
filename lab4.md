
# Lab 4: Practice with Variables, Arrays, and Dictionaries.

## Advice: Work with a partner, ask questions, and refer to the notes! [Class Notes 2](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes2.md)

Copy the following code into your editor (programiz or Xcode).
Complete the code. Make sure you don't edit any of the provided code! 

Each problem provides the expected behavior so you can check your work.

```swift
import Foundation

//Do not change any of the given code.


// Problem 1/////////////////////////////////////////////////
var array = ["hello", "animal", "chocolate", "egg", "table"]
// Sort the array into alphabetical order. Then print the first item of the array.

// YOUR CODE GOES HERE.

// This should print: animal


// Problem 2/////////////////////////////////////////////////
let heightInches = 75.0
// Initialize a variable called "heightFeet" that converts heightInches into feet.
// Print the variable heightFeet.

// YOUR CODE GOES HERE.

// This should print: 6.25



// Problem 3/////////////////////////////////////////////////
// Here is a dictionary of people and their phone numbers.
var phoneBook: [String: String] = [
    "Alice": "123-456-7890",
    "Bob": "234-567-8901",
    "Charlie": "345-678-9012",
    "David": "456-789-0123",
    "Emma": "567-890-1234"
]
// Change Bob's phone number to "555-123-4567" without changing the provided code.
// Remove Charlie and Emma from the dictionary. An example of how to do this would be the following : phoneBook.removeValue(forKey: "Alice")
// Print the dictionary.

// YOUR CODE GOES HERE.

// This should print ["Bob": "555-123-4567", "Alice": "123-456-7890", "David": "456-789-0123"]


// Problem 4/////////////////////////////////////////////////
// Here is an array of fruits and their prices.
let productPrices: [String: Double] = [
    "Apple": 0.99,
    "Banana": 0.59,
    "Orange": 1.29,
    "Milk": 2.49,
    "Bread": 1.99
]
// Initialize variables called appleCost, bananaCost, and milkCost that store the prices of each fruit. Use the dictionary to get the prices. For example, var breadCost = productPrices["Bread"]! The exclamation mark is important here - we will talk about it later.
// Then, use your variables to get the total cost of 2 apples, 10 bananas, and 25 milks. Print this value to the screen.

// YOUR CODE GOES HERE.

// This should print 70.13000


// Problem 5/////////////////////////////////////////////////
// Here is an array of random numbers.
var randomNumbers = [93, 48, 7, 88, 14, 100, 47, 46, 48, 89, 25, 26]
// Remove the items at index 2, 3, 7, and 9.
// Remove the last item of the array.
// Print the array and print the number of elements of the array.

// YOUR CODE GOES HERE.

// This should print [93, 48, 88, 100, 47, 46, 48]
// and the count should be 7.




```
