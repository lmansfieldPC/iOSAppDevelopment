# Lab 12: Using .onTapGesture() and Button

## Objective
In this lab, you will build a very simple iOS application that includes 4 different features. Make your own project. There is no starter code for this lab.

Use [Class Notes 8](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes8_AddingDesignToApps.md) for reference.


Here is a short video that demonstrates how you application should work. You will need to spend some time thinking about how to lay out the features.

## Feature 1 
Create a text element that says "Tap to change color!". Add a frame, clipShape, and background color. Use the .onTapGesture modifier so that the button change colors when the user taps the element.

## Feature 2
Add a ZStack and a linear gradient behind your text element. Add a button that, when the user taps the button, the colors in the linear gradient change.  Include a frame, clipShape, and background color to your button. You will need to add some @State variables to acheive this. 

## Feature 3
Add a third text element and another button. The text element should say, "Watch me change color!". Add a frame, clipShape, and background color to the button and the text element. When the user taps this button, the color of the font should change.

## Feature 4
Add a reset button. When the user clicks the reset button, all colors should be reset to their original state. You may need to write a function to acheive this functionality.