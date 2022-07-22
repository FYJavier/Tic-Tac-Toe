//
//  ContentView.swift
//  Tic Tac Toe
//
//  Created by Yuna on 7/22/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Tic Tac Toe")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            LazyVGrid(columns: Array(repeating: GridItem(.fixed(120), spacing: 15),count: 3), spacing: 15, content: {
                ForEach(0..<9) { index in
                    ZStack {
                        Color.blue
                        Text("X")
                            .font(.system(size:90))
                            .fontWeight(.heavy)
                    }
                    .frame(width: 120, height: 30, alignment: .center)
                    .cornerRadius(30)
                }
            })
        }
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
