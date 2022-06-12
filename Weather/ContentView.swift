//
//  ContentView.swift
//  Weather
//
//  Created by Joshua David Ang on 12/6/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .white ]),
                           startPoint: .topLeading,
                           endPoint: .bottomLeading)
                        .edgesIgnoringSafeArea(.all)
            VStack {
                HeaderView();
                
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
            Spacer()
    }
}
