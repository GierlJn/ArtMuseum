//
//  ArtMuseumApp.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

@main
struct ArtMuseumApp: App {
  
  @StateObject var appState = AppState()
  
    var body: some Scene {
        WindowGroup {
          HomeView().environmentObject(appState)
        }
    }
}
