//
//  GameView.swift
//  WarCardGame
//
//  Created by George Clinkscales on 11/5/25.
//

import SwiftUI

struct GameView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    //Score limit and game-over state
    @State private var maxScore: Int = 10
    @State private var isGameOver: Bool = false
    @State private var winnerMessage: String = ""
    
    var body: some View {
        
        ZStack {
            
            Image("backgroundCloth")
                .resizable()
                .ignoresSafeArea()
            VStack (spacing: 10) {
                Spacer()
                Image("logo")
                Spacer()
                HStack(spacing: 80) {
                    Image(playerCard)
                    Image(cpuCard)
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                        .accessibilityLabel("Button that will create random cards for Player and CPU.")
                        .accessibilityHint("The player with the higher card will recieve a point.")
                }
                
                // Disable game when game is over
                .disabled(isGameOver)
                .opacity(isGameOver ? 0.5 : 1.0)
                
                // Reset button
                Button("Reset Game") {
                    resetGame()
                }
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                
                    Spacer()
                    HStack  {
                        Spacer()
                        VStack {
                            Text("Player")
                                .fontWeight(.bold)
                                .padding(.bottom)
                            Text(String(playerScore))
                        }
                        Spacer()
                        VStack {
                            Text("CPU")
                                .padding(.bottom)
                            Text(String(cpuScore))
                        }
                        Spacer()
                    }
                    .font(.title)
                    .foregroundColor(.white)
                    Spacer()
                }
            }
        // Alert when someone reaches the max score
        
        .alert("Game Over", isPresented: $isGameOver) {
            Button("OK",  role: .cancel) {}
        } message: {
            Text(winnerMessage + "\nFinal Score: Player \(playerScore) - CPU \(cpuScore)")
            }
        }
    
    func deal() {
        
        guard !isGameOver else {return}
        
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the cpus card
        var cpuPlayerCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuPlayerCardValue)
        
        // Update the scores
        if playerCardValue > cpuPlayerCardValue {
            // Add one to player score //
            playerScore += 1
            // Add one to player score //
        } else if cpuPlayerCardValue > playerCardValue {
            // Add one to cpu score //
            cpuScore += 1
        }
        checkForWinner()
    }
        func checkForWinner() {
            if playerScore >= maxScore {
                winnerMessage = "Player wins!"
                isGameOver = true
            } else if cpuScore >= maxScore {
                winnerMessage = "CPU wins!"
                isGameOver = true
            }
        }
        
        func resetGame() {
            playerScore = 0
            cpuScore = 0
            playerCard = "card7"
            cpuCard = "card13"
            isGameOver = false
            winnerMessage = ""
      

    }
}

#Preview {
    GameView()
}
