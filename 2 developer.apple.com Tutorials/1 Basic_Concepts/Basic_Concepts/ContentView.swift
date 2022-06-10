//
//  ContentView.swift
//  Basic_Concepts
//
//  Created by EOO61 on 08/06/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center) {
            Image("logo1").aspectRatio(contentMode: .fill).frame(width: 120.0, height: 120.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(.blue, lineWidth: 4))
                .shadow(radius: 7)
            
            Text("Banergatta National Park").font(.headline)
            Text("Bangalore, Area").font(.subheadline)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
