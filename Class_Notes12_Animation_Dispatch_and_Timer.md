# Class Notes 11 - Animations using Dispatch and Timers


## Part 1: Dispatch
We can use a `DispatchQueue` to delay an animation upon an event. For example, in this first example we want a `star` image to bounce and get "filled in" when the user taps it. First, we initialize two toggle variables for the size and appearance of the image.

```swift
@State var imageToggle = true
@State var scaleToggle = true
```

Then, we use a ternary conditional operator to set the image name and scale factor. We add the animation with an `onTapGesture` and use a `.bouncy` effect. The `DispatchQueue` adds a 0.3 second delay between the toggles. 
```swift
Image(systemName: imageToggle ? "star" : "star.fill")
    .resizable()
    .frame(width: 150, height: 140)
    .scaleEffect(scaleToggle ? 1.0 : 1.2)
    .onTapGesture {
        scaleToggle = false
        imageToggle = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3){
            scaleToggle = true
            imageToggle = true
        }
    }
    .animation(.bouncy, value: scaleToggle)
```


## Part 2: Timer
We can initialize a `Timer` to have an animation trigger on certain time intervals. The following timer will publish every 0.4 seconds. The `autoconnect()` modifier will start the timer automatically. The value `.main` attaches it to our main view. The value `.common` ensures the scrolling and animation will not effect the time. Using `.default` is an alternative.
```swift
let timer = Timer.publish(every: 0.4, on: .main, in: .common).autoconnect()
```
We initialize a variable for a rotation:
```swift
@State var degreeAmount = 0.0
```
Now, to connect the timer to an image, we use the `.onReceive` modifier in place of `onTapGesture` or `onAppear`. This will trigger the animation when the application receives the timer data, which is every 0.4 seconds.
```swift
Image(systemName: "star")
    .resizable()
    .frame(width: 100, height: 100)
    .rotationEffect(.degrees(degreeAmount))
    .onReceive(timer, perform: { _ in
        degreeAmount += 90
    })
    .animation(.easeInOut, value: degreeAmount)
```
You can play around with the timer amount and the animation type to see how it effects the rotations.

If we also add an `offset`, we can make the star rotate around a different center, rather than it's center. For example `.offset(x:50)` can be used.


## Part 3: Infinitely Change Colors
We can add multiple timers to control different animations at the same time. In the following code, we will add an array of colors and set a variable for the color name and the index of the array.
```swift
let timer2 = Timer.publish(every: 1.0, on: .main, in: .common).autoconnect()
@State var colorName = Color.blue
let colors = [Color.blue, Color.purple, Color.red]
@State var colorIndex = 0
```
Now, we add a `.onReceive` modifier that increments the array index and resets the `colorName`. The timer will trigger this change every 1.0 seconds. Finally, we amend our previous code so that star rotates and changes color.
```swift
Image(systemName: "star")
    .resizable()
    .frame(width: 100, height: 100)
    .offset(x:50)
    .foregroundColor(colorName)
    .rotationEffect(.degrees(degreeAmount))
    .onReceive(timer, perform: { _ in
        degreeAmount += 1
    })
    .onReceive(timer2, perform: { _ in
        colorIndex = (colorIndex + 1) % 3
        colorName = colors[colorIndex]
    })
    .animation(.default, value: degreeAmount)
```