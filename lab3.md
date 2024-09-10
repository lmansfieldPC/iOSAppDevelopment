# Lab 3 

### Getting Started: 
Create a new playground in Xcode and name it `Lab2_ArraysAndDictionaries`.


1. **Warm-Up**: Review constants and variables.
- Create a constant that holds a temperature in Fahrenheit. (Maybe today's current temp.)
- Convert that temperature to Celsius using the formula:

$$C = \frac{5}{9}(F-32)$$

- Print the result for the user, showing both the Celsius and Fahrenheit values. Check your answer using an online calculator.

2. **Arrays**
- Create an empty array of Strings called `friends`.
- Use the `append` method to add the names of 4 of your friends to the list.
- Print the name of the friend at index 1.
- Use the `remove` method to remove the friend at index 2. (Think: Which friend should this remove?)
- Use the `sort` method to sort the array in alphabetical order. Print it to check it is correct.
- Print the number of items in the array using the appropriate property.
- Print the type of the array using the `type` method.

3. **Dictionaries**
- Copy the following dictionary into your playground.
```swift
// A dictionary where each key is a country and the corresponding value is the capital.
let countryCapitals: [String: String] = [
    "France": "Paris",
    "Japan": "Tokyo",
    "Brazil": "Brasília",
    "Canada": "Ottawa",
    "Australia": "Canberra"
]
```
- Add two more countries and their corresponding capitals to the dictionary.
- Save the capital of France into a new constant called `franceCapital` and print it. 
- Print all the keys of the dictionary.
- Print all the values of the dictionary.

4. **Challenge: Sets**
- In this problem you will research a data type we did not review together, called a `set`. Use Google or a chatbot to look up was a `set` is in Swift. How is a `set` different from an `array`? 
- Copy the following array into your code.
```
let numbers = [3, 7, 1, 9, 4, 10, 2, 6, 5, 8,
               3, 1, 7, 4, 6, 2, 9, 5, 10, 8,
               1, 1, 4, 5, 1, 5, 2, 9, 5, 5,
               7, 10, 4, 6, 1, 3, 2, 9, 8, 5,
               2, 8, 5, 3, 7, 9, 6, 10]
```
- Figure out how to use a `set` to print the number of *unique* values in the array `numbers`. If you do this correctly, you should find there are 10 unique values.



