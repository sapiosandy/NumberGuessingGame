//
//  ContentView.swift
//  NumberGuessingGame
//
//  Created by Sandra Gomez on 6/11/25.
//

import SwiftUI

struct ContentView: View {
    @State private var number = Int.random(in: 1...20)
    @State private var guess = ""
    @State private var showingAlert = false
    @State private var numberOfTries = 0
    
    
    var body: some View {
        VStack {
            TextField("Guess the number", text: $guess)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.gray)
                .padding()
            
            Button("Submit Guess"){
            
                }
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
    }
#Preview {
    ContentView()
}
