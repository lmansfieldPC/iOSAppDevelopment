# Lab 1

In this lab, you will be exposed to your first Swift code and familiarize yourself with the language by unscrambling lines of code.

I'd recommend you work with a partner if this is your first code experience.

Since you might not have your local environments set-up yet, we will use the online Swift editor https://www.programiz.com/swift/online-compiler/ to run Swift code. There are a number of free online Swift compilers. You can use any one you'd like.

Instructions:

1. There are 5 coding challenges below. The first 4 challenges include all the lines needed for a working program, but the lines are out of order. Your task is to rearrange the lines so the program runs correctly. For the last challenge, you'll need to write your own program.
2. Copy and paste the starter code into https://www.programiz.com/swift/online-compiler/ to run in and test your rearrangement of the lines.
3. When you have finished, copy and paste your code into a file (a Google doc will do), and submit it to the Hub. 


## Coding Challenges

 ### Challenge 1 - Adding numbers
```swift
let num2 = 20
print("The sum is \(sum)")
let num1 = 10
let sum = num1 + num2
```
This program should print `The sum is 30.`


 ### Challenge 2 - Changing the value of a variable
 ```swift
name = newName
var name = "Twitter"
var newName = "X"
print("Twitter now goes by the name \(newName).")
 ```
This program should print `Twitter now goes by the name X.`

### Challenge 3 - Swapping the value of two variables
```swift
let temp = var1
var var1 = 10
var var2 = 20
var2  = temp
var1 = var2

print("The value of var1 is \(var1).")
print("The value of var2  is \(var2).")
```
This program should print 
```
The value of var1 is 20. 
The value of var2  is 10.
```

#### Hint: If the program doesn't print anything, you may have created an infinite loop!

### Challenge 4 - An IF-ELSE statement
```swift
let number = -3
if number > 0 {
    print("\(number) is negative")
} else {
    print("\(number) is positive")
}
```
This program should print `-3 is negative`.

## Challenge 5 - Your own program

Use what you've seen above to write your own short program.
The program should start with three variables, `a`, `b`, and `c`. It should add the variables and store the result into a new variable `sum`. Finally, it should print the final value of `sum`.
