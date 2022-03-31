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
