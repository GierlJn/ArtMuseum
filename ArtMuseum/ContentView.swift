//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ContentView: View {
  @State var showSearchResults = false
    var body: some View {
      NavigationView{
        VStack(alignment: .leading) {
          Text("")
          SearchView()
            .padding()
          NavigationLink(isActive: $showSearchResults, destination: ArtworkDetail(artWork: MockData.mockArtWork(id: 1)), label: Text("test"))
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
