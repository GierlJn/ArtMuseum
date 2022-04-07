//
//  CategorySearchItems.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct CategorySearchItems: View {
  
  @EnvironmentObject var searchListVM: SearchListViewModel
  
  var body: some View {
    HStack(spacing: 10){
      NavigationLink {
        ActiveSearchView().onAppear {
          searchListVM.selectedSearchType = .artist
        }
      } label: {
        CategoryItem(image: Image(systemName: "paintbrush.pointed"), label: "Artist")
      }
      
      NavigationLink {
        ActiveSearchView().onAppear {
          searchListVM.selectedSearchType = .artwork
        }
      } label: {
        CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
      }
      //CategoryItem(image: Image(systemName: "clock"), label: "Event")
      //CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
      //CategoryItem(image: Image(systemName: "circle.grid.cross"), label: "Exhibition")
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
