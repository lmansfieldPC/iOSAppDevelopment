# Class Notes #2 

Swift can store a simple piece of data in two ways, as a <b>constant</b> or as a <b>variable</b>.

You can change the value stored in a variable.

```swift
//initialize and set the value of myNum
var myNum = 10
print(myNum) //prints 10

//change the value stored in myNum
myNum = 20
print(myNum) //prints 20
```

You cannot change the value stored in a constant.
```swift
let myNumConstant = 10
print(myNumConstant)

myNumConstant = 20 //This causes a problem and Swift will not compile.
```

## Data Types
There are 4 simple types of data that can be stored in Swift.
- Int: integer values
- Double: decimal values[^1]
- Bool: boolean values are `true` or `false`
- String: sequences of characters, like a word or passcode.


[^1]: Doubles are so-named because they have double the amount of accuracy as a float. Floats have up to 7 digits. Doubles have 15-16 digits.