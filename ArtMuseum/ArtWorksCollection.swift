//
//  ArtWorksCollection.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 06.04.22.
//

import SwiftUI

struct Search{
  var searchType: SearchType
  var query: String
}

struct ArtWorksCollection: View {
  @Binding var search = Search
  
  
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ArtWorksCollection_Previews: PreviewProvider {
    static var previews: some View {
        ArtWorksCollection()
    }
}
