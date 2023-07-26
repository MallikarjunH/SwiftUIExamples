//
//  ContentView.swift
//  Button
//
//  Created by EOO61 on 21/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        ScrollView (.vertical) {
            
            VStack {
                
                //1 Simple Button
                Button {
                    // What to perform
                    print("Button Clicked")
                } label: {
                    // How the button looks like
                    Text("Simple Button")
                }
                
                //2 Customizing the Button's Font and Background, Foreground
                Button {
                    self.submitRegistrationForm()
                } label: {
                    Text("Submit Form")
                        .padding() //to add some space around the text
                        .background(.purple)
                        .foregroundColor(.white)
                }
                
                //3 + cornerRadius
                Button {
                    print("Call Login API")
                } label: {
                    Text("LOGIN")
                        .padding()
                        .font(.title)
                        .background(.purple)
                        .foregroundColor(.white)
                        .cornerRadius(5)
                }
                
                /*
                 //Note: The Order of Modifiers is Important: - The padding modifier should be placed before the background modifier. If you dont give, result may vary - check below Example
                   Button {
                         print("Call Login API")
                   } label: {
                       Text("LOGIN")
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .font(.title)
                       .padding()
                   }
                 */
                
                //4 Adding Borders to the Button
                Button {
                    print("Adding Borders to the Button")
                } label: {
                    Text("Border")
                        .padding()
                        .foregroundColor(.purple)
                        .border(.purple,width: 5)
                        .font(.title)
                        .border(.purple,width: 5)
                    
                }
                //4.1 - A button with both background and border
                Button {
                    print("Adding Borders to the Button")
                } label: {
                    Text("Border")
                        .fontWeight(.bold)
                        .padding()
                        .background(.purple)
                        .foregroundColor(.white)
                        .padding(8)
                        .border(.purple,width: 5)
                }
                //We use two padding modifiers to create the button design. The first padding , together with the background modifier, is for creating a button with padding and a purple background. The padding(10) modifier adds extra padding around the button and the border modifier specifies a rounded border in purple.
                
                //4.2
                Button {
                    print("Adding Borders to the Button")
                } label: {
                    Text("Hello World")
                        .fontWeight(.bold)
                        .font(.title)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .padding(8)
                        .overlay(
                            RoundedRectangle(cornerRadius: 40).stroke(Color.purple, lineWidth: 5)
                        )
                }
                
                //5. Creating a Button with Images and Text
                HStack {
                    //5.1
                    Button(action: {
                        print("Delete button tapped!")
                    }) {
                        Image(systemName: "trash").font(.title)
                    }
                    
                    //5.2
                    Button(action: {
                        print("Delete tapped!")
                    }) {
                        HStack {
                            Image(systemName: "trash").font(.title)
                            Text("Delete").fontWeight(.semibold).font(.title)
                        }.padding()
                            .background(.red)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                    }
                    
                }.padding()
                
                //6.Button with Gradient Background and Shadow
                Button(action: {
                    print("Delete tapped!")
                }) {
                    HStack {
                        Image(systemName: "trash").font(.title)
                        Text("Delete").fontWeight(.semibold).font(.title)
                    }.padding()
                        .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)) //hre red and blue 2 colors used - from leading(left) to trailing(right)
                    //f you want to apply the gradient from top to bottom, you replace the .leading with .top and the .trailing with .bottom
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .shadow(radius: 5.0) //allows you to draw a shadow around the button (or any view)
                    //OR: Optionally, you can control the color, radius, and position of the shadow. Here is an example:
                    //.shadow(color: .gray, radius: 20.0, x: 20, y: 10)
                }
                
                //7. Creating a Full-width Button
                //Sometimes, you may need to create a full- width button that takes up the width of the screen.
                //The frame modifier is designed to control the size of a view.
                //Whether you want to create a fixed size button or a button with variable width, you use this modifier.
                
                Button(action: {
                    print("Full Width Button tapped!")
                }) {
                    Text("Full Width Button")
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                }
                
                //button with padding/space
                /*
                Button {
                    print("Full Width Button tapped2!")
                } label: {
                    Text("Full Width Button 2")
                        .padding()
                        .frame(minWidth: 0, maxWidth: .infinity)
                        .background(.gray)
                        .foregroundColor(.white)
                        .cornerRadius(40)
                        .padding(.horizontal, 20)
                }
                */
                
                //7.1 Styling Buttons with ButtonStyle: SwiftUI provides a protocol called ButtonStyle for you to create your own button style.
                //To create a reusable style for our buttons, Create a new struct called GradientBackgroundStyle that conforms to the ButtonStyle protocol.
               
                Button {
                    print("Styling Buttons with ButtonStyle")
                } label: {
                    
                    HStack {
                        Image(systemName: "trash")
                            .font(.title)
                        Text("Delete")
                            .fontWeight(.semibold)
                            .font(.title)
                    }
                }
                .buttonStyle(GradientBackgroundStyle())
                
                
            }//end of VStack....
            
        }//end of ScrollView...
        
    } //enf of ...var body: some View {
    
    func submitRegistrationForm() {
        print("Submit Form Clicked")
    }
}

struct GradientBackgroundStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        
        configuration.label
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(40)
            .padding(.horizontal, 20)
    }
    
}
                                                             
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
