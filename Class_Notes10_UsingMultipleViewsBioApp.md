# Class Notes 10

## How to Create Multiple Views

## How to Add a Custom Color Set

## How to Add Photos

## How to make a Photo Carousel



## Full Example Application
Below is a full example application. Note, the application will not work without the images and custom colors. You can download them here. This is here for you to look at as a guide.
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