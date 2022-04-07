//
//  AppState.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 06.04.22.
//

import SwiftUI


class AppState: ObservableObject{
  @Published var query: String = ""
  @Published var type: SearchType = .artwork
  @Published var showSearch: Bool = false
}


