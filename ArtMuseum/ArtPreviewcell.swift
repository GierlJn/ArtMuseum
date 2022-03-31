//
//  ArtPreviewcell.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct ArtPreviewCell: View {
  
  var artworks = MockData.mockArtWorks
  
  var body: some View {
    VStack(alignment: .leading) {
      ScrollView(.horizontal, showsIndicators: false){
        HStack{
          ForEach(artworks, id: \.id){ artwork in
            NavigationLink {
              ArtworkDetail(artWork: artwork)
            } label: {
              Image(uiImage: artwork.image)
                .resizable()
                .frame(width: 200, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal, 4)
            }
          }
        }
      }
      Spacer()
    }
  }
}

struct ArtPreviewcell_Previews: PreviewProvider {
    static var previews: some View {
        ArtPreviewCell()
    }
}
