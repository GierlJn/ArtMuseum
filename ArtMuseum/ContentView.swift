//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ContentView: View {
  
  var artworks = MockData.mockArtWorks
  
    var body: some View {
      List(artworks, id: \.id){ artwork in
        VStack(alignment: .leading){
          Text(artwork.title)
          HStack{
            Text(artwork.artistDisplay)
            Text(artwork.artistTitle)
          }
        }.padding()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
