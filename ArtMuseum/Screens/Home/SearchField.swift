//
//  SearchView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct SearchField: View {
  
  @EnvironmentObject var searchListVM: SearchViewModel
  
  var body: some View {
    HStack{
      Image(systemName: "magnifyingglass")
        .padding(.leading)
      TextField("Search artwork, artist or exhibition", text: $searchListVM.query)
        .lineLimit(1)
        .frame(height: 50)
    }
    .background(Color(uiColor: .systemGray6))
    .clipShape(RoundedRectangle(cornerRadius: 24))
  }
}

struct SearchField_Previews: PreviewProvider {
    static var previews: some View {
        SearchField().environmentObject(SearchViewModel())
    }
}
