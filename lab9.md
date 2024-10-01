# Lab 9: Functions Part II

In this lab you will write functions. Remember to review the notes in [Class Notes 5](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes5.md).

Make sure to run the tests to check your functions are working correctly.

Copy and paste the **entire** code below into a playground.

```swift
import UIKit


// Problem 1
// Write a function that performs the computation (a + b) / c and returns the result.
// If C is 0, the function should return Double.infinity
func computation(a: Int, b: Int, c: Int) -> Double {
    //YOUR CODE HERE
    return 0 //Edit this line of code.
}

// Problem 2
// Write a function that checks if a given number is even.
// If the number is even, return true; otherwise, return false.
func isEven(number: Int) -> Bool {
    //YOUR CODE HERE
    return false //Edit this line of code.
}

// Problem 3
// Write a function that takes an array of doubles and returns the sum of the elements in the array.
func sumArray(numbers: [Double]) -> Double {
    //YOUR CODE HERE
    return 0 //Edit this line of code.
}

// Problem 4
// Write a function that takes a string returns the number of times the letter "a"
// occurs in the word.
func countAs(word: String) -> Int {
    //YOUR CODE HERE
    return 0 //Edit this line of code.
}

// Problem 5
// Write a function that takes two integers, a and b, and returns the larger integer.
func findLarger(a: Int, b: Int) -> Int {
    //YOUR CODE HERE
    return 0 //Edit this line of code.
}


// Problem 6
// Write a function that takes two strings, player1Move and player2Move, that are
// equal to either "rock", "paper", or "scissors". Using the standard rules of the game,
// return 0 if player1 wins, 1 if player2 wins, and 2 if there is a tie.
func rockPaperScissors(player1Move: String, player2Move: String) -> Int {
    //YOUR CODE HERE
    return -1 //Edit this line of code.
}





////////////////////////////////////////////////////////////////////////////////////
//Tests - Do not edit any code below this line! ////////////////////////////////////

func computationTest(actual: Double, expected: Double) {
    if actual == expected {
        print("Problem 1: Test passed!")
    } else {
        print("Problem 1: Test failed. Expected \(expected) but got \(actual).")
    }
}


// Test for Problem 2
func boolTest(actual: Bool, expected: Bool) {
    if actual == expected {
        print("Problem 2: Test passed!")
    } else {
        print("Problem 2: Test failed. Expected \(expected) but got \(actual).")
    }
}

// Test for Problem 3
func sumTest(actual: Double, expected: Double) {
    if actual == expected {
        print("Problem 3: Test passed!")
    } else {
        print("Problem 3: Test failed. Expected \(expected) but got \(actual).")
    }
}


// Test for Problem 4
func countTest(actual: Int, expected: Int) {
    if actual == expected {
        print("Problem 4: Test passed!")
    } else {
        print("Problem 4: Test failed. Expected \(expected) but got \(actual).")
    }
}


// Test for Problem 5
func intTest(actual: Int, expected: Int) {
    if actual == expected {
        print("Problem 5: Test passed!")
    } else {
        print("Problem 5: Test failed. Expected \(expected) but got \(actual).")
    }
}

// Test for Problem 6
func intTestRPS(actual: Int, expected: Int) {
    if actual == expected {
        print("Problem 6: Test passed!")
    } else {
        print("Problem 6: Test failed. Expected \(expected) but got \(actual).")
    }
}




// Call test functions
computationTest(actual: subtract(a: 5, b: 3, c: 2), expected: 4.0)  // (5 + 3) / 2 = 4
computationTest(actual: subtract(a: 10, b: 5, c: 0), expected: Double.infinity)  // Division by 0

boolTest(actual: isEven(number: 4), expected: true)  // 4 is even
boolTest(actual: isEven(number: 7), expected: false)  // 7 is odd

sumTest(actual: sumArray(numbers: [1.0, 2.0, 3.0]), expected: 6.0)  // 1.0 + 2.0 + 3.0 = 6.0
sumTest(actual: sumArray(numbers: [0.0, -1.0, 5.0]), expected: 4.0)  // 0.0 - 1.0 + 5.0 = 4.0

countTest(actual: countAs(word: "apple"), expected: 1)  // One 'a' in "apple"
countTest(actual: countAs(word: "banana"), expected: 3)  // Three 'a's in "banana"
countTest(actual: countAs(word: "milkboy"), expected: 0)  // No 'a's

intTest(actual: findLarger(a: 3, b: 5), expected: 5)  // 5 is larger
intTest(actual: findLarger(a: 10, b: 2), expected: 10)  // 10 is larger
intTest(actual: findLarger(a: 20, b: 20), expected: 20)  // equal

intTestRPS(actual: rockPaperScissors(player1Move: "rock", player2Move: "scissors"), expected: 0)  // Player 1 wins
intTestRPS(actual: rockPaperScissors(player1Move: "rock", player2Move: "paper"), expected: 1)  // Player 2 wins
intTestRPS(actual: rockPaperScissors(player1Move: "scissors", player2Move: "scissors"), expected: 2)  // Tie
```
