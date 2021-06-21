//
//  ContentView.swift
//  Views and Containers
//
//  Created by EOO61 on 18/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       //Image("natureImg")
       // Image("natureImg").resizable().aspectRatio(contentMode: .fill)
      //  Image("natureImg").resizable().aspectRatio(contentMode: .fit)
        /*
        VStack{
            Image("natureImg").resizable().aspectRatio(contentMode: .fit)
            Text("Nature Image")
        } */
        
        /*
        HStack{
            Image("natureImg").resizable().aspectRatio(contentMode: .fit)
            Text("Nature Image")
        } */
        /*
        ZStack{
            Image("natureImg").resizable().aspectRatio(contentMode: .fit)
            Text("Nature Image")
        } */
        
        VStack{
            Spacer()
            Image("natureImg").resizable().aspectRatio(contentMode: .fit)
            Spacer()
            VStack{
                Text("Nature Image").foregroundColor(.green)
                Text("Simple Example").bold()
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
