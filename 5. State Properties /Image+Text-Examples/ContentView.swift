//
//  ContentView.swift
//  Image+Text-Examples
//
//  Created by EOO61 on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var isHeartSelected = false
    @State var heartCount = 99
    
    var body: some View {
    
        //MARK: Example 1 - state Property
        VStack {
            Image("Eiffel-Tower-Paris")
                .resizable()
                //  .ignoresSafeArea(.all)
                .cornerRadius(25)
                .padding()
                .shadow(radius: 10 )
            
            HStack{
                Button(action: {
                    self.isHeartSelected.toggle()
                    if isHeartSelected {
                        heartCount = heartCount + 1
                    }else{
                        heartCount = heartCount - 1
                    }
                }, label: {
                    //by default filled/foreground color is blue - if u wants to customize then u can do the by changing foregroundcolor
                    if isHeartSelected {
                        Image(systemName: "heart.fill")
                            .foregroundColor(.red)
                    }else{
                        Image(systemName: "heart")
                    }
                    
                })
               
                Text("\(heartCount)") // or - Text(String(heartCount))
            }
            
            Text("Eiffel Tower Paris").fontWeight(.bold).font(.title2)
                .foregroundColor(.purple)
                .padding()
        }
        
        //MARK: Example 2 - Challenge
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
