//
//  ContentView.swift
//  MapKit_Example
//
//  Created by EOO61 on 09/06/22.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
   @State var colorChange = false
   @State var sizeChange = false
    
    var body: some View {
        //Text("A")
        Image(systemName: "heart.fill")
            .font(.system(size: 200)).scaleEffect(sizeChange ? 1.5 : 1)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
