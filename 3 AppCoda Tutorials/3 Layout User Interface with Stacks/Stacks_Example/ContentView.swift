//
//  ContentView.swift
//  Stacks_Example
//
//  Created by EOO61 on 19/07/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 5) {
            //spacing: 5 - this component, will add spacing between objects, try to change value and see the results. Ypu can use it anywhere to add the spacing between 2 objects
            
            //Part I
            Text("Choose\nYour Plan")
                .font(.system(size: 30, weight: .black, design: .rounded)).padding()
            
            //Part II
            HStack (spacing: 15){ //if you want to adjust the spacing between the Basic and Pro pricing block, you can specify the spacing parameter within a HStack like this: HStack (spacing: 15)
                
                
                //Extracted the following code, I mean created 1 common code/method, so we can reuse it, it will decrease the code/lines
                PlanCardView(title: "Basic", price: "$9", textColor: .white, bgColor: .purple)
                
                ZStack {
                    
                    PlanCardView(title: "Pro", price: "$19", textColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    
                    Text("Best for designer")
                    .font(.system(.caption, design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(5)
                    .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                    .offset(x: 0, y: 87) //To adjust the position of the text, you can use the .offset modifier.
                    //The Best for designer label will move to the bottom of the block. A negative value of y will move the label to the top part if you want to re-position it.
                }
                
            }
            .padding(.horizontal) //To give the horizontal stack some spacing, you can add a .padding modifier like this:
            //The .horizontal parameter means we want to add some padding for both leading and trailing sides of the HStack .
            
            
            //Part III
            ZStack {
                PlanCardView(title: "Team", price: "$299", textColor: .white, bgColor: Color(red: 62/255, green: 63/255, blue: 70/255),icon: "wand.and.rays")
                    .padding()
                
                Text("Perfect for teams with 20 members")
                .font(.system(.caption, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding(5)
                .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                .offset(x: 0, y: 107)
            }
            
            //Part IV
            Spacer()
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//ContentView after refactoring the code
//Organizing the Code - Hold the command key on vstack (or any other view) to extract the code seperately.If extract option not showing then search it, you will get the option
struct PlanCardView: View {
    
    var title:String
    var price:String
    var textColor:Color
    var bgColor:Color
    var icon:String? //optionals
    
    var body: some View {
        VStack {
            
            if let icon = icon {
                Image(systemName: icon)
                    .font(.largeTitle)
                    .foregroundColor(textColor)
            }
            
            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(textColor)
            Text(price)
                .font(.system(size: 40, weight: .heavy, design: .rounded)) .foregroundColor(textColor)
            Text("per month")
                .font(.headline)
                .foregroundColor(textColor)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100) //Arranging both pricing blocks with equal width
        //To adjust both blocks to have the same size, you can use the .frame modifier to set the maxWidth to .infinity like this:
        //The .frame modifier allows you to define the frame size. You can specify the size as a fixed value. For example, in the code above, we set the minHeight to 100 points. When you set the maxWidth to .infinity , the view will adjust itself to fill the maximum width. For example, if there is only one pricing block, it will take up the whole screen width.
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}
