# Lab 5: Type Annotation and If-Else Statements

## Part 1: 
Watch [Video1](https://drive.google.com/drive/folders/1ng5vNLE8ys6Ui3Ps28cO-VdoqKaMcgx8?usp=drive_link) in the videos folder. I recommend coding along while you watch the video. You might save your code into a playground called "Notes" to keep some examples.

## Part 2: Type Annotation
Use **type annotations** to define 5 diffrerent variables of the following types Int, Double, Boolean, String, and an array of Ints.

For example, a variable of type Int would be:
```swift
var myNum: Int = 10
```
You can store any values in the variables that you'd like. We aren't doing anything with these variables - just practicing using type annotation.

## Part 1: If-Else Statements

Copy and paste the following code into a Playground and complete it.

```swift

//Problem 1//////////////////////////////////////////////////
//Complete the following code so if score is greater than 10, the message "You win!" prints. If the score is less than or equal to 10, print "You lose!"
var score = 9

if (score > 10){
    // YOUR CODE HERE
}
else {
    // YOUR CODE HERE
}


//Problem 2//////////////////////////////////////////////////
//Complete the following code so if temp is greater than 90, print "It's hot!". If temp is greater than 80 but less than 90, print "It's nice.".  Else, print "It's cold!".

var temp = 85
if (temp > 90){
    // YOUR CODE HERE
}
else if (temp > 80){
    // YOUR CODE HERE
}
else if (temp <= 80){
    // YOUR CODE HERE
}


//Problem 3//////////////////////////////////////////////////
//Write an if-else statement that adds 5 to total if the scoredPoints variable is set to true. Else, decrease the score by 1 point. This code should print 9.
var total = 10
var scoredPoints = false
// YOUR CODE HERE
print(total)


//Problem 4//////////////////////////////////////////////////
//Write code that will print "It's a gloomy day." only when the variables isRaining and isCold are both set equal to true. You must use if-else statements.

var isRaining = true
var isCold = true
// YOUR CODE HERE



//Problem 5//////////////////////////////////////////////////
//Swift has two important "logical operators". To represent "and" we use the double-ampersand &&. To represent "or" we use the double-pipe ||.
//Uncomment the following code and run it to see how && and || work.

//let x = 200
//let y = 100
//if x > 100 && y > 50 {
//    print("x=\(x) is greater than 100 AND y=\(y) is greater than 50")
//}
//
//if x > 100 || y > 200 {
//    print("x=\(x) is greater than 100 OR y=\(y) is greater than 200")
//}

//Both of the above print statements should print.

//For you to try:
//Write code that will print "logged in" when correctUserName and correctPassword are true. It should print "not logged in" when either the user name or password is incorrect. 
var correctUsername = true
var correctPassword = false

// YOUR CODE HERE

//Problem 6//////////////////////////////////////////////////

//Create a program that determines if a person can ride a roller coaster. Use the following conditions:
// - If the person's height is greater than or equal to 150 cm, they can ride alone.
// - If their height is between 130 cm and 150 cm, they can only ride if accompanied by an adult.
// - If their height is less than 130 cm, they cannot ride.
//Print an appropriate message for each case. You will need to define your own variable for this problem.

```


