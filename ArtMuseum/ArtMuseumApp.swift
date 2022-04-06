//
//  ArtMuseumApp.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

@main
struct ArtMuseumApp: App {
    var body: some Scene {
      let appState = AppState()
        WindowGroup {
          HomeView().environmentObject(appState)
        }
    }
}
