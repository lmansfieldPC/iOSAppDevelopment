# Class Notes 7 - App 2

Recall, the basic structure of a Swift app is as follows:
```swift
struct ContentView: View {
    
    //Variables go here
    
    var body: some View {
        //Content goes here
       
    }
    
    //Functions Go Here

}

//This code displays the preview
#Preview {
    ContentView()
}
```

In this lesson, we will build a basic app that calculates the tip percentage on a check from a restaurant. Let's start by hardcoding some data just to get things going. We add variables for the check amount and tip amount, and write a function to calculate the tip at 15%.
```swift
struct ContentView: View {
    
    //Variables go here
    @State var checkAmount: Double = 20.0
    @State var tipAmount: Double = 0.0
    
    var body: some View {
        //Content goes here
        Text("Check Amount: $\(checkAmount)")
        Text("Tip Amount: $\(tipAmount)")
    }
    
    //Functions Go Here
    func calculateTip(){
        tipAmount = checkAmount * 0.15
    }

}
```

Ideally, the user should be able to enter any check amount and any tip percentage. To do so, we can using a `Form` and a `TextField`. Here, we just need to change the contents of the `VStack`.
```swift
VStack{
    Form{
        TextField("Check Amount", value: $checkAmount, format: .currency(code: "USD"))

        Text("Tip Amount: \(tipAmount, format: .currency(code: "USD"))")
    }
    
}
```

Now, say we want the user to select a tip percentage from a list of options, like 10%, 15%, 20%, etc. We can do so by adding a `Picker` and formatting it to our style preferences.

First, we add a new variable `tipRate`:
```swift
@State var checkAmount: Double = 20.0
@State var tipRate: Double = 15
@State var tipAmount: Double = 0.0
```
Then we add the picker:

```swift
Form{
    TextField("Check Amount", value: $checkAmount, format: .currency(code: "USD"))
    
    Picker("Tip Rate", selection: $tipRate){
        Text("10%").tag(0.10)
        Text("15%").tag(0.15)
        Text("20%").tag(0.20)
        Text("25%").tag(0.25)
    }
    .pickerStyle(.segmented)
    
    Text("Tip Amount: \(tipAmount, format: .currency(code: "USD"))")
}
```
You can try other picker styles like .wheel or .inline.

Finally, we need to amend our function to adjust for the tip rate the user selects. 
```swift
func calculateTip(){
    tipAmount = checkAmount * tipRate
}
```

Finally, we need to tell Swift to recalculate `tipAmount` when the `tipRate` changes. We do this by adding the `.onChange` function to the form and set it to run `calculateTip()` when `tipRate` changes. In this final code, we also change the default keyboard type to a numberpad when the user changes the check amount.
```swift
VStack{
    Form{
        TextField("Check Amount", value: $checkAmount, format: .currency(code: "USD"))
            .keyboardType(.numberPad)
        
        Picker("Tip Rate", selection: $tipRate){
            Text("10%").tag(0.10)
            Text("15%").tag(0.15)
            Text("20%").tag(0.20)
            Text("25%").tag(0.25)
        }
        .pickerStyle(.segmented)
        
        Text("Tip Amount: \(tipAmount, format: .currency(code: "USD"))")
        
    }.onChange(of: tipRate, {calculateTip()})
}
```

This is just the tip of the iceberg with how we can use `Forms` in Swift! There are many more styles and options to choose from that we will explore in the days ahead.






