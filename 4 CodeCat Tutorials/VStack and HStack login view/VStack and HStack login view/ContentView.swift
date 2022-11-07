//
//  ContentView.swift
//  VStack and HStack login view
//
//  Created by EOO61 on 26/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var userName:String = String()
    @State private var password:String = String()
    
    //Notes: SwiftUI manages the storage of any property you as a state. When the state value changes, the view invalidates its appearance and recomputes the body. use the state as the singgle source of truth for a given view.
    //A State instance isnt the value itself. It means of reading and writing the value. To access a states underlying value, use its variable name, which returns the wrappedValue property value
    //You should only acess a state property from inside the view's body or from methods called by it. For this reason,  declare your state properties as private to prevent clients of your view from accessing it. It is safe to mutate state properties from any thread.
    
    var body: some View {
        /*
        Text("LOGIN")
        Text("Explore SWIFT UI")
        //Note: If you write this 2 lines It will take by default as HStack. These 2 words will display on same line
        */
        
        VStack {
            Text("LOGIN").font(.largeTitle).padding()
            Text("Explore SWIFT UI").font(.subheadline).padding()
            
            TextField("UserName", text: $userName)
                .padding()
                .background(.gray)
                .cornerRadius(4.0)
            
            SecureField("Password", text: $password)
                .padding()
                .background(.gray)
                .cornerRadius(4.0)
            
            HStack {
                //Button(_ title:action:)
                Button("Validate") {
                    debugPrint("validate Crdentials")
                }
                Spacer()
                //OR another way to create button and action i.e Button(action:label:)
                Button {
                    debugPrint("clicked on forgot password")
                } label: {
                    Text("Forgot Password")
                }
                
                
            }
            
        }.padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
