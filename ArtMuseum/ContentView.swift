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
        VStack(alignment: .leading) {
          SearchView()
            .padding()
          HStack(spacing: 10){
            CategoryItem(image: Image(systemName: "paintbrush.pointed"), label: "Artist")
            CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
            CategoryItem(image: Image(systemName: "circle.grid.cross"), label: "Category")
          }.padding(.vertical)
            .padding(.leading)
          ExhibitionList()
        }
        
        .navigationBarHidden(true)
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
