//
//  ContentView.swift
//  war card Game
//
//  Created by Adesh Shukla  on 16/06/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background-wood-cartoon")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                
            
                
                Button {
                    deal()
                } label: {
                     Image("button")
                }

                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .fontWeight(.bold)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .fontWeight(.bold)
                            .padding([.bottom, .trailing], 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()

            }
        }
        
        
    }
    
    func deal(){
        // Randomize the players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the CPUs card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the scores
        if playerCardValue > cpuCardValue {
            // Add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            
            // Add 1 to CPU score
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
