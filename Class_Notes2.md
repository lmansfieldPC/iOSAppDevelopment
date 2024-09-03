# Class Notes #2 

Swift can store a simple piece of data in two ways, as a <b>constant</b> or as a <b>variable</b>.

You can change the value stored in a variable. We say variables are <b>mutable.</b> 

```swift
//initialize and set the value of myNum
var myNum = 10
print(myNum) //prints 10

//change the value stored in myNum
myNum = 20
print(myNum) //prints 20
```

You cannot change the value stored in a constant. We say constants are <b>immutable.</b> 
```swift
let myNumConstant = 10
print(myNumConstant)

myNumConstant = 20 //This causes a problem and Swift will not compile.
```

## Data Types
There are 4 simple types of data that can be stored in Swift.
- Int: integer values
- Double: decimal values [^1]
- Bool: boolean values are `true` or `false`
- String: sequences of characters, like a word or passcode

```swift
//Simple Data Types
var myInt = 10
var myDouble = 3.141519
var myBool = true
```
Some data types can be combined, while others cannot.

```swift
var sum = 2 + 3.01 //works
var newString = "hello" + "world" //works

var boolAndString = true + "true" //doesn't work
var intAndString = 1 + "hello" //doesn't work
```
We can use <b>casting</b> to change one data type into another. For example, we can use the `String()` method to convert an integer in to a string.
```swift
myString = String(123) + "456"
//this will store the string "123456"
```

## String Interpolation
It is often useful to print a message that includes the value of a variable. If the variable is not a String, we cannot combine it with a String. To get around this and easily print messages, we use string interpolation, which means surrounding the variable like this `\(myVar)`. For example:
```swift
let grade1 = 80.5
let grade2 = 92.3
let average = (80.5 + 92.3)/2
print("My current average is \(average).")
//prints: My current average is 86.4.
```

## More on Operators and Reassignment
We can <b>reassign</b> the value of a variable using it's current value and changing it. For example, say `x` stores the number 10 and I want to increment it by `5`. We would write 
```swift
var x = 10
x = x + 5
//Now x stores the value 15.
```
We can do this with any mathematical operator:
```swift
var x = 10
x = x + 5 //x is 15
x = x - 1 //x is 14
x = x * 2 //x is 28
```
The above code can be made more succinct using compound operators. These are just shortcuts for the above code.
```swift
x = 10 //reset x to 10
x += 5 //x is 15
x -= 1 //x is 14
x *= 2 //x is 28
```
This also works for Strings:
```swift
var myName = "Hello"
myName = myName + " Kitty"
//myName now stores "Hello Kitty"

//or you could use the compound operator:
myName += " Kitty"
```








[^1]: Doubles are so-named because they have double the amount of accuracy as a float. Floats have up to 7 digits. Doubles have 15-16 digits.