//
//  ContentView.swift
//  TableView-Example
//
//  Created by EOO61 on 07/06/22.
//

import SwiftUI

struct ContentView: View {
    
    let dataTypesArray = ["Integer", "String", "Float", "Double"]
    
    var body: some View {
        // Text("Hello, world!").padding()
        
        //Static Array
        /*
         List {
         Text("One")
         Text("Two")
         Text("Three")
         }
         */
        
        /*
        //Dynamic Array
        List {
            ForEach(0..<dataTypesArray.count) { each in
                Text(dataTypesArray[each])
            }
        }
        */
        //
        
        //Custom tableview + cell
        List {
            
            ForEach(0..<dataTypesArray.count) { each in
                HStack {
                    Image("userIcon").resizable().aspectRatio(contentMode: .fit).padding().frame(width: 90.0, height: 90.0)
                    //Spacer()
                    VStack(alignment: .leading) {
                        Text("Mallikarjun H")
                        Text("iOS Developer")
                        Text("Wipro, Bangalore")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
