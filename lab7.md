# Lab 7: More For-Loops 

In this lab you will write more for-loops. Remember to review the notes in [Class Notes 3](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes3.md) and [Class Notes 4](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes4.md).

Copy and paste the entire code below into a playground.

```swift
import UIKit


//Problem 1/////////////////////////////////////
//Write a for-loop that finds the number of consonants in the word below. Remember, a consonant is not a vowel.
var word = "pneumonoultramicroscopicsilicovolcanoconiosis"
    //This is the longest English word!
var vowels = "aeiou"
var numConsonants = 0

//YOUR CODE HERE
//The correct answer is 25


//Problem 2/////////////////////////////////////
//Write a for-loop that thats the numbers in the array nums, and creates a new array, called newArray, of of the original numbers multiplied by 2.
var nums = [1, 3, 7, 18, 20, 45, 10, 9, -4, 20]
var newArray: [Int] = []

//YOUR CODE HERE
//The correct answer is [2, 6, 14, 36, 40, 90, 20, 18, -8, 40]


//Problem 3/////////////////////////////////////
//Write a for-loop that finds the number of multiples of 13 that are between 1 and 100.

//YOUR CODE HERE
//The correct answer is 7.


//Problem 4/////////////////////////////////////
//Create a for-loop that checks if the given array contains any multiple of 7.
var values = [1, -4, 20, -8, -100, 14, 0, 10]
var containsMultipleOfSeven: Bool

//YOUR CODE HERE
//The correct answer is true.



//Problem 5/////////////////////////////////////
//This one is harder!
//The dictionary below contains key-value pairs of employees and their hourly wages. Create a for-loop that loops through the keys of the dictionary and determines the employee that has a wage of $10.50 per hour. Hint: wages.keys will give a list of the keys in the dictionary.
var wages = ["Amanda": 12.50, "Luke": 9.50, "Gianna": 11.25, "Joe": 10.50, "Isaiah":9.25]
var employeeWithTenFiftyWage: String = ""


//YOUR CODE HERE
print(employeeWithTenFiftyWage)
//If you do it correctly, this will print "Joe".

```
