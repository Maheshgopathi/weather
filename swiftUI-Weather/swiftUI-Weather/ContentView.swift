//
//  ContentView.swift
//  swiftUI-Weather
//
//  Created by Gopathi Mahesh on 28/09/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    
    var body: some View {
        ZStack {
            Backgroundview(topcolor: isNight ? .black: .blue,
                           bottomcolor: isNight ? .gray: Color("lightblue"))
            
            VStack {
                
                CityName(CityName: "Madanapalle Weather")
                Mainweatherstatusview(imagename: isNight ? "moon.stars.fill":
                                        "cloud.sun.fill",
                                      temparature: 76)
                
                HStack(spacing: 14) {
                    WeatherDayView(daysofweek: "MON",
                                   imageName: "cloud.sun.fill",
                                   temparature: 74)
                    WeatherDayView(daysofweek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temparature: 88)
                    WeatherDayView(daysofweek: "WEN",
                                   imageName: "cloud.hail.fill",
                                   temparature: 55)
                    WeatherDayView(daysofweek: "THU",
                                   imageName: "wind.snow",
                                   temparature: 76)
                    WeatherDayView(daysofweek: "FRI",
                                   imageName: "sunset.fill",
                                   temparature: 74)
                    WeatherDayView(daysofweek: "SAT",
                                   imageName: "snow",
                                   temparature: 25)
                    
                    
                    
                }
                
                
                Spacer()
               
                    Button {
                        isNight.toggle()
                        
                    } label: {
                        
                        weatherbutton(title: "Change Day Time", textcolor: .blue, backgroundcolor: .white)
                        
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

struct WeatherDayView: View {
    
    var daysofweek: String
    var imageName: String
    var temparature: Int
    
    
    var body: some View {
        VStack{
            
            Text(daysofweek)
                .font(.system(size: 25, weight: .medium,design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text(" \(temparature)")
                .font(.system(size: 30,weight: .medium))
                .foregroundColor(.white)
            
        }
        .padding(.vertical, 4.0)
    }
}




struct Backgroundview: View {
    
    var topcolor: Color
    var bottomcolor: Color
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topcolor,bottomcolor]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(.all)
    }
}



struct CityName: View {
    var CityName: String
    
    var body: some View {
        Text(CityName)
            .font(.system(size: 30,weight: .heavy,design: .default))
            .foregroundColor(.yellow)
            .padding()
    }
}

struct Mainweatherstatusview: View {
    
    var imagename: String
    var temparature: Int
    
    var body: some View {
        
        VStack(spacing: 15) {
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 150)
            
            Text("\(temparature)")
                .font(.system(size: 80,weight: .medium))
                .foregroundColor(.white)
                .padding()
            
        }
        .padding(.bottom, 60)
       
    }
}



