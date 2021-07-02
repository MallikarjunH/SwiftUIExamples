//
//  ContentView.swift
//  BasicLayoutContainers-UIElements
//
//  Created by EOO61 on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            Spacer()
            //Button With Text & Action
            Button("Default Button") {
                print("Clicked on Button")
            }
            Spacer()
            Button(action: {
                print("Clicked on Custom Button")
            }, label: {
                //Text("Custome Button")
                
                //Image("lemon") //OR
                
                VStack{ //or
                    Image("lemon")
                    Text("Custome Button")
                }
               
            })
            Spacer()
           
        }
        
        /*
        //MARK:Challenge - 3x3 any fruit
        VStack {
            Spacer()
            HStack{
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
            }
            Spacer()
            HStack{
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
                Image("lemon")
                Spacer()
            }
            Spacer()
        }
        
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
