# Lab 9: Pizza Shop

Use Swift Playground or Xcode. 

You are building an order screen. The user builds a pizza, and the **total price** updates as they tap.

**The price function is already written for you.** Your job is to figure out what variables it needs, make them, and build the controls that feed it.

---

## Step 1: Read the price function

**Do not type this yet. Just read it.**

```swift
func total() -> Double {

    var price = 0.0

    // the base price, from the size
    if size == "Small" {
        price = 9.0
    } else if size == "Medium" {
        price = 12.0
    } else {
        price = 15.0
    }

    // the toppings
    if pepperoni {
        price = price + 2.0
    }

    if mushrooms {
        price = price + 1.5
    }

    if extraCheese {
        price = price + 2.5
    }

    // how many pizzas
    price = price * Double(quantity)

    // delivery is charged once, no matter how many pizzas
    if delivery {
        price = price + 4.0
    }

    return price
}
```

**This is all stuff you already know.** It is a function with a return value from Lesson 4, and the whole body is `if` / `else` from Lesson 5.

**Two lines worth a closer look:**

`var price = 0.0` — money needs decimals, so `price` is a `Double`. Every price in the function is written `9.0`, not `9`, for the same reason.

`Double(quantity)` — this is casting from Lesson 1. `quantity` is an `Int` because it comes from a Stepper. Swift will not let you multiply a `Double` by an `Int`, so it gets converted first.

**And notice the order.** Quantity is multiplied in *before* delivery is added. Three pizzas means three times the pizza price, but you still only pay for delivery once.

---

## Step 2: Work out what variables it needs

The function uses **6** variables that do not exist yet. Find them and fill in this table **before you write any code.**

The first row is done for you.

| Variable | Type | Starting value | Control |
|---|---|---|---|
| `size` | String | `"Medium"` | Picker |
| `pepperoni` | | | |
| `mushrooms` | | | |
| `extraCheese` | | | |
| `quantity` | | | |
| `delivery` | | | |

**How to figure out a row:** look at how the function uses the variable.

- `if pepperoni {` with nothing after it means it is already true or false, so it is a `Bool`.
- `size == "Small"` compares it to text, so it is a `String`.
- `Double(quantity)` converts it from a whole number, so it is an `Int`.

You need a **7th** variable too, for the customer's name on the receipt. The function does not use it, so it is not in the table. Add a row for it yourself.

---

## Step 3: Start the file

**Type this in.** The function is included. Everything marked with a comment is your job.

```swift
import SwiftUI

struct ContentView: View {

    // YOUR @STATE LINES GO HERE


    let sizes = ["Small", "Medium", "Large"]

    var body: some View {
        Form {

            Section("Build your pizza") {

                // YOUR CONTROLS GO HERE

            }

            Section("Total") {

                Text("Total: \(total(), format: .currency(code: "USD"))")
                    .font(.title)

                // YOUR RECEIPT LINE GOES HERE

            }

        }
    }

    func total() -> Double {

        var price = 0.0

        if size == "Small" {
            price = 9.0
        } else if size == "Medium" {
            price = 12.0
        } else {
            price = 15.0
        }

        if pepperoni {
            price = price + 2.0
        }

        if mushrooms {
            price = price + 1.5
        }

        if extraCheese {
            price = price + 2.5
        }

        price = price * Double(quantity)

        if delivery {
            price = price + 4.0
        }

        return price
    }
}
```

**It will not run yet.** You will get errors about variables it cannot find. That is Step 4.

**Two things about the skeleton:**

`let sizes = ["Small", "Medium", "Large"]` is an array from Lesson 3. Your Picker will use it. It is a `let`, not a `@State`, because the three sizes never change.

The `total()` function sits **inside** the struct, after `body`. That is how it can read your `@State` variables without being handed them.

---

## Step 4: Write your 7 variables

**Use your table from Step 2.** Same shape every time:

```swift
@State var size = "Medium"
```

**Run it.** The errors should go away as you add each one. **Seven `@State` lines, zero errors, before you go on.**

---

## Step 5: Write your 7 controls

All of them go inside `Section("Build your pizza")`.

**Here is the Picker, because the size strings have to match the function exactly:**

```swift
Picker("Size", selection: $size) {
    ForEach(sizes, id: \.self) { name in
        Text(name)
    }
}
.pickerStyle(.segmented)
```

**You write the other six.** Look back at Lab 8 if you forget a shape. You need:

- a `TextField` for the name
- a `Toggle` for each of the three toppings
- a `Stepper` for quantity, from 1 to 10
- a `Toggle` for delivery

**Run it.** Tap everything. The total should move every time.

---

## Step 6: The receipt line

Write one `Text` that says what they ordered, in a real sentence. Use interpolation.

Something like:

> Kyle ordered 2 Large pizzas for delivery.

**It does not have to match that exactly.** It does have to use at least three of your variables.

---

## Step 7: Check the math by hand

**This is how you find bugs.** Set your controls, work out the price on paper, then compare.

| Set it to | It should say |
|---|---|
| Medium, nothing on, 1, pickup | $12.00 |
| Medium, pepperoni, 1, pickup | $14.00 |
| Small, all three toppings, 1, pickup | $15.00 |
| Large, nothing on, 3, pickup | $45.00 |
| Large, nothing on, 3, delivery | $49.00 |
| Small, pepperoni, 2, delivery | $26.00 |

**All six should match.** If one is off, read your Picker again — the words in it have to match the function's `"Small"` and `"Medium"` **exactly**, including the capital letters.

---

## If you finish early

Pick any of these:

- An `if` / `else` that prints **"Free delivery!"** when the total is over $30, and takes the $4 off
- A `DatePicker` for the pickup time, shown as a weekday and a time
- A tax line, so the receipt shows subtotal, tax, and final total. Tax is the subtotal times `0.08`
- A third `Section` that shows the price of each topping, so the user knows what they are paying for
- A `ColorPicker` that changes the color of the total

---

## Before you turn it in

- [ ] 7 `@State` lines, each with a starting value
- [ ] 7 controls in the first Section
- [ ] Zero errors
- [ ] Tapping any control changes the total
- [ ] The total shows as money, like `$14.50`, not `14.5`
- [ ] All six rows in the Step 7 table match
- [ ] The receipt reads as a real sentence and uses 3 or more variables
- [ ] Nothing crashes, no matter what you tap

---

## Stuck?

| Problem | Check this |
|---|---|
| "Cannot find `___` in scope" | That `@State` line is missing, or spelled differently |
| The size never changes the price | Your Picker words do not match the function. `"small"` is not `"Small"` |
| The total never changes at all | You wrote `total` instead of `total()` |
| "Cannot find `total` in scope" | The function is outside the struct. It goes inside, after `body` |
| A control shows but does nothing | You forgot the `$` |
| "Cannot convert value of type..." | The starting value is the wrong type. Check your Step 2 table |
| The total is right at 1 pizza but wrong at 3 | Do not retype the function. Compare yours to Step 1 line by line |
