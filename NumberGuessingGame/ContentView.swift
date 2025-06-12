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
    @State private var alertMessage = ""
    
    var body: some View {
        VStack {
            TextField("Guess the number", text: $guess)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.gray)
                .padding()
            
            Button("Submit Guess") {
                if let guessedNumber = Int(guess) {
                    numberOfTries += 1
                    if guessedNumber < number {
                        alertMessage = "Too low! Try again."
                    } else if guessedNumber > number {
                        alertMessage = "Too high! Try again."
                    } else {
                        alertMessage = "Congratulations! You guessed the number in \(numberOfTries) tries."
                    }
                } else {
                    alertMessage = "Please enter a valid number"
                }
                showingAlert = true
            }
            .buttonStyle(.borderedProminent)
            .tint(.green)
        }
        .alert("Number Guessing Game", isPresented: $showingAlert) {
            Button("Play Again") {
                number = Int.random(in: 1...20)
                numberOfTries = 0
                guess = ""
            }
            Button("OK", role: .cancel) {
                
            }
        } message : {
            Text(alertMessage)
        }
    }
}
    #Preview {
        ContentView()
    }
