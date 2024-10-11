# Class Notes 8 - Adding Design! 

In this lesson, we will talk about ZStacks, adding background colors and gradients, customizing text and buttons, and adding ???

## ZStacks and Linear Gradients
We have learned about VStacks and HStacks. A `ZStack` will stack items on top of each other so you can layer, for example, a backgound with an image or text on top. The following example will layer a gradient background under some text.
```swift
ZStack{
    LinearGradient(colors: [Color.red, Color.blue], startPoint: .top, endPoint: .bottom)
    Text("Hello World")
}.ignoresSafeArea()
``` 
The modifier `.ignoreSageArea()` will ensure the gradient background fills the entire screen. 

You can add as many colors as you want to a gradient. Try experimenting with different colors!

## Modifiers
We have been using `modifiers` but not really explicitly talking about them yet. We can **modify** an element in SwiftUI by adding them to the end of the curly bracket that defines the element. Here some examples of basic modifiers we have used before:
```swift
Text("Hello")
    .padding() // Adds space around text
    .background(Color.red) //changes background color
    .foregroundStyle(Color.white) //changes font color
    .clipShape(Capsule()) //Changes the shape filled by the background color
```
We could add these same modifiers to other elements as well, like a `Button` or `Stack`.

Other common modifiers include the following:
## Frames
A frame will specify exactly how big an element will be. Here we create a frame with a translucent background.
```swift
Text("Go Penn Charter!")
    .frame(width: 220, height: 150)
    .background(.ultraThinMaterial)
```

## Font Size
The `.font()` modifier gives several option for font size styles like `.title, .title2, .title3, .headline,` and  `.caption` to name a few.


## Tap Gesture
Here, we have a very simple program that used the `.tapGesture()` modifier to changed a heart icon from filled to unfilled when the user taps the icon.
```swift
@State var heartFormat: String = "heart"

var body: some View {
    Image(systemName: heartFormat)
        .onTapGesture(perform: {
            toggleHeart()
        })
}

func toggleHeart(){
    if heartFormat == "heart" {
        heartFormat = "heart.fill"
    }
    else if heartFormat == "heart.fill"{
        heartFormat = "heart"
    }
}
```
This seems like a lot of code for a very simple feature. We can make it more efficient by using a common logical structure called a `ternary conditional operator `. 

## Ternary Conditional Operator
While the name sounds complex, this is a simple tool to use. The syntax is as follows:
```swift
condition ? valueIfTrue : valueIfFalse
```
If the condition is true, the `valueIfTrue` is returned. Else, the `valueIfFalse` is return. For example:
```swift
ageMessage = (myAge < 18 ? "too young!" : "old enough")
```
If `myAge` is less than 18, `ageMessage` will equal "too young!". Otherwise, `ageMessage` will equal "old enough".

Let's use this idea to change our heart-toggle code above. 

```swift
@State var isFavorited: Bool = false

var body: some View {
    Image(systemName: isFavorited == true ? "heart.fill" : "heart") //chose the image based on the variable isFavorited
        .onTapGesture(perform: {
            isFavorited.toggle()//when tapped switch isFavorited from true to false or vice versa
        })
}
```