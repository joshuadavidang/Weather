//
//  ContentView.swift
//  Weather
//
//  Created by Joshua David Ang on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue,
                                                       isNight ? .gray : .white ]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                        .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView()
                VStack(spacing: 8) {
                    Image(systemName: isNight ? "moon.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.white)
                        .padding()
                }
                
                Spacer()
                HStack(spacing: 10) {
                    WeatherDataView(dayOfWeek: "MON", imageName: "cloud.rain.fill", temperature: 72)
                    WeatherDataView(dayOfWeek: "TUE", imageName: "cloud.rain.fill", temperature: 72)
                    WeatherDataView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 72)
                    WeatherDataView(dayOfWeek: "THUR", imageName: "wind.snow", temperature: 72)
                    WeatherDataView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 72)
                }
                .padding()
                Spacer()
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 55)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
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

struct HeaderView: View {
    var body: some View {
            Text("Cupertino, CA")
                .font(.system(size: 30, weight: .medium))
                .foregroundColor(.white)
                .padding(30)
    }
}

struct WeatherDataView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10) {
            Text(dayOfWeek)
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
        }
    }
}
