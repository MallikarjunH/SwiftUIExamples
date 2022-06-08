//
//  ContentView.swift
//  DataFlowAndViewComposition
//
//  Created by EOO61 on 08/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red:Double = 0
    @State private var green:Double = 0
    @State private var blue:Double = 0
    
    var body: some View {
        
        VStack {
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                .foregroundColor(Color(red: Double(red/255), green: 100/255, blue: blue/255))
                .border(Color.black, width: 1)
            
           SliderView(value: $red, label: "Red")
            SliderView(value: $green, label: "Green")
            SliderView(value: $blue, label: "Blue")
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
