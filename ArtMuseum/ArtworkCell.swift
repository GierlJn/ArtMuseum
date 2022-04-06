//
//  ArtworkCell.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ArtworkCell: View {
  var artwork: ArtWork
  var body: some View {
    HStack{
      
      Image(uiImage: artwork.image)
        .resizable()
        .frame(width: 40, height: 40)
        .padding()
      VStack(alignment: .leading){
        Text(artwork.title)
          .font(.title)
        HStack{
          Text(artwork.dateDisplay)
        }.font(.body)
      }
      Spacer()
    }
    .padding()
  }
}

struct ArtworkCell_Previews: PreviewProvider {
    static var previews: some View {
      ArtworkCell(artwork: MockData.Artworks.mockArtWork(id: 1))
        .previewLayout(.sizeThatFits)
        
    }
}
