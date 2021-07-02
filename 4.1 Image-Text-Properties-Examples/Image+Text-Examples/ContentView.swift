//
//  ContentView.swift
//  Image+Text-Examples
//
//  Created by EOO61 on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Image("Eiffel-Tower-Paris")
                .resizable()
              //  .ignoresSafeArea(.all)
                .cornerRadius(25)
                .padding()
                .shadow(radius: 10 )
            
            Text("Eiffel Tower Paris").fontWeight(.bold).font(.title2)
                .foregroundColor(.purple)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
