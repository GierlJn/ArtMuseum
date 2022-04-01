//
//  CategoryItem.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct CategoryItem: View {
  
  var image: Image
  var label: String
  
  var body: some View {
    VStack{
      image
        .resizable()
        .foregroundColor(.white)
        .frame(width: 30, height: 30)
        .padding()
        .background(Color.black)
        .clipShape(Circle())
      Text("\(label)")
        .font(.callout)
        .bold()
    }
  }
}


struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
      CategoryItem(image: Image(systemName: "paintbrush.pointed"), label: "Artist")
    }
}
