//
//  ContentView.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 09/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Beach")
                    .font(.title)
                HStack {
                    Text(/*@START_MENU_TOKEN@*/"Adalah penangkaran penyu"/*@END_MENU_TOKEN@*/)
                        .font(.subheadline)
                    Spacer()
                    Text("Ujung genteng")
                        .font(.subheadline)
                }
                .foregroundColor(.secondary)
                
                Divider()
                Text("Tentang Turtle beach")
                    .font(.title2)
                Text("Deskripsinya disini tentang turtle")
                
            }
            .padding()
            Spacer()
    }
        }
            
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
