//
//  ContentView.swift
//  StateAndBinding
//
//  Created by EOO61 on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isPlaying = false //Once we declare the property as a state variable, SwiftUI manages the storage of isPlaying and monitors its value change. When the value of isPlaying changes, SwiftUI automatically recomputes the views that are referencing the isPlaying state.
    
    @State private var singleBtnCount = 0
    @State private var groupBtnCount = 0
    
    @State private var groupCounter1 = 0
    @State private var groupCounter2 = 0
    @State private var groupCounter3 = 0
    
    var body: some View {
        
        VStack {
            
           //A: - Controlling the Button's State
           //Example 1
            Button {
                print("Clicked")
                self.isPlaying.toggle() //toggle() method to toggle the Boolean value from false to true or from true to false
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 80))
                .foregroundColor(isPlaying ? .red : .green)

            }

            //Example 2 (Exercise #1) - create a counter button which shows the number of taps. When a user taps the button, the counter will increase by one and display the total number of taps.
            
            ButtonCodeView(count: $singleBtnCount, bgColor: .red)

           //B: Working with Binding
           //Example 3
            HStack {
                //if you dont use $ then it will show error like - Cannot convert value 'countValue' of type 'Int' to expected type 'Binding<Int>', use wrapper instead
                ButtonCodeView(count: $groupBtnCount, bgColor: .purple)
                ButtonCodeView(count: $groupBtnCount, bgColor: .green)
                ButtonCodeView(count: $groupBtnCount, bgColor: .yellow)
                //Que. What is $ sign?
                //In SwiftUI, you use the $ prefix operator to get the binding from a state variable.
            }
            .border(.black)
            
            
            //Example 4 (Exercise #2)
            VStack {
                Text("Totol Count is: \(groupCounter1 + groupCounter2 + groupCounter3)").padding(.top)
                
                HStack {
                    Button {
                        groupCounter1 = groupCounter1 + 1
                    } label: {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.purple)
                            .overlay(
                                Text("\(groupCounter1)").foregroundColor(.white).font(.system(size: 40))
                            )
                    }
                    
                    Button {
                        groupCounter2 = groupCounter2 + 1
                    } label: {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.green)
                            .overlay(
                                Text("\(groupCounter2)").foregroundColor(.white).font(.system(size: 40))
                            )
                    }
                    
                    Button {
                        groupCounter3 = groupCounter3 + 1
                    } label: {
                        Circle()
                            .frame(width: 80, height: 80)
                            .foregroundColor(.yellow)
                            .overlay(
                                Text("\(groupCounter3)").foregroundColor(.white).font(.system(size: 40))
                            )
                    }
                    
                }.padding(5)
                
            }.border(.black)
            
            Spacer()
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//"stop.circle.fill" : "play.circle.fill")



struct ButtonCodeView: View {
    
    //The @Binding keyword indicates that the caller must provide the binding of the state variable. It's just like creating the two-way connection between the singleBtnCount in the ContentView and the count in the ButtonCodeView.
    //Updating count in the ButtonCodeView view propagates its value back to the singleBtnCount state in the ContentView .
    
    @Binding var count:Int
    var bgColor:Color
    
    var body: some View {
        
        Button {
            count = count + 1
        } label: {
            //Text("\(singleBtnCount)").padding().font(.largeTitle)
            // OR
            Circle()
                .frame(width: 80, height: 80)
                .foregroundColor(bgColor)
                .overlay(
                    Text("\(count)").foregroundColor(.white).font(.system(size: 40))
                )
        }.padding()
    }
}
