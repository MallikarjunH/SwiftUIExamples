//
//  ContentView.swift
//  Button_Exercise
//
//  Created by EOO61 on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            
            Button {
                print("Clicked")
               
            } label: {
                
                Image("plus").resizable()
                    .frame(width: 60, height: 60)
               // ImageTest(angleValue: 45.0)
            }
            
            Text("Rotate")
        }
    }
   
}

struct ImageTest: View {

    var angleValue:Double
    
    var body: some View {
        
        Image("plus").resizable()
            .frame(width: 60, height: 60).rotationEffect(.degrees(angleValue))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
