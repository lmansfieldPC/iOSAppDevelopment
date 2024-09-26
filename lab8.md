# Lab 8: Functions

In this lab you will write functions. Remember to review the notes in [Class Notes 5]( ).

These labs will now automatically test where or not your code works correctly. So you will no longer have to use print statements to check your work. Print statements can still help you, so feel free to use them as much as you want. But when you run the code, you will receive "Tests passed" messages when you pass the automatic tests.

Copy and paste the **entire** code below into a playground.

```swift 
import UIKit

//Do not edit the names of functions or the provided code, unless specified.

// Problem 1
// Write a function that returns the word "hello".
func hello() -> String {
    //YOUR CODE HERE
    return "" //Edit this line of code.
}


// Problem 2
// Write a function that multiplies the integers a and b and returns the result.
func multiple(a: Int, b: Int) -> Int{
    //YOUR CODE HERE
    return 0 //Edit this line of code.
}


// Problem 3
// Write a function that adds 5 to the global variable x = 10. This function should not return a value.
var x = 10
func addToX(){
    //YOUR CODE HERE
}

// Problem 4
// Write a function that takes the input array inputArray and sorts it into numerical order.
// Your function should return the sorted array.
func sortArray(inputArray: [Double]) -> [Double]{
    //YOUR CODE HERE
    return [] //Edit this line of code.
}

// Problem 5
// Write a function that takes a name and returns a string as in the following:
// Example: greeting("Mark") will return "Hello, Mark!"
// Example: greeting("Jolene") will return "Hello, Jolene!"
// Example: greeting("prince") will return "Hello, prince!"

func greeting(name: String) -> String {
    //YOUR CODE HERE
    return "" //Edit this line of code.
}

// Problem 6
// Write a function so that it does the following:
// If the variable "winner" is set to true, it returns the string
// "UserName has won!". If "winner" is set to false, it returns the string
// "UserName has lost!". For example, checkWinner("Sam", true)
// will return "Sam has won!".
func checkWinner(userName: String, winner: Bool) -> String{
    // Your code goes here!
    return "" //Edit this line of code.
}

////////////////////////////////////////////////////////////////////////////////////
//Tests - Do not edit any code below this line! ////////////////////////////////////

func helloTest() {
    if(hello() == "hello"){
        print("Problem 1: Tests passed!")
    }
    else{
        print("Problem 1: Test failed!")
    }
}

func multipleTest(){
    var actual1 = multiple(a: 4, b: 5)
    var actual2 = multiple(a: -1, b: 4)
    if (actual1 == 20 && actual2 == -4){
        print("Problem 2: Tests passed!")
    }
    else{
        print("Problem 2: Test failed!")
    }
    
}

func addToXTest() {
    addToX()
    if(x != 15){
        print("Problem 3: Test failed!")
        return
    }
    addToX()
    if(x != 20){
        print("Problem 3: Test failed!")
        return
    }
    addToX()
    if(x != 25){
        print("Problem 3: Test failed!")
        return
    }
    print("Problem 3: Tests passed!")
}

func sortArrayTest(){
    var array1: [Double] = [1.0, 3.0, 5.0, 7.9]
    var array2: [Double] = []
    var array3 = [-1.0, 9.0, 4.1, -5.1]
    
    var test1 = sortArray(inputArray: array1) == array1.sorted()
    var test2 = sortArray(inputArray: array2) == array2.sorted()
    var test3 = sortArray(inputArray: array3) == array3.sorted()
    
    if !test1 || !test2 || !test3 {
        print("Problem 4: Test failed!")
    }
    else {
        print("Problem 4: Tests passed!")
    }
}

func greetingTest() {
    if(greeting(name: "Joe") != "Hello, Joe!"){
        print("Problem 5: Test failed.")
        return
    }
    if(greeting(name: "mindy") != "Hello, mindy!"){
        print("Problem 5: Test failed.")
        return
    }
    if(greeting(name: "1234") != "Hello, 1234!"){
        print("Problem 5: Test failed.")
        return
    }
    else {
        print("Problem 5: Tests passed!")
    }
}

func checkWinnerTest() {
    if checkWinner(userName: "Sam", winner: true) != "Sam has won!" {
        print("Problem 6: Test failed.")
        return
    }
    if checkWinner(userName: "Hello Kitty", winner: false) != "Hello Kitty has lost!" {
        print("Problem 6: Test failed.")
        return
    }
    else {
        print("Problem 6: Tests passed!")

    }
}

helloTest()
multipleTest()
addToXTest()
sortArrayTest()
greetingTest()
checkWinnerTest()

```
