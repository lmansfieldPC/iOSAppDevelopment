# App 2: Tip Calculator

## Objective
Amend the provided Tip Calculator code to allow the user to:
*  display the total cost of the bill after the tip is applied
* select the number of people to split the bill between, from 1 to 4 people

For example, if the bill is $100, and the tip rate is 20%, the total cost will be $120. If the bill is split between 3 people, your app should display that each person owes $40.

Use the starter code below and edit it as necessary.
```swift
import SwiftUI

struct ContentView: View {
    
    //Variables go here
    @State var checkAmount: Double = 20.0
    @State var tipRate: Double = 15
    @State var tipAmount: Double = 0.0
    
    var body: some View {
        //Content goes here
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
    }
    
    //Functions Go Here
    func calculateTip(){
        tipAmount = checkAmount * tipRate
    }

}

#Preview {
    ContentView()
}

```