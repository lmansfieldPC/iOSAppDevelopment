# Class Notes #3 - Loops


## Looping Through an Array
Let's say I have an array `states = ["PA", "NJ", "DE", "MA", "MO", "NY"]` and I want to print the name of every state. I could print each element individually, but it's more efficient to use a **loop**. The syntax for this loop is:

```swift 
for state in states {
    print(state)
}
```

In general, the syntax to loop through an array is
```swift
for item in arrayName {
    //do something for each item
}
```

Imagine the list was very long and I wanted to find every state that starts with the letter M. The following code will do this: 

```swift 
for state in states {
    if state.first == "M" {
        print("A state that starts with M is \(state).")
    }
}
```

We could take it a step further and create a new empty array `statesWithM` and add the relevant states to this array.
``` swift
var statesWithM: [String] = []

for state in states {
    if state.first == "M" {
        statesWithM.append(state)
    }
}

print(statesWithM) //Prints ["MA", "MO"]
```


## Looping Using a Range of Numbers

The following code will print every whole number from 1 to 5: 
```swift
for i in 1...5 {
    print(i)
}
```

The following code will print all the even numbers between 1 and 10 inclusive: 
```swift
for i in 1...10 {
    //the % symbol gives the remainder of the divison i/2.
    if i % 2 == 0 { 
        print(i)
    }
}
```

The following code will add all of the numbers between 1 and 50 and save the value into `total`.
```swift
var total = 0
for i in 1...50 {
    total += i
}
print(total) //prints 1275
```

### Some More Challenging Problems
Here we demonstrate a loop that will find the longest word in a list of words.
```swift 
let words = ["apple","blueberry", "strawberry", "banana", "cherry", ]
var currentMaxCount = 0
var longestWord = ""

for word in words {
    if currentMaxCount < word.count {
        currentMaxCount = word.count
        longestWord = word
    }
}
print("The longest word is \(longestWord) and it is \(currentMaxCount) letters long.")

```

This program will print the first 10 Fibonacci numbers.
```swift 
var a: Int
var b: Int
var nums: [Int] = [0, 1]
for i in 0..<8 {
    a = nums[i]
    b = nums[i+1]
    nums.append(a+b)
}
print(nums)
```




