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
        
        //1. Refactoring code and customizing the example
        /*
        List(restaurants) { restaurant in
            BasicImageRow(restaurant: restaurant)
        }
        */
        
        //2. Playing with some UI - example 2
        List(restaurants.indices) { index in
            
            if (0...1).contains(index) { FullImageRow(restaurant: self.restaurants[index])
            }
            else {
                BasicImageRow(restaurant: self.restaurants[index])
            }
        }
        
        
    }
}

struct Restaurant: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

//Refactoring code and customizing
struct FullImageRow: View {
    
    var restaurant: Restaurant
    
    var body: some View {
        
        ZStack {
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(10)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(10)
                        .opacity(0.2)
                )
            
            Text(restaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

