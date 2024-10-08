# Class Notes #6 - Closures

## What is a closure?
In Swift, a **closure** is a special type of function that has no name. Closures are often used in place of functions. 

Here is an example:
```swift
{
    print("Hello from a closure!")
}
```

This code will not run on it's own. We have to store the closure into a variable, like this:
```swift
var hello = {
    print("Hello from a closure!")
}
```
Now, if we call `hello()`, it will run the code inside the closure.
```swift
hello()
//prints "Hello from a closure!"
```

We could have defined this functionality using a function, like this: 
```swift 
func helloFunction(){
    print("Hello from a function!")
}
```
But clousures can be  very useful, especially when we are building a user interface.

Here is another example of a closure, this one requiring parameters.
```swift
let addNumbers = { (a: Int, b: Int) in
    return a + b
}
```
Notice, we have to use the `in` keyword after we define the parameters. We can call the closure the following way:
```swift
addNumbers(5,3)
//returns 8
```
Notice, we don't need to name the parameters when we call the function like we typically need to with functions! With a function, we'd have to name the parameters: `addNumbers(a: 5, b: 3)`.

With a closure, we can also omit the return statement `-> Int` that we normally include in functions.

## Type Annotation with Closures
We've discussed type annotation when defining variables. For example, `var myNum : Int = 10` annotates the variable myNum with the  Int type.
We can do the same with closures.

Let's take our `addNumbers` closure from above and redefine it using type annotation.
```swift
let addNumbers: (Int, Int) -> (Int) = {(a, b) in 
    return a + b
}
```
Now, we have specified the type `addNumbers` as function that takes two integers and returns an integer. We can omit of types of the parameters `a` and `b` since we define them in the type.

## Example - Three Ways to Write a Function
As a final example, we write a function that removes all the commas in a given sentence and returns the new sentence. We should how to write this function in three different ways.
import UIKit
```swift
//Example 1: As a function
func removeCommasFunc(sentence: String) -> String {
    var newsentence = sentence
    newsentence.replace(",", with: "")
    return newsentence
}

//Example 2: As a closure
var removeCommasClosure = { (sentence: String) in
    var newsentence = sentence
    newsentence.replace(",", with: "")
    return newsentence
}

//Example 3: As a closure with type annotation
var removeCommasClosureII: (String) -> (String) = {sentence in
    var newsentence = sentence
    newsentence.replace(",", with: "")
    return newsentence
}

//Here is how we call each of the functions
removeCommasFunc(sentence: "Hello, World")
removeCommasClosure("Hello, World")
removeCommasClosureII("Hello, World")
```








