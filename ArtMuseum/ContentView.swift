//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ContentView: View {
  
    var body: some View {
      
      NavigationView{
        List{
          Section {
            ArtPreviewCell().listRowSeparator(.hidden)
          } header: {
            HStack{
              Text("Van Gogh")
                .font(.title2)
                .foregroundColor(.black)
                .bold()
                .padding()
              Spacer()
              Text("See all")
            }
          }.textCase(nil)
        }.listStyle(PlainListStyle())
          
        
        
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
