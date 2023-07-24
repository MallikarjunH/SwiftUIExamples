//
//  ContentView.swift
//  ScrollView
//
//  Created by EOO61 on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        
        VStack {
            
            HStack {
                VStack (alignment: .leading){
                    Text("FRIDAY, July 2023").font(.caption).foregroundColor(.secondary)
                    Text("Your Reading").font(.system(size: 30, weight: .black, design: .rounded))
                } //.padding(.leading)
                Spacer()
            }
            .padding()
            
            
            ScrollView (.horizontal) {
            //Hiding the Scroll
            ///Indicator - ScrollView (.horizontal, showsIndicators: false)
                
                HStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng").frame(width: 300)
                    CardView(image: "macos-programming", category: "macOS", heading: "Building a Simple Editing App", author: "Gabriel Theodoropoulos").frame(width: 300)
                    CardView(image: "flutter-app", category: "Flutter", heading: "Building a Complex Layout with Flutter", author: "Lawrence Tan").frame(width: 300)
                    CardView(image: "natural-language-api", category: "iOS", heading: "What's New in Natural Language API", author: "Sai Kambampati").frame(width: 300)
                }
            }
            
            Spacer()
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CardView: View {
    
    var image:String
    var category:String
    var heading:String
    var author:String
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            Image(image).resizable().aspectRatio(contentMode: .fit)
            
            Text(category).font(.headline).foregroundColor(.secondary).padding(.leading,10) //.grey and .seconadary looks similar
            
            Text(heading)
                .font(.title)
                .fontWeight(.black)
                .foregroundColor(.primary)
                .lineLimit(3)
                .padding(.leading,10)
                .minimumScaleFactor(0.5) //Resize the Text Automatically - SwiftUI will automatically scale down the text to fit the available space. The value sets the minimum amount of scaling that the view permits. In this case, SwiftUI can draw the text in a font size as small as 50% of the original font size.

            
            Text(author).font(.caption).foregroundColor(.secondary).padding(.leading,10)
            //.uppercased() - you can this function, if text is lower case
        }
        .cornerRadius(10)
        .overlay(
            //use the overlay modifier and draw the border using RoundedRectangle
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255,
                              opacity: 0.1), lineWidth: 1)
        )
        .padding() //.padding([.top, .horizontal])
    }
}
