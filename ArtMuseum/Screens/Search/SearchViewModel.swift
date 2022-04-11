//
//  SearchListViewModel.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 07.04.22.
//

import Foundation

class SearchViewModel: ObservableObject{
  @Published var query = ""
  @Published var selectedSearchType: SearchType? = nil
}

enum SearchType: String{
  case artist = "Artists"
  case artwork = "Artworks"
  case events = "Events"
}
