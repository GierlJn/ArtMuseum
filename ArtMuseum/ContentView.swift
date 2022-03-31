//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct ContentView: View {
  
  @State var search = ""
  
    var body: some View {
      
      NavigationView{
        VStack {
          HStack{
            Image(systemName: "magnifyingglass")
              .padding(.leading)
            TextField("Search", text: $search)
              .lineLimit(1)
              .frame(height: 50)
          }
          .background(Color(uiColor: .systemGray6))
          .clipShape(RoundedRectangle(cornerRadius: 24))
          .padding()
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


