//
//  SettingsView.swift
//  WarCardGame
//
//  Created by George Clinkscales on 11/5/25.
//

import SwiftUI

struct SettingsView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    @State private var maxScore: Int = 10
    @State private var isGameOver: Bool = false
    @State private var winnerMessage: String = ""
    
    var body: some View {
        // Control to choose the score limit
        
        ZStack {
            Image("backgroundCloth")
        
            VStack {
                Text("Play to:")
                    .foregroundColor(.white)
                Stepper(value: $maxScore, in: 1...10) {
                    Text("\(maxScore)")
                        .foregroundColor(.white)
                }
                .padding(.horizontal, 75)
                .disabled(playerScore > 0 || cpuScore > 0)
            }
        }
    }
}

#Preview {
    SettingsView()
}
