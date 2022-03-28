//
//  ArtWorkDetail.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ArtworkDetail: View {
  var artWork = MockData.mockArtWork(id: 1)
  
    var body: some View {
      VStack{
        Image(uiImage: artWork.image)
          .resizable()
          .frame(width: 200, height: 200)
          .border(.black, width: 4)
        Text(artWork.title)
          .font(.title)
          .lineLimit(1)
          .minimumScaleFactor(0.5)
      }
    }
}

struct ArtWorkDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkDetail()
    }
}
