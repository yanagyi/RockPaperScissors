//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Hiro Yanagisawa on 2024/07/06.
//

import SwiftUI

struct ContentView: View {
    @State var outputText = "Hello World!"
    var body: some View {
        VStack {
            Text(outputText)
                .font(.largeTitle)
            Button("切り替えボタン") {
                outputText = "Hi! Swift!"
            }
            .padding(.all)
            .background(.blue)
            .foregroundColor(.white)
        }
    }
}

#Preview {
    ContentView()
}
