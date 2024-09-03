import UIKit

//teachers notes
//- go over 


//Variables and Constants/////////////////////////////////////////////////

//initialize and set the value of myNum
var myNum = 10
print(myNum)

//change the value stored in myNum
myNum = 20
print(myNum)

//initialize and set the value of myNum
let myNumConstant = 10
print(myNumConstant)

//The following line causes a problem
//myNumConstant = 20


//Simple Data Types/////////////////////////////////////////////////
var myInt = 10
var myDouble = 3.141519
var myBool = true
var myString = "hello!"

var sum = 2 + 3.01
var newString = "hello" + "world"
//var boolAndString = true + "true" //doesn't work
//var intAndString = 1 + "hello" //doesn't work

myString = String(1) + "2345"

//String Interpolation/////////////////////////////////////////////////
let grade1 = 80.5
let grade2 = 92.3
let average = (80.5 + 92.3)/2
print("My current average is \(average).")



//More Operators and Reassignment/////////////////////////////////////////////////
var x = 10
x = x + 5
x = x - 1
x = x * 2

x = 10
x += 5 //x is 15
x -= 1 //x is 14
x *= 2 //x is 28

var myName = "Hello"
myName = myName + " Kitty"
