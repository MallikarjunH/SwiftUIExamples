//
//  ContentView.swift
//  Navigation
//
//  Created by EOO61 on 31/07/23.
//

import SwiftUI

struct ContentView: View {
    
    var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"),
                   Restaurant(name: "Homei", image: "homei"),
                   Restaurant(name: "Teakha", image: "teakha"),
                   Restaurant(name: "Cafe Loisl", image: "cafeloisl"),
                   Restaurant(name: "Petite Oyster", image: "petiteoyster"),
                   Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"),
                   Restaurant(name: "Po's Atelier", image: "posatelier"),
                   Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),
                   Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"),
                   Restaurant(name: "Palomino Espresso", image: "palominoespresso"),
                   Restaurant(name: "Homei", image: "upstate"),
                   Restaurant(name: "Traif", image: "traif"),
                   Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),
                   Restaurant(name: "Waffle & Wolf", image: "wafflewolf"),
                   Restaurant(name: "Five Leaves", image: "fiveleaves"),
                   Restaurant(name: "Cafe Lore", image: "cafelore"),
                   Restaurant(name: "Confessional", image: "confessional"),
                   Restaurant(name: "Barrafina", image: "barrafina"),
                   Restaurant(name: "Donostia", image: "donostia"),
                   Restaurant(name: "Royal Oak", image: "royaloak"),
                   Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    var body: some View {
        
        //1.NavigationView: The SwiftUI framework provides a view called NavigationView for you to create a navigation UI. To embed the list view in a NavigationView , all you need to do is wrap the List with a NavigationView like this:
        /**
        NavigationView {
            
            List {
                ForEach(restaurants) { restaurant in
                    BasicImageRow(restaurant: restaurant)
                }
            }
            
            .navigationBarTitle("Restaurants") //To assign a title to the bar, use the navigationBarTitle
        }
        **/
        
        
        //2. Passing Data to a Detail View Using NavigationLink : SwiftUI provides a special button called NavigationLink , which is able to detect users' touches and triggers the navigation presentation. The basic usage of NavigationLink is like this:
           /**
                NavigationLink(destination: DetailView()) {
                    Text("Press me for details")
                }
           **/
        
        NavigationView {
            
            List {
                ForEach(restaurants) { restaurant in
                    
                    NavigationLink(destination: RestaurantDetailView(restaurant: restaurant)) {
                        
                        BasicImageRow(restaurant: restaurant)
                    }//end of  NavigationLink(dest...
                    
                }//end of ForEach(resta....
                
            }//end of List {....
            
          .navigationBarTitle("Restaurants")
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct RestaurantDetailView: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        VStack {
            Image(restaurant.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Text(restaurant.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
            Spacer()
        }
    }
}
    

struct BasicImageRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        HStack {
            Image(restaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(restaurant.name)
        }
    }
}
