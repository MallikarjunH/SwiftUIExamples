//
//  ContentView.swift
//  StateAndBinding
//
//  Created by EOO61 on 25/07/23.
//

import SwiftUI

struct ContentView: View {
    
   @State private var isPlaying = false
   @State private var labelCount = 0
    
   @State private var label1Count = 0

    
    var body: some View {
        
        VStack {
            
            //Example 1
            Button {
                print("Clicked")
                isPlaying.toggle()
            } label: {
                
                VStack {
                    Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill").resizable()
                        .frame(width: 50, height: 50)
                    Text(isPlaying ? "STOP" : "PLAY").foregroundColor(.black)
                }
            }
            .padding(.bottom)
            
            //Example 2
            Button {
                print("Increase The Count")
                labelCount = labelCount + 1
            } label: {
                VStack {
                    Text("\(labelCount)").padding(20)
                        .foregroundColor(.white)
                        .font(.title)
                        .background(Color.red)
                        .clipShape(Circle())
                    
                    Text("Click on above button to increase count")
                }
            }
            
            //Example 3
            HStack {
                ExtractedView(countValue: $label1Count)
                ExtractedView(countValue: $label1Count)
            }
        }

    }
}

struct ExtractedView: View {
    
    @Binding var countValue:Int
    
    var body: some View {
        Button {
            print("Increase The Count")
            countValue = countValue + 1
        } label: {
            VStack {
                Text("\(countValue)").padding(20)
                    .foregroundColor(.white)
                    .font(.title)
                    .background(Color.purple)
                    .clipShape(Circle())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//"stop.circle.fill" : "play.circle.fill")


