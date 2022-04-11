//
//  ExhibitionList.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct HorizontalShowCase: View {
  var body: some View {
    List{
      Section {
        HorizontalListCell().listRowSeparator(.hidden)
      } header: {
        HStack{
          Text("Van Gogh")
            .font(.title2)
            .foregroundColor(.black)
            .bold()
            
          Spacer()
          Text("See all")
        }
      }.textCase(nil)
    }.listStyle(PlainListStyle())
      
  }
}

struct ExhibitionList_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalShowCase()
    }
}
