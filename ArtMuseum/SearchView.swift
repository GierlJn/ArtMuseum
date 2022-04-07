//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct SearchView: View {
  var columns: [GridItem] =
           Array(repeating: .init(.flexible()), count: 2)
  
  var artworks = ArtWork.mockedData
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("")
      SearchField()
        .padding()
      ScrollView{
        LazyVGrid(columns: columns){
          ForEach(artworks, id: \.id){ artwork in
            SeachGridItem(artwork: artwork)
          }
        }
      }
    }
    .navigationTitle("Artworks")
    .navigationBarTitleDisplayMode(.large)
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView()
  }
}

struct SeachGridItem: View {
  var artwork: ArtWork
  
  var body: some View {
    VStack{
      Image(uiImage: artwork.image)
        .resizable()
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
      Text(artwork.title)
      Text(artwork.dateDisplay)
        .foregroundColor(Color(uiColor: .systemGray))
    }
  }
}


// MARK: -Routing

extension SearchView{
  struct Routing: Equatable {
    var artworkId: String?
  }
}
