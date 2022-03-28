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
      NavigationView{
        VStack(alignment: .leading) {
          Text("Van Gogh")
            .font(.title)
            .bold()
            .padding()
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
                    .padding(.horizontal)
                }
              }
            }
            
          }
          Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
      }
      
      
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
