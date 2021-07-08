//
//  ContentView.swift
//  Slots App
//
//  Created by EOO61 on 03/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var creditValue = 1000
    
    var body: some View {
        
        //Background
        ZStack {
            
            Rectangle()
                .foregroundColor(Color(red: 200/255, green: 143/255, blue: 32/255))
                .edgesIgnoringSafeArea(.all)
            
            Rectangle()
                .foregroundColor(Color(red: 228/255, green: 195/255, blue: 76/255))
                .rotationEffect(Angle(degrees: 45.0))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                //Title
                Spacer()
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                        
                    Text("SwiftUI Slots!")
                        .foregroundColor(.white)
                        .bold()
                    Image(systemName: "star.fill").foregroundColor(.yellow)
                }.scaleEffect(2.0)
                
                Spacer()
                
                Text("Credits: " + String(creditValue))
                    .foregroundColor(.black)
                    .padding(.all, 10)
                    .background(Color.white.opacity(0.5))
                    .cornerRadius(15)
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image("apple").resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple").resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image("apple").resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(15)
                    Spacer()
                }
        
                Spacer()
                
                Button(action: {
                    print("Button Clicked")
                    self.creditValue = self.creditValue + 1
                }, label: {
                    Text("Spin").foregroundColor(.white)
                        .bold()
                        .padding(.all)
                        .padding([.leading, .trailing], 30)
                        .background(Color.pink)
                        .cornerRadius(20)
                })
                
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
