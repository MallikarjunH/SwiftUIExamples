//
//  ContentView.swift
//  War Card Game UI Construction
//
//  Created by EOO61 on 21/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       // Text("Hello, world!")
           // .padding()
     //   Image("background").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        ZStack{
            Image("background").resizable()
                .ignoresSafeArea(.all
                )
            
            VStack {
                
                Image("logo")
                
                Spacer()
                HStack{
                    Spacer()
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                
                //old code with simple image
              //  Image("dealbutton")
                
                //new code with button
                Button(action: {
                    print("Clicked on Play")
                }, label: {
                    Image("dealbutton")
                })
                //or button
              /*  Button("Click"){
                    print("Test")
                }
                */
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
