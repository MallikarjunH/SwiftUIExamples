//
//  ContentView.swift
//  Image-Text-Properties-Challenge
//
//  Created by EOO61 on 22/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack {
           // Spacer()
            ZStack{
                Image("toronto").resizable().aspectRatio(contentMode: .fit).cornerRadius(12)
                
                // VStack for the text
                VStack(alignment: .center) {
                    Text("CN Tower")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .padding([.leading, .bottom, .trailing])
                        
                }
                // These modifiers are apply to the VStack itself
                .background(Color.black).opacity(0.8)
                .cornerRadius(5)
                // This modifier applies to all elements in the VStack
                .foregroundColor(.white)
            }.padding()
            
           // Spacer()
            
            ZStack{
                Image("london").resizable().aspectRatio(contentMode: .fit).cornerRadius(12)
                
                VStack(alignment: .center) {
                    Text("Big Ben")
                        .font(.largeTitle)
                        .padding([.top, .leading, .trailing])
                    Text("Toronto")
                        .padding([.leading, .bottom, .trailing])
                }
                .background(Color.black).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .cornerRadius(5)
            }.padding()
          //  Spacer()
            
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
