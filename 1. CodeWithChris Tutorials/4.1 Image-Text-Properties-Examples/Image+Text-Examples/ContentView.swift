//
//  ContentView.swift
//  Image+Text-Examples
//
//  Created by EOO61 on 02/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        //MARK: Example 1 - Text & Image
        /*
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
        
        */
        
        //MARK: Example 2 - Challenge
        
        ZStack {
                   Image("Breakfast")
                       .resizable()
                       .edgesIgnoringSafeArea(.all)
                   
                   VStack {
                       Image("TopGradient")
                           .resizable()
                           .edgesIgnoringSafeArea(.all)
                       Spacer()
                       Image("BottomGradient")
                           .resizable()
                           .edgesIgnoringSafeArea(.all)
                   }
                   
                   VStack {
                       HStack {
                           Text("Hardcore\nAvo Toast")
                               .fontWeight(.bold)
                               .foregroundColor(.white)
                               .font(.title)
                               .padding()
                           Spacer()
                           Button(action: {
                               //
                           }) {
                               Image("Heart_health")
                                   .foregroundColor(.white)
                           }
                               .padding()
                       }
                       Spacer()
                       Text("Energize with this heathly and hearty breakfast")
                           .foregroundColor(.white)
                           .font(.subheadline)
                           .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                           .padding()
                   }
               }
        
        
        //way 2 - chekc following code
        /*ZStack{
            Image("Breakfast").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                Image("TopGradient").resizable().edgesIgnoringSafeArea(.all)
                Image("BottomGradient").resizable().edgesIgnoringSafeArea(.all)
            }
            VStack{
                HStack{
                    Text("Hardcore Avo Toast")
                        .foregroundColor(Color.white)
                        .lineLimit(2)
                        .padding(.leading)
                        .frame(width: 100.0)
                    Spacer()
                    Image("Heart_health")
                }
                Spacer()
                Text("Energise with this hearty breakfast")
                    .foregroundColor(Color.white)
            }
        } */
        
        //way 3 - my code
      /*  ZStack {
            
            Image("Breakfast")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("TopGradient")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("BottomGradient")
                    .resizable()
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            }
            
            VStack{
                HStack{
                    Text("Hardcore\nAvo Toast")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .padding()
                        //.padding([.top, .leading], 20.0)
                    Spacer()
                    Image("Heart_health")
                        .padding([.top, .trailing], 20.0)
                    
                }
                Spacer()
                Text("Energize with this heathly and hearty breakfast")
                    .foregroundColor(.white)
                    .opacity(0.7)
                    .padding()
                    
            }
        }
         */
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
