//
//  ContentView.swift
//  SwiftUIDarkMode
//
//  Created by Alex Nagy on 03/10/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .frame(height: 250)
                    .cornerRadius(20)
                    .foregroundColor(Color("accent"))
                    .shadow(color: Color("backgroundShadow"), radius: 10, x: 0, y: 0)
                ZStack {
                    HStack {
                        VStack {
                            ZStack {
                                LinearGradient(gradient: Gradient(colors: [Color("background3"), Color("background4")]), startPoint: .top, endPoint: .bottom)
                                    .mask(Image("logo")
                                        .resizable()
                                        .padding()
                                        .aspectRatio(contentMode: .fit))
                                    .shadow(color: Color("backgroundShadow"), radius: 10, x: 0, y: 0)
                            }
                            Text(" rebeloper.com ")
                                .foregroundColor(Color("background2"))
                                .fontWeight(.heavy)
                        }
                        .padding(.vertical, 25)
                        Image("Alex")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .offset(y: 20)
                    }.padding(.horizontal, 5)
                }
            }
            .padding(.horizontal, 20)
            Spacer()
            HStack(spacing: 20) {
                Image(systemName: "moon.circle")
                    .font(.system(size: 50))
                    .foregroundColor(.primary)
                Text("🤟 Dark Mode")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.secondary)
            }.padding(.horizontal, 45)
        }.padding(.vertical, 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}

