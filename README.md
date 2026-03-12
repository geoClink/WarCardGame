# WarCardGame

An interactive SwiftUI implementation of the classic card game "War" for iOS and macOS (SwiftUI-ready). This small project demonstrates building a simple card game UI using SwiftUI, asset catalogs, and basic game logic.

## Features
- Clean SwiftUI-based UI with multiple views (`ContentView`, `GameView`, `MainTabView`, `SettingsView`).
- Card assets included in the Assets catalog (cards, back, backgrounds, button, logo).
- Lightweight game logic suitable for learning and extension.
- App entry point using the SwiftUI App lifecycle (`WarCardGameApp`).

## Getting Started
Requirements:
- Xcode 12 or later (recommended latest stable Xcode for best SwiftUI support)
- macOS Big Sur or later for building SwiftUI projects

To run the app:
1. Open `WarCardGame.xcodeproj` in Xcode.
2. Select a simulator or connected device.
3. Build and run (Cmd+R).

## Project Structure
- `WarCardGame/` - main SwiftUI app and views
  - `ContentView.swift` - App's initial view
  - `GameView.swift` - Main game interface
  - `MainTabView.swift` - Tabbed container (if present)
  - `SettingsView.swift` - App settings
  - `WarCardGameApp.swift` - App entry point
- `Assets.xcassets/` - image assets (cards, backgrounds, buttons, logo)
- `WarCardGame.xcodeproj/` - Xcode project

## Contributing
Contributions welcome. Open an issue or submit a pull request with improvements, bug fixes, or new features.
