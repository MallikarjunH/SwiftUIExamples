//
//  ContentView.swift
//  Text_Examples
//
//  Created by EOO61 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //Sigle Line - Text
            Text("Simple Text (Label)")
            
            //Sigle Line - Text
            Text("Stay Hungry. Stay Foolish.")
            //.font(.title2)
            // .font(.system(size: 25))
                .font(.system(size: 25, weight: .medium, design: .rounded))
               // .font(.custom("Roboto", size: 25.0))
                .fontWeight(.medium)
                .foregroundColor(.red)
                .padding()
            
            
            //custom font
            //    .font(.custom("Roboto", size: 25.0))
            Text("Some Text for Custom Font").font(.custom("Roboto", size: 25.0))
            
            
            //Multi Line - Text
            Text("Your time is limited, so don’t waste it living someone else’s life. Don’t be trapped by dogma—which is living with the results of other people’s thinking. Don’t let the noise of others’ opinions drown out your own inner voice. And most important, have the courage to follow your heart and intuition.")
                .padding()
                .multilineTextAlignment(.leading)
               // .lineLimit(nil)
                .lineLimit(4)
                .lineSpacing(5).truncationMode(.middle)
                //.rotationEffect(.degrees(30))
                //.rotationEffect(.degrees(30), anchor: .center)
                //.rotationEffect(.degrees(30), anchor: UnitPoint(x: 0, y: 0))
                //3d Effect
                .rotation3DEffect(.degrees(50), axis: (x: 1, y: 0, z: 0))
                .shadow(color: .gray, radius: 2, x: 0, y: 15)
            
            
           //1.  Text control displays multiple lines by default. The reason is that the SwiftUI framework has set a default value of nil for the lineLimit modifier. You can change the value of .lineLimit to nil and see the result:
            
            //.lineLimit(nil) - it will display all lines
            
            //Rotating Text
            //.rotationEffect(.degrees(30))
            
            
            //By default, the rotation happens around the center of the text view. If you want to rotate the text around a specific point (say, the top-left corner), you write the code like this:
        
              //  .rotationEffect(.degrees(20), anchor: UnitPoint(x: 0, y: 0))
            
            //3d Effect
            //SwiftUI provides a modifier called rotation3DEffect that allows you to create some amazing 3D effects. The modifier takes two parameters: rotation angle and the axis of the rotation. Say, you want to create a perspective text effect, you write the code like this:
            
              //  .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
            
            //You can further insert the following line of code to create a drop shadow effect for the perspective text:
            
            //    .shadow(color: .gray, radius: 2, x: 0, y: 15)
            //    The shadow modifier will apply the shadow effect to the text. All you need to do is specify the color and radius of the shadow. Optionally, you can tell the system the position of the shadow by specifying the x and y values.
            
            
            
            //Using Markdown and bold and italic style for text
            Text("**This is bold text** *This is italic text* You can [click this link](https://www.appcoda.com) to goto appcoda website").padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
