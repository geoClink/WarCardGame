//
//  MainTabView.swift
//  WarCardGame
//
//  Created by George Clinkscales on 11/5/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            GameView()
                .tabItem { Label("Game", systemImage: "gamecontroller")}
            SettingsView()
                .tabItem { Label("Settings", systemImage: "gear")}
        }
    }
}

#Preview {
    MainTabView()
}
