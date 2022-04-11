//
//  CategorySearchItems.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 31.03.22.
//

import SwiftUI

struct CategorySearchItems: View {
  
  @EnvironmentObject var searchListVM: SearchViewModel
  
  var body: some View {
    HStack(spacing: 10){
      NavigationLink {
        Search(type: .artist).environmentObject(searchListVM)
      } label: {
        CategoryItem(image: Image(systemName: "paintbrush.pointed"), label: "Artist")
      }
      
      NavigationLink {
        Search(type: .artwork).environmentObject(searchListVM)
      } label: {
        CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
      }
      //CategoryItem(image: Image(systemName: "clock"), label: "Event")
      //CategoryItem(image: Image(systemName: "paintpalette"), label: "Artwork")
      //CategoryItem(image: Image(systemName: "circle.grid.cross"), label: "Exhibition")
    }.padding(.vertical)
      .padding(.leading)
      .accentColor(.black)
  }
  
  
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
}



struct CategorySearchItems_Previews: PreviewProvider {
  static var previews: some View {
    CategorySearchItems().environmentObject(SearchViewModel())
  }
}
