//
//  ContentView.swift
//  Elvis
//
//  Created by Nick Nedjat on 18.01.26.
//

import SwiftUI

struct ContentView: View {
    @State private var Img1 = "0"
    @State private var Txt1 = ""
    var body: some View {
        VStack {
            Text("What's So Funny\n 'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)

            Spacer()
            
            Image(systemName: Img1)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Text(Txt1)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.purple)
            
            Spacer()
            
            HStack {
                Button("Peace") {
                    Img1 = "peacesign"
                    Txt1 = "Peace"
                }
                Button("Love") {
                    Img1 = "heart"
                    Txt1 = "Love"
                }
                Button("Understanding") {
                    Img1 = "lightbulb"
                    Txt1 = "Understanding"
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
