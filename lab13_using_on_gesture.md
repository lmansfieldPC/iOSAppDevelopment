# Lab 13: Using .onTapGesture() and Button

## Objective
In this lab, you will build a very simple iOS application that includes 4 different features. Make your own project. There is no starter code for this lab.

Use [Class Notes 8 - Part II](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes8_AddingDesignToApps.md) for reference.


Here is a short [video](https://drive.google.com/file/d/1TcUzXTJ53Dl9u0Kbp2993csV5emrTJp2/view?usp=sharing) that demonstrates how you application should work. You will need to spend some time thinking about how to lay out the features. You will also need to determine if you need to add @State variables.


## Feature 1 - Button to change linear gradient
Add a ZStack and a linear gradient. Add a button that, when the user taps the button, the colors in the linear gradient change.  Include a frame, clipShape, and background color to your button. 

## Feature 2 - Color-changing text element
Create a text element that says "Tap to change color!". Add a frame and a background color. Use the .onTapGesture modifier so that the background of the text element changes color when the user taps the element. 

## Feature 3 - Button to change text color
Add a third text element and another button. The text element should say, "Watch me change color!". Style the text and button as you see fit to make it look visually appealling. When the user taps this button, the color of the font should change.

## Feature 4 - Reset button
Add a reset button. When the user clicks the reset button, all colors should be reset to their original state. 


## Bonus
In this app, when you tap a button, the color changes. But when you tap the button again, does the color change back to its original state? A challenge would be to figure out how to implement this added functionality. For example, when the user taps the button to change the background colors, they can click the button again to reset the color back to its original state.