# Class Notes 11 - Animations
 
SwiftUI has a number of build in animation modifiers that can elevate the design of our applications.

## Part 1: Add an Animation with a Button
We want to create a button that will grow in size when we click on it. First, we will need an `@State` variable for an animation amount. This will store how large the button will get.
```swift
@State var animationAmount = 1.0
```

Now, we will create a simple button that increments the animation amount when pressed. We then have to add the modifiers `.scaleEffect(animationAmount)` and `.animation(.default, value: animationAmount)`. The scale effect will enlarge the button by the `animationAmount`. The `animation` modifier will apply a default animation whenever the `animationAmount` changes. Here is the total button: 
```swift
Button(action:{
    animationAmount += 1
}, label:{
    Text("Tap me!")
})
.padding(50)
.background(.red)
.clipShape(.circle)
.scaleEffect(animationAmount)//scale button by this amount
.animation(.default, value: animationAmount) //apply a default animation when the amount changes 
```
There are a variety of effects we can apply in addition to the scale effect. You might try to replace `.scaleEffect` with any of the following 

- .scale(x:y:) - Separate scaling for width/height
- .blur(radius:) - Applies a gaussian blur effect
- .opacity() - Changes the transparency of a view

We can also replace `.default` with other typer of animations to generate different effects. For example:

- .spring(duration:bounce:) - Bouncy animation with configurable parameters
- .easeOut - Starts quickly and slows down
- .easeIn - Starts slowly and speeds up
- .easeInOut - Slow start, fast middle, slow end
- .bouncy - A preset spring animation
- .linear - Constant speed throughout

## Part 2: Add an Animation when an Object Appears
We might want an animation to play when the application loads, instead of when the user interacts with a button. In order to do this, we move the incrementation of the animation amount outside of the button action and into the `.onAppear` modifier. 

In the following example, we overlay animate the blurriness of a rectangle object when the object appears

```swift
Text("On Appear! ")
    .padding(50)
    .background(.red)
    .clipShape(Rectangle())
    .blur(radius: animationAmount2/2)
    .onAppear {
            animationAmount2 = 10 //initialize the animation amount
        }
    .animation(.spring(duration: 1, bounce: 0.5).repeatForever(autoreverses: true), value:animationAmount2)
```

## Part 3: Animate an Object to Move Around the Screen

First, we add `@State` variables to set the initial position of an object.

```swift
@State var xpos: CGFloat = 200
@State var ypos: CGFloat = 200
```
Then, we draw a circle and set it's position modifier with `xpos` and `ypos`. We use `.onAppear` to set where we want the circle to move to. Then, we use `.animation` and the `.repeatForever` modifier to have the animation repeat.

```swift
Circle()
    .frame(width: 30, height: 30)
    .foregroundColor(Color.blue)
    .position(x: xpos, y:ypos)
    .animation(.easeInOut(duration: 2.0)
        .repeatForever(autoreverses: true), value: ypos) //must follow position modifier
    .onAppear {
        ypos = 400
    }
```


## Part 4: Some fun! Changing Colors
We can add just a few edits to the above code to also have the ball change color while it's moving position.

Let's add an `@State` variable for the color of the circle.

```swift
@State var ballColor = Color.blue
```
Then, we can change the color along with the position of the circle.

```swift
Circle()
    .frame(width: 30, height: 30)
    .foregroundColor(ballColor)
    .position(x: xpos, y:ypos)
    .onAppear {
        ypos = 400
        ballColor = Color.green
    }
    .animation(.easeInOut(duration: 2.0)
        .repeatForever(autoreverses: true), value: ypos)
```


## Part 5: Rotations 

The following code will rotate a heart image 90 degrees every time the user taps the heart.
First, an `@State` variable:
```swift
@State var rotationAmount = 0.0
```
And now the image:
```swift
Image(systemName: "heart.fill")
    .resizable()
    .frame(width: 120, height:100)
    .rotationEffect(.degrees(rotationAmount))
    .onTapGesture {
        rotationAmount += 90
    }
    .animation(.bouncy, value: rotationAmount)
```

Another fun rotation uses a 3D effect. You might try it out:
```swift
.rotation3DEffect(
    .degrees(degrees),axis:(x: 0.0, y: 1.0, z: 0.0)
)
```


## Part 6: Using Offset vs using Position

An `offset` moves an object relative to where it's placed.
The `position` moves the absolute position of the object, along with the other object in it's stack.

Here, we will draw two circles in a `VStack`. We will use an `offset` to move the bottom cirlce on top of the top circle. Using `offset` rather than `position` will ensure only the bottom circle moves.

Again, we need an @State variable
```swift
@State var yPos = 0.0
```

And now the circles:
```swift
VStack {
    Image(systemName: "circle.fill")
        .resizable()
        .frame(width: 100, height:100)
    
    Image(systemName: "circle.fill")
        .resizable()
        .frame(width: 100, height:100)
        .foregroundColor(.blue)
        .offset(y: yPos)
        .onTapGesture {
            yPos = -108
        }
        .animation(.spring, value: yPos)
}
```