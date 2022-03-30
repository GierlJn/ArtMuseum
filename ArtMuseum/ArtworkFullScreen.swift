//
//  ArtworkFullScreen.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 30.03.22.
//

import SwiftUI

struct ArtworkFullScreen: View {
  var artWork = MockData.mockArtWork(id: 1)
  var relatedArtworks = MockData.mockArtWorks
    var body: some View {
      
        
        
        VStack(alignment: .leading) {
          Spacer()
          Text(artWork.title)
            .foregroundColor(.white)
            .bold()
            .lineLimit(2)
            .font(.title)
            .padding()
          ScrollView(.horizontal, showsIndicators: false){
            HStack{
              ForEach(relatedArtworks, id: \.id){ singleArtwork in
                Image(uiImage: singleArtwork.image)
                  .resizable()
                  .frame(width: 180, height: 240)
                  .clipShape(RoundedRectangle(cornerRadius: 24))
                  .padding(.horizontal, 4)
              }
            }
          }
        }
        .background{
          Image(uiImage: artWork.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
        }
      
      
    }
}

struct ArtworkFullScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkFullScreen()
    }
}
