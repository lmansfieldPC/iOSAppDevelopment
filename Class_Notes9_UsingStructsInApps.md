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

