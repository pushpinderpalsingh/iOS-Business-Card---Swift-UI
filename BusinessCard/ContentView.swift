//
//  ContentView.swift
//  BusinessCard
//
//  Created by Pushpinder Pal Singh on 16/01/20.
//  Copyright © 2020 Pushpinder Pal Singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red:0.09, green:0.63, blue:0.52, alpha:1.0))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("pushpinderpalsingh")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(width: 150.0, height: 150.00)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Pushpinder Pal Singh")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size : 25))
                Divider()
                InfoView(text: "9540000460", imageName: "phone.fill")
                InfoView(text: "pushpinderpal19@gmail.com", imageName: "envelope.fill")
            }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct InfoView: View {
    let text:String
    let imageName:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(Color.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName).foregroundColor(.green)
                Text(text)
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
