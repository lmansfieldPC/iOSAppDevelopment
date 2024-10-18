# Lab 12: Adding Design to Applications 

## Objective
In this lab, you will be given a working application to edit. Your goal is to add styling to the application. The specifics of how you are to add styling to the app are detailed below. 

Use [Class Notes 8 - Part I](https://github.com/lmansfieldPC/iOSAppDevelopment/blob/main/Class_Notes8_AddingDesignToApps.md) for reference.
## Listed Elements to Style
Below, you will be given starter code for the app you are being asked to style. 

You will not be assessed on your creative decisions. Rather, you will be assessed on whether you add the requested styling.

The app is a very simple timer app that counts down from 1 minute. You will add the styling to the app but you don't have to change any functions or logic.

The following elements must be styled:
* Linear Gradient: Add a linear gradient that spans the entirety of the screen. (Hint: This means you will need to add a ZStack.)

* Start and Pause Buttons - You must add a `frame`, `background color`, `foreground color`, and `clipShape` to the Start and Pause buttons. Change the size of the text as you wish. Here are some examples of clipShapes:
```swift
    .clipShape(Circle())
    .clipShape(Rectangle())
    .clipShape(Capsule())
    .clipShape(RoundedRectangle(cornerRadius: 20))
    .clipShape(Ellipse())
```


* Countdown Timer Title - You must add a `frame`, `background color`, `foreground color`, and `clipShape` to the text "Countdown Timer" to make it look more like a title or header. Change the size of the text as you wish.

* Timer Remaining Display - Change the size of the text to make the remaining time easy to see. Here are some examples of font modifiers to try out:
```swift
    .font(.system(size: 80, weight: .bold, design: .monospaced))
    .font(.system(size: 80, weight: .semibold, design: .default))
    .font(.system(size: 80, weight: .light, design: .rounded))
    .font(.system(size: 80, weight: .heavy, design: .serif))
 ```

* Add padding to some of the elements to space them out nicely.

Have fun and experiment with colors and fonts!

Here is the starter code:
```swift
import SwiftUI

struct ContentView: View {
    @State var timeRemaining: Int = 60  // Initial time in seconds (1 minute)
    @State var timerIsActive: Bool = false //Whether or not timer is running
    @State var initialTime: Int = 60 // To reset the timer to 1 minute
    @State var timer: Timer? // Timer instance

    var body: some View {
        VStack {
            Text("Countdown Timer")
            
            // Display the time remaining
            Text("\(timeFormatted(timeRemaining))")
            
            // Start and Pause Buttons
            HStack {
                Button(action: {
                    if timerIsActive {
                        pauseTimer()
                    } else {
                        startTimer()
                    }
                }, label: {
                    Text(timerIsActive ? "Pause" : "Start")
                })
                
                // Reset Button
                Button(action: resetTimer) {
                    Text("Reset")
                }
            }
        }
        .padding()
    }
    
    // You should not need to change any code below this line.
    
    // Helper function to format the time in MM:SS
    func timeFormatted(_ totalSeconds: Int) -> String {
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    // Start the timer
    func startTimer() {
        timerIsActive = true
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                pauseTimer()
            }
        }
    }
    
    // Pause the timer
    func pauseTimer() {
        timerIsActive = false
        timer?.invalidate()
    }
    
    // Reset the timer
    func resetTimer() {
        pauseTimer()
        timeRemaining = initialTime
    }
}



#Preview {
    ContentView()
}

```