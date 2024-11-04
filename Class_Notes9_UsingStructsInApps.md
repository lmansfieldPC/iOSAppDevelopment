# Class Notes 9 - Using Structs in Apps

We will create a simply app where a user can add a Dog object to the screen. The user can give the dog a name and a color.

First, let's build our struct:

```swift
struct Dog: Identifiable {
    var name: String
    var color: Color
    var id = UUID()

    init(name: String, color: Color){
        self.name = name
        self.color = color
    }
}
```
We need to make the struct `Identifiable` so that each Dog object has a unique ID. This way the computer can tell the objects apart when they have the same name and color.

## Big Idea 
For our `ContentView`, we will add a form where users can enter the name and color of a new dog. And we will add a `ScrollView` that displays all the dogs the user has created.

### Step 1 - Add the ScrollView and Use the ForEach function.
First we will add the ScrollView with a hardcoded array of Dog objects. In order to show each dog in the list we will use the `ForEach` function. The general structure of this function is:

```swift
ForEach(arrayName){ object in
    //do something with each object
}
```
The object variable is the placeholder for the elements in the array.

Here, we use a `ScrollView` and `ForEach` to display the dogs in the array. We also use some `Stacks` to display the information clearly.
```swift
ScrollView(.horizontal){
    HStack{//Stack each dog horizontally
        ForEach(dogsArray){ dog in
            VStack{//Stack each dogs name below its image
                Image(systemName: "dog.fill").foregroundColor(dog.color)
                Text(dog.name)
            }
        }
    }
}
```
So far, this doesn't look great but we are just getting started!

### Step 2 - Add the form
Now we will add the form so the user can add new dogs. We will need to add new `@State` variables as placeholders for the information the user enters. 
```swift
@State var newName = ""
@State var newColor  = Color.black
```
Now, we add a `TextField`, a `ColorPicker`, and a submit `Button`. We organize these things into their own VStack.
```swift
VStack{//Put form into its own stack
    //User can enter a new name
    TextField("Enter a name.", text: $newDogName)
    //User can pick a new color
    ColorPicker(selection: $newDogColor) {
        Text("Select a color")
    }
    //When the user clicks the submit button, the new dog
    //is added to the array and displayed on the screen.
    Button(action: {
        let newDog = Dog(name: newDogName, color: newDogColor)
        dogsArray.append(newDog)
    }, label: {
        Text("Submit")
    })
}
```

### Step 3 - Add formatting to each Dog object.
- We make each `Image` and dog name larger.
- We style each VStack including a dog have a frame, that is a rounded rectangle with a thin background.
- We also add spacing to the VStack.
```swift
VStack(spacing: 12){
    Image(systemName: "dog.fill")
        .foregroundColor(dog.color)
        .font(.system(size: 80))
    Text(dog.name)
        .font(.headline)
}
.frame(width: 120, height: 120)
.padding()
.background(.thinMaterial)
.clipShape(RoundedRectangle(cornerRadius: 15))
```

### Step 4 - Add formatting the form.
Here we adding multiple design elements to the form to make it look like a card and to be aesthetically pleasing.
```swift
VStack{
    TextField("Enter a name.", text: $newDogName)
        .padding(10)
    ColorPicker(selection: $newDogColor) {
        Text("Select a color")
    } .padding(10)

    Button(action: {
        let newDog = Dog(name: newDogName, color: newDogColor)
        dogsArray.append(newDog)
    }, label: {
        Text("Submit")
    })
    .frame(width:200, height: 50)
    .background(.blue)
    .foregroundColor(.white)
    .clipShape(RoundedRectangle(cornerRadius: 15))
    .padding()
}
.background(.white)
.clipShape(RoundedRectangle(cornerRadius: 15))
.shadow(radius: 5)
.padding()
```

### Step 5 - Finishing up with a background and some additional elements.
In the following code, we clean up our design by adding a few title and a linear gradient. The code below shows the full code for the app. You should examine it to see how the design effects were acheived.
```swift
//
//  ContentView.swift
//  demoproject
//
//  Created by Laura.Mansfield on 10/30/24.
//

import SwiftUI

struct Dog: Identifiable {
    var name: String
    var color: Color
    var id = UUID()

    init(name: String, color: Color){
        self.name = name
        self.color = color
    }
}



struct ContentView: View {
    @State var dogsArray: [Dog] = [Dog(name: "fido", color: .black), Dog(name: "ruff", color: .red), Dog(name: "lassie", color: .green)]
    @State var newName = ""
    @State var newColor  = Color.black
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color.blue, Color.white], startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack(spacing: 30) { // Added spacing between main elements
                // Form styled as a card
                VStack(spacing: 20) {
                    Text("Add New Dog")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(10)
                    
                    TextField("Enter a name", text: $newName).padding(.horizontal)

                    ColorPicker(selection: $newColor) {
                        Text("Select a color")
                    }
                    .padding(.horizontal)
                    
                    Button(action: {
                        let newDog = Dog(name: newName, color: newColor)
                        dogsArray.append(newDog)
                        newName = "" // Clear the text field after submission
                    }) {
                        Text("Add Dog")
                            .foregroundColor(.white)
                            .frame(width: 200, height: 44)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }.padding()
                }
                .background(.white)
                .clipShape(  RoundedRectangle(cornerRadius: 15))
                .shadow(radius: 5)
                .padding()
   
                // Dogs ScrollView
                VStack(alignment: .leading) {
                    Text("Your Dogs")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.horizontal)
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(dogsArray) { dog in
                                VStack(spacing: 12) {
                                    Image(systemName: "dog.fill")
                                        .foregroundColor(dog.color)
                                        .font(.system(size: 60))
                                    Text(dog.name)
                                        .font(.headline)
                                }
                                .frame(width: 120, height: 120)
                                .padding()
                                .background(.thinMaterial)
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 15)
                                )
                            }
                        }
                        .padding()
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


```