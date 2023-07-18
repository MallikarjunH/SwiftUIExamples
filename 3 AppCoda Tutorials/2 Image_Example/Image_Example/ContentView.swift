//
//  ContentView.swift
//  Image_Example
//
//  Created by EOO61 on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            //1. SF Symbols - San Francisco Symbols. Each symbol comes in a wide range of weights and scales that automatically align with text labels, and supports Dynamic Type and the Bold Text accessibility feature.
            /*
            Image(systemName: "cloud.heavyrain")
                .font(.system(size: 40)) // You can easily scale the image by applying the font modifier
                .foregroundColor(.blue)
                .shadow(color: .gray, radius: 10,x: 0, y: 10)
             */
            
            
            //2. Using our Own Images
            /// Image("sample_tower")
            //by default it will take full size/space, to make it good amount we need to use resizable()
            
            //2.1 - Resizing an Image with resizable modifier
            //Image("sample_tower").resizable() //pefect ajusted
            //Note: By default, the image resizes the image using the stretch mode. This means the original image will be scaled to fill the whole screen (except the top and bottom area).
            
            //2.2 - if you want to make full screen, even you wants to ignore safe area then you can use next code
           /// Image("sample_tower").resizable().ignoresSafeArea()
            
           /// Image("sample_tower").resizable().edgesIgnoringSafeArea(.all)
            //.all // .leading //trailing //.top //.bottom //.horizontal //.vertical
            
            //2.3 - Aspect Fit and Aspect Fill
           /// Image("sample_tower").resizable().aspectRatio(contentMode: .fit)
            //.fit //fill
            
            /*
            //2.4.1 - frame modifier - allows you to control the size of a view. Example: By setting the frame's width to 300 points, the image's width will be limited to 300 points.
            Image("sample_tower")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300)
                // frame(height: 300) // frame(width: 300, height: 300) // frame( alignment: .bottom)  // frame(width: 300, height: 300, alignment: .bottom)
            
            //2.4.2 - clipped modifier
            Image("sample_tower")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 300).clipped()
            //use the clipped modifier to eliminate extra parts of the view (the left and right edges).
            */
            
            
            /*
             
           //3 Creating a Circular/Rectangular Image - Use the .clipShape modifier to create image with different shape
           //3.1 - Adjusting the Opacity
            Image("sample_tower")
                .resizable()
                .frame(width: 300)
                .clipShape(Circle())
             //Shape options: Circle() //Rectangle() //Ellipse() //Capsule()
                .opacity(0.6) //Adjusting the Opacity
            
            */
            
            //Note: by default aspect ratio will be .fill to screen
            
            
            //4 - Applying an Overlay to an Image: When designing your app, you may need to layer another image or text on top of an image view. The SwiftUI framework provides a modifier named overlay for developers to apply an overlay to an image.
            Image("sample_tower")
                .resizable()
                .frame(width: 300, height: 300)
                .cornerRadius(10)
                .overlay(
                    VStack {
                        Text("Overlay Text")
                            .foregroundColor(.white)
                            .font(.system(size: 22, weight: .black, design: .rounded))
                        
                        Image(systemName: "heart.fill")
                            .foregroundColor(.blue)
                            .font(.largeTitle) //or .font(.system(size: 50))
                            
                        
                    }
                )
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
