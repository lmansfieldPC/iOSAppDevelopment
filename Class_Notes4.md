# Class Notes #4 - More Examples of Loops

``` swift
import UIKit

//Problem 1
//Write a for-loop that adds the squares of all the numbers between 1 and 20. In other words, get the sum 1^2 +2^2 + 3^4 + ... + 20^2.

//Solution
var sum = 0.0
for i in 1...20 {
    sum += pow(Double(i), 2)
}
print(sum)

//Problem 2
//Use a for-loop to create the 7 times table up to 10.

//Solution
for i in 1...10{
    print("\(i)*7 = \(i*7)")
}

//Problem 3
//Write a for-loop that takes an email address and returns the part of the username before the @ symbol.

//Solution
let email = "JohnSmith1@penncharter.com"
var userName = ""
for char in email {
    if char != "@" {
        userName.append(char)
    }
    if char == "@" {
        break
    }
}
print(userName) //prints "JohnSmith1"


//Problem 4
//Use a for-loop to find all the multiples of 7 between 1 and 100.
//Also, print how many multiples there are.
var count = 0
var multiplesOfSeven: [Int] = []
for i in 1...100 {
    if i % 7 == 0 {
        multiplesOfSeven.append(i)
    }
}
print(multiplesOfSeven)
print("There are \(multiplesOfSeven.count) multiples of 7.")

//Problem 5
//Use a for-loop that counts the number of vowels in a word.
var word = "hallelujah"
var vowels = "aeiou"
var numVowels = 0
for char in word {
    if vowels.contains(char){
        numVowels += 1
    }
}
print(numVowels)

```