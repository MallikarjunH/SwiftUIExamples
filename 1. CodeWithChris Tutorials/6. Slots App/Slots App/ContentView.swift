//
//  ContentView.swift
//  Slots App
//
//  Created by EOO61 on 03/07/21.
//

import SwiftUI

struct ContentView: View {
    
    private var symbols = ["apple", "cherry", "star"]
    @State private var numbers = [0, 1, 2]
    
    @State private var creditValue = 1000
    private var betValue = 50
    
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
                    Image(self.symbols[self.numbers[0]]).resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(self.symbols[self.numbers[1]]).resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(20)
                    
                    Image(self.symbols[self.numbers[2]]).resizable().aspectRatio(1,contentMode: .fit)
                        .padding(.all)
                        .background(Color.white.opacity(0.5))
                        .cornerRadius(15)
                    Spacer()
                }
        
                Spacer()
                
                Button(action: {
                    print("Button Clicked")
                   // self.creditValue = self.creditValue + 1
                    self.numbers[0] = Int.random(in: 0...self.numbers.count - 1)
                    
                    self.numbers[1] = Int.random(in: 0...self.numbers.count - 1)
                    
                    self.numbers[2] = Int.random(in: 0...self.numbers.count - 1)
                    
                    if self.numbers[0] == self.numbers[1] && self.numbers[1] == self.numbers[2] {
                        
                       // self.creditValue = self.creditValue * self.betValue
                        self.creditValue = self.creditValue + 200
                    }else{
                        self.creditValue = self.creditValue - self.betValue
                    }
                    
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
