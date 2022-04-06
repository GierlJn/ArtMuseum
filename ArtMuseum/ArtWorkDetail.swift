//
//  ArtWorkDetail.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ArtworkDetail: View {
  var artWork = ArtWork.mockArtWork(id: 1)
  
    var body: some View {
      VStack(alignment: .leading){
        Image(uiImage: artWork.image)
          .resizable()
          .frame(height: 300)
          .scaledToFit()
        VStack(alignment: .leading, spacing: 10){
          Text(artWork.title)
            .font(.title2)
            .bold()
            .lineLimit(1)
            .minimumScaleFactor(0.5)
          
          Text("\(artWork.dateDisplay) by \(artWork.artistTitle)")
            .font(.body)
            .foregroundColor(.gray)
  
          Text("Medium")
            .font(.title3)
            .bold()
            .padding(.top)
          
          Text(artWork.mediumDisplay)
            .font(.body)
          
          Text("Dimensions")
            .font(.title3)
            .bold()
            .padding(.top)
          
          Text(artWork.dimensions)
            .font(.body)
          
          Text("Place of origin")
            .font(.title3)
            .bold()
            .padding(.top)
          
          Text(artWork.placeOfOrigin)
            .font(.body)
          
          Text("Description")
            .font(.title3)
            .bold()
            .padding(.top)
          
          Text(artWork.thumbnail.altText)
            .font(.body)
          
        }.padding()
        
        
        Spacer()
      }.ignoresSafeArea(.all, edges: .top)
    }
}

struct ArtWorkDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkDetail()
    }
}
