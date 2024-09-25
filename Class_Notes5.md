    # Class Notes #5 - Functions

In mathematics, we learn about functions. An example would be $f(x) = x^2$. We say $x$ is the input and the output of this function is $x^2$. We we plug in an input, say $x=5$, we get an output of $25$. 

In coding, functions are very similar. Another word for a function is **method**. We use functions to simplify our code and to perform tasks that might need to performed many times.

To use a function, first we have to **define** the function. Then we have to **call** the function. 

Here is an example:
``` swift
//Define the sum function
func sum(a: Int, b: Int) -> Int{
    return a + b
}
//Call the sum function and print the result
print( sum(a:2,b:4) )
```
There is a lot of detail in this simple function! Let's go through it:
- `func` is this keyword that tells the computer to define the function. 
- `a` and `b` are the **parameters** of the function.
- The syntax `-> Int` means the function will return an Int. 
- We must use `a` and `b` when calling the function.


In the following, we will go through several examples of functions to demonstrate many different kinds of functions.

### 1)  No parameters or return value
Sometimes you might want a function that takes no parameters and doesn't return anything
```swift
//Define the function
func sayHello(){
    print("Hello!")
}
//Call the function
sayHello() // this will print "Hello!"

```

We can also use functions to change the values of variables in our code that are defined outside of the function. 
```swift
//variable outside the function
var lightIsOn = true;

//function switches lightIsOn from true to false or vice versa
func flipSwitch(){
    lightIsOn.toggle()
}

//call the function
flipSwitch()
//now lightIsOn will be false
print(lightIsOn)
```
### 2) Parameters, but no return value
Here's a simple greeting function
```swift
//Define the function
func greet(student: String){
    print("Hello, \(student)!")
}
//Call the function
greet(student: "Nate") // this will print "Hello, Nate!"
```
### 3) Return a String
Combining Strings:
```swift
func makeFullName(first: String, last: String) -> String{
    return first + " " + last
}

print(makeFullName(first: "Britney", last: "Spears"))
//prints "Britney Spears"
```

### 4) Return a Double
Say we want a function that calculates the average of the numbers in a given array of Doubles. 

```swift
//Define the function
func average(values: [Double]) -> Double{
    var sum = 0.0
    for value in values {
        sum += value
    }
    //we need to use the Double function here to
    //convert values.count to a Double.
    return sum/Double(values.count)
}
//Call the function
var myArray = [1.0, 2.5, 5.4, 2.3]
print(average(values: myArray))
//prints the correct average: 2.8
```

### 5) Return an Array
The following function will take a String as input and return an array of the unique characters in the String. In this function we use the "not" operator `!`. 

```swift
//Define a function that returns an array of characters.
func getUniqueLettersArray(inputString: String) -> [Character] {
    //Initialize an array to add characters to
    var letterArray: [Character] = []
    //For every character in inputString, if the character is not yet in the array, append it to the array.
    for char in inputString {
        if !letterArray.contains(char) {
            letterArray.append(char)
        }
    }
    return letterArray
}

print(getUniqueLettersArray(inputString: "mississippi"))
//this will print [["m", "i", "s", "p"]]
```

