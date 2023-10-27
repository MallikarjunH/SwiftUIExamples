//
//  ContentView.swift
//  Wheather_App
//
//  Created by Mallikarjun H on 27/10/23.
//
//Video Tutorial: https://www.youtube.com/watch?v=b1oC7sLIgpI

    
import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            BackgroundView(topColor: Color.blue, bottomColor: Color.white)
            
            VStack {
        
                CityNameView(cityName: "Bangalore, KA")
    
                CityTemperatureView(imageName: "cloud.sun.fill", temeratureValue: 23)
                
                HStack (spacing: 18) {
                    
                    WheatherDayView(dayOfTheWeek: "TUE", imageName: "cloud.sun.fill", temperature: 31)
                    WheatherDayView(dayOfTheWeek: "WED", imageName: "sun.max.fill", temperature: 51)
                    WheatherDayView(dayOfTheWeek: "THU", imageName: "wind", temperature: 66)
                    WheatherDayView(dayOfTheWeek: "FRI", imageName: "sunset.fill", temperature: 44)
                    WheatherDayView(dayOfTheWeek: "SAT", imageName: "moon.stars.fill", temperature: 38)
                }
                .padding(35)
                
                Spacer()
                
                Button {
                    print("clicked")
                } label: {
                    WheatherButtonView(buttonTitle: "Change Day Time", bgColor: Color.white, fgColor: Color.blue)
                }
                
                Spacer()
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct WheatherDayView: View {
    
    var dayOfTheWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack (alignment: .center, spacing: 5) {
            Text(dayOfTheWeek)
                .foregroundColor(.white).fontWeight(.medium)
            Image(systemName: imageName)
                .renderingMode(.original).resizable().aspectRatio(contentMode: .fit)
                .frame(width: 50,height: 50)
            
            Text("\(temperature)°").foregroundColor(.white).font(.system(size: 28))
        }
    }
}

struct BackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(colors: [topColor, bottomColor], startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
    }
}

struct CityNameView: View {
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .foregroundColor(.white).font(.system(size: 30,weight: .medium)).padding()
    }
}


struct CityTemperatureView: View {
    
    var imageName:String
    var temeratureValue: Int
    
    var body: some View {
        VStack (spacing: 5) {
            
            Image(systemName: imageName).resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 180,height: 180)
            Text("\(temeratureValue)°").font(.system(size: 64, weight: .medium)).foregroundColor(.white)
        }
    }
}




