//
//  SearchListViewModel.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 07.04.22.
//

import Foundation

class SearchListViewModel: ObservableObject{
  @Published var query = ""
  @Published var selectedSearchType: SearchType? = nil
}
