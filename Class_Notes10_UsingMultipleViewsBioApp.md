# Class Notes 10


## Part 1: How to Create Multiple Views
Each view we want to create is a new struct. First, let's create a content view with a `NavigationView`. The `NavigationView` will allow us to add links to other pages in our app.

```swift
struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
                
                Text("Hello")
                
                NavigationLink(destination: SecondView()){
                    Text("Go to the second view!")
                }
            }
        }
    }
}
```

Now, let's add the `SecondView()` structure.
```swift
struct SecondView: View {
    var body: some View {
        Text("This is the second view!")
    }
}
```
Finally, we need to make sure to include a preview for each view to view the page in Xcode.
```swift
#Preview {
    ContentView()
}

#Preview {
    SecondView()
}
```
This shoudld add the link and allow you to see the second view! You can add any content you'd like to this view.

## Part 2 - How to Add a Custom Color Set
Let's say you have particular colors you'd like to use in your application's theme. We can add custom colors and call them in our app. For example, if I create a color called "myPink" then I can using the color by called `Color.myPink`.

To add a custom color:
- Click on the Assets folder in your XCode navigator.
- Click the + button at the botton to add a Color Set. Give your color a name.
- Click the Icon in the very top right corner to see the color options if it is not currently displayed.(Or go to View -> Show Inspector.)
- Select your color. 
- Now try to use your color in your app.

## Part 3 - How to Add Photos
You may also want to add photos to an application.
Find a photo you want to add. It should be a .jpg or .png file. Drag and drop it into the Asset folder. Then you can display your photo using it's name. For example:
```swift
Image("myPictureName")
    .resizable()
    .frame(width: 250, height:250)
```
We must use the `resizable` modifier to resize the image using a frame.

## Part 4 - How to make a Photo Carousel
Now that we can add photos, it would be nice to add a photo carousel. First, we need to upload all the photos we want to the Asset folder. Then, we store the photo names in an array. Finally, we use a ForEach loop and ScrollView to create the carousel.
```swift
let picsArray = ["pic1", "pic2","pic3","pic4"]
ScrollView(.horizontal){
    HStack{
        ForEach(picsArray, id:\.self){pic in
            Image(pic)
        }
    }
}
```


## Full Example Application
Below is a full example application. Note, the application will not work without the images and custom colors. If you want, you can download them [here](https://drive.google.com/drive/folders/1rYx7aMDurM1Znzji62TmOjwjFrEFfGdV?usp=sharing). Otherwise, you can just look at this code as a guide.
```swift
import SwiftUI

struct SocialsView: View {
    var body: some View {
        ZStack{
            Image("hangyodon")
                .resizable()
                .aspectRatio(1, contentMode: .fill)
                .opacity(0.5)
                .padding(100)
                .offset(y: -120)
            
    
            VStack{
                Text("Follow me and my friends!")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                    
                
                HStack{
                    Link(destination: URL(string: "https://www.facebook.com/Hangyodon/")!, label:{
                        Image("Facebook_Logo_Primary").resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    })
                    Link(destination: URL(string: "https://www.instagram.com/sanrio/")!, label:{
                        Image("Instagram_Glyph_Gradient")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    })
                    Link(destination: URL(string: "https://x.com/sanrio")!, label:{
                        Image("logo-black")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    })
                }
            }
        
            .frame(height: 200)
            .background(.ultraThinMaterial)
            .cornerRadius(15)
            .padding(30)
            .offset(y: 275) // Adjust this value as needed

        }
    }
}

struct BiographyView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            // Header
            Text("Hangyodon")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.bluegreen)
                .padding(.vertical)
            
            // Divider line
            Divider()
            
            // Information Section
            HStack{
                VStack(alignment: .leading) {
                    
                    HStack{
                        Text("Birthday:")
                            .font(.headline)
                        Text("March 14")
                    }
                    
                    HStack {
                        Text("Blood Type:")
                            .font(.headline)
                        Text("B")
                    }
                    
                    HStack {
                        Text("Species:")
                            .font(.headline)
                        Text("Fish")
                    }
                }
                .padding()
                .frame(width: 200, height: 100)
                .background(Color.mypink)
                .cornerRadius(8)
                
                Spacer()
                
                Link("Check out my website", destination: URL(string: "https://www.sanrio.com/collections/hangyodon")!)
                    .padding()
                    .frame(height: 100)
                    .foregroundColor(.white)
                    .background(Color.mypink)
                    .cornerRadius(8)
                    
            
            }
            
            // Bio Description
            ScrollView(.vertical){
                Text("Hangyodon is a nice guy who loves to make others laugh, but has a soft spot and doesn't like being alone. He desires to be a hero but his plans of heroism often go awry. Hangyodon also loves collecting merchandise based on himself and is a bit of a romantic despite being somewhat shy towards women, as seen with his various interactions with Kingyochan, his love interest.")
                
                    .padding()
                    .background(Color.mypink)
                    
            }.cornerRadius(8)
            Divider()
            
            Text("Scroll to see my pics!")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.bluegreen)
              
            
            ScrollView(.horizontal){
                let picturesArray = ["hangyodon", "hangyodon1", "hangyodon2", "hangyodon3", "hangyodon4"]
                HStack{
                    ForEach(picturesArray, id: \.self){picture in
                        Image(picture)
                    }
                }
            }.padding()
            
            NavigationLink(destination: SocialsView()) {
                Text("Check out my socials! >")
                    .foregroundColor(Color.bluegreen)
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity,alignment: .trailing)
            }

        }
        .padding()
       
    }
}


struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hi! I'm Hangyodon")
                    .font(.largeTitle)
                    .foregroundColor(Color.mypink)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding()
                
                Image("hangyodon")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .shadow(radius: 5)
                
                NavigationLink(destination: BiographyView()) {
                    Text("Learn More About Me!")
                        .foregroundColor(Color.bluegreen)
                        .font(.title2)
                        .fontWeight(.bold)

                }
            }
        }
    }
}



#Preview {
    ContentView()
}

#Preview {
    BiographyView()
}

#Preview {
    SocialsView()
}

```