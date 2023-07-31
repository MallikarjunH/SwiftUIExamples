//
//  ContentView.swift
//  List
//
//  Created by EOO61 on 28/07/23.
//

import SwiftUI

//use List in Swift UI to present rows of data

struct ContentView: View {
    
    var restaurantNames = ["Cafe Deadend", "Homei", "Teakha", "Cafe Loisl", "Petit e Oyster", "For Kee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Traif", "Graham Avenue Meats And Deli" , "Waffle & Wolf", "Five Leaves", "Cafe Lore", "Confessional", "Barrafina", "Donos tia", "Royal Oak", "CASK Pub and Kitchen"]
    var restaurantImages = ["cafedeadend", "homei", "teakha", "cafeloisl", "petite oyster", "forkeerestaurant", "posatelier", "bourkestreetbakery", "haighschocolate" , "palominoespresso", "upstate", "traif", "grahamavenuemeats", "wafflewolf", "five leaves", "cafelore", "confessional", "barrafina", "donostia", "royaloak", "caskpub kitchen"]
    
    //Instead of holding the restaurant data in two separate arrays, we'll create a Restaurant struct to better organize the data.
    //With Restaurant struct, we can combine both restaurantNames and restaurantImages arrays into a single array.
    var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"), Restaurant(name: "Homei", image: "homei"),Restaurant(name: "Homei", image: "upstate"),Restaurant(name: "Teakha", image: "teakha"),
                        Restaurant(name: "Cafe Loisl", image: "cafeloisl"), Restaurant(name: "Petite Oyster", image: "petiteoyster"), Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"), Restaurant(name: "Po's Atelier", image: "posatelier"), Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"),Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"), Restaurant(name: "Palomino Espresso", image: "palominoespresso"), Restaurant(name: "Upstate", image: "upstate"),
                        Restaurant(name: "Traif", image: "traif"),
                        Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"),Restaurant(name: "Waffle & Wolf", image: "wafflewolf"), Restaurant(name: "Five Leaves", image: "fiveleaves"), Restaurant(name: "Cafe Lore", image: "cafelore"), Restaurant(name: "Confessional", image: "confessional"), Restaurant(name: "Barrafina", image: "barrafina"), Restaurant(name: "Donostia", image: "donostia"), Restaurant(name: "Royal Oak", image: "royaloak"), Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen")
    ]
    
    var body: some View {
        
        //1 Creating a Simple List
        /*
        List {
            Text("Row 1")
            Text("Row 2")
            Text("Row 3")
            Text("Row 4")
        }
        */
        
        
        /*
        //1.1 The same code snippet can be written like this using ForEach
        List {
            //Note: You can provide ForEach with a collection of data or a range. But one thing you have to take note of is that you need to tell ForEach how to identify each of the items in the collection.
            //The parameter id is for this purpose. Why does ForEach need to identify the items uniquely?
            //SwiftUI is powerful enough to update the UI automatically when some/all items in the collection are changed. To make this possible, it needs an identifier to uniquely identify the item when it's updated or removed.
            //n the below above, we pass ForEach a range of values to loop through. The identifier is set to the value itself (i.e. 1, 2, 3, or 4). The index parameter stores the current value of the loop.
         
            ForEach(1...4, id: \.self) { index in
                Text("Row \(index)")
                // OR  Text("Item \($0)") - in this case ' index in ' - these are not required
            }
         
        }
        */
        
        /*
        //1.3 You can pass the collection of data to the List view directly. Here is the code
         
          List(1...4, id: \.self) {
              Text("Item \($0)")
          }
         
        */
        
        
        /*
        //2 - Creating a List View with Text and Images
        List(restaurantNames.indices, id: \.self) { index in
            
            HStack {
                Image(restaurantImages[index])
                    .resizable()
                    .frame(width: 40, height: 40)
                Text(restaurantNames[index])
            }
        }
        */
        
        
        //3 Working with a Collection of Data
        //Take a look at the parameters we pass into List.
        //Instead of passing the range, we pass the restaurants array and tell the List to use its name property as the identifier.
        /*
        List(restaurants, id: \.name) { restaurant in
            HStack {
                Image(restaurant.image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text(restaurant.name)
            }
        }
        */
        
        
       //4 Working with the Identifiable Protocol
        //Scenario: What happens when we have two records with the same restaurant name? Change Upstate (the 3rd item in the array) to Homei in the restaurants array like this:
       // Restaurant(name: "Homei", image: "upstate")
        //In the code, we told the List to use the restaurant's name as the unique identifier. When two restaurants have the same name, iOS considers both restaurants to be the same restaurant. Thus, it reuses the same view and renders the same image.
        //So, how do you fix this issue? -> Instead of using the name as the identifier (ID), you should give each restaurant a unique identifier.
           /*
           struct Restaurant {
              var id = UUID()
              var name: String
              var image: String
           }
           */
        
        /*
        List(restaurants, id: \.id) { restaurant in
            HStack {
                Image(restaurant.image)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(5)
                    Text(restaurant.name)
            }
        }
        */
        
        //List(restaurants, id: \.id) -> This tells the List view to use the id property of the restaurants as the unique identifier.
        
        
        //4.1 Identifiable Protocol - simplify the code by making the Restaurant struct conform to the Identifiable protocol.
        //This protocol has only one requirement, that the type implementing the protocol should have some sort of id as a unique identifier.
        //update the Restaurant struct,check 4.1
        //What's the purpose of implementing the Identifiable protocol here? With the Restaurant struct conforming to the Identifiable protocol, you can initialize the List without the id parameter.
        
        List(restaurants) { restaurant in
            HStack {
                Image(restaurant.image)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(5)
                Text(restaurant.name)
            }
        }
        
    }
}

/*
struct Restaurant {
    var name: String
    var image: String
}
*/

/*
 //Example 4.0
struct Restaurant {
   var id = UUID() //Working with the Identifiable Protocol
    //In the code, we added an id property and initialized it with a unique identifier. The UUID() function is designed to generate a random identifier that is universally unique.
    //A UUID is composed of 128-bit number, so theoretically the chance of having two same indentifers is almost zero.
   var name: String
   var image: String
}
*/

//Example 4.1
struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
