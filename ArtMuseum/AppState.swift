//
//  AppState.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 06.04.22.
//

import SwiftUI

struct ActiveSearch{
  let searchType: SearchType
  let queryParameter: String
}

class AppState: ObservableObject{
  var routing = ViewRouting()
}


extension AppState {
  struct ViewRouting: Equatable{
    var searchViewList = SearchView.Routing()
  }
}
