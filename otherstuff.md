
## Part 3: Add an Object that Appears with an Animation
In the following code, we use an `@State` variable `isShowing` to toggle whether or not an element is visible. 
```swift
@State isShowing = false
```

When the element appears, we animate it with a `.animation` modifier. We have to use the `withAnimation` closure whenever we want an element to appear or disappear we with the `withAnimation` function. 


```swift 
Button(action: {
    withAnimation{
        isShowing.toggle()
        }
    },
    label: {Text("Tap me")}
)
if isShowing == true { //if isShowing is true, draw the rectangle
    Rectangle()
        .fill(.blue)
        .frame(width: 50, height: 50)
        .animation(.easeInOut(duration: 0.5), value: isShowing)
}
```


## Part 3: Animate an Object to Move Around the Screen

First, let's add an element that the user can drag around the screen. We will need to initialize an `@State` variable to store the coordinates of the element. 
```swift
@State var dragAmount = CGSize.zero
```
Here, `CGSize` stands for Core Graphics size and this will set `dragAmount` to x = 0 and y = 0.  This will change when the user drags the element.

We add an `.offset` modifier with `dragAmount`. This will offset the element by the amount the user drags the element.

Finally, we have to add a `.gesture` modifier to our element and use the `DragGesture()` function to apply the drag effect.

```swift
Text("You can move me!")
    .frame(width: 300, height: 200)
    .background(.red)
    .offset(dragAmount) 
    .gesture(
        DragGesture()
            //get the amount the user dragged the element
            .onChanged { value in
                dragAmount = value.translation
            }
            //reset the element when the user let's go
            .onEnded { value in
                dragAmount = .zero
            }
    )
```

So far, we haven't used any animataions. To add an animation effect, we only need to add the `.animation` modifier. In this case, we use the `.bouncy` animation to have the element bounce back into place.
```swift
.animation(.bouncy, value: dragAmount)
```


# Lab 17 - Magic Eight Ball

You will be given starter code for this lab that has the functionality of a magic eight ball. You will need to add animations to the code.

- Animation 1: The message the 8-ball displays should have an animation when the user taps the ball.
- Animation 2: The ball should animate when the use taps the ball.
- Animation 3: The app should open with the 8-ball hidden. The user taps a button and the 8-ball appears with an animation.


## Starter Code
```swift
//
//  ContentView.swift
//  Lab16_Animations_Magic8
//
//  Created by Laura.Mansfield on 11/14/24.
//

import SwiftUI

struct ContentView: View {
    let magic8BallResponses = [
        "It is certain",
        "It is decidedly so",
        "Without a doubt",
        "Yes, definitely",
        "You may rely on it",
        "As I see it, yes",
        "Most likely",
        "Outlook good",
        "Yes",
        "Signs point to yes",
        "Reply hazy, try again",
        "Ask again later",
        "Better not tell you now",
        "Cannot predict now",
        "Concentrate and ask again",
        "Don't count on it",
        "My reply is no",
        "My sources say no",
        "Outlook not so good",
        "Very doubtful"
    ]
    @State var response = "Ask a question!"

    
    var body: some View {
        VStack {
            ZStack{
                //Draw the 8-ball
                Capsule()
                    .fill(RadialGradient(gradient: Gradient(colors: [.white, .blue, .black]),center: .topLeading,startRadius: 10,endRadius: 200))
                    .frame(width: 300, height: 300)
                    .shadow(radius: 10, x: 10, y: 10)
                    .onTapGesture {
                        response = generateResponse()
                    }

                //Add the display text
                Text(response)
                    .frame(width: 200, height: 50)
                    .foregroundColor(.white)
                    .background(.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 30))
            }
        }
        .padding()
    }
    
    func generateResponse() -> String {
        return magic8BallResponses.randomElement()!
    }
}

```