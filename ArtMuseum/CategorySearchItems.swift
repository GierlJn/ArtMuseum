//
//  CategorySearchItems.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct CategorySearchItems: View {
  
  @EnvironmentObject var appState: AppState
  
  var body: some View {
    HStack(spacing: 10){
      Button {
        
        appState.type = .artist
        appState.showSearch = true
      } label: {
        CategoryItem(image: Image(systemName: "paintbrush.pointed"), label: "Artist")
      }
      CategoryItem(image: Image(systemName: "clock"), label: "Event")
      CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
      CategoryItem(image: Image(systemName: "circle.grid.cross"), label: "Exhibition")
    }.padding(.vertical)
      .padding(.leading)
      .accentColor(.black)
  }
}

struct CategorySearchItems_Previews: PreviewProvider {
    static var previews: some View {
        CategorySearchItems()
    }
}
