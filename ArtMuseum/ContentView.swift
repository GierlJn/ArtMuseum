//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

enum SearchType{
  case artist, artwork, category
}

struct ContentView: View {
  
  @State var showSearchResults = false
  
    var body: some View {
      NavigationView{
        VStack(alignment: .leading) {
          Text("")
          SearchField()
            .padding()
          CategorySearchItems()
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
