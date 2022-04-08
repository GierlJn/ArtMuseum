//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI



struct SearchView: View {
  
  @State var query = ""
  var type: SearchType
  
  var columns: [GridItem] =
           Array(repeating: .init(.flexible()), count: 2)
  
  @State var artworks = [ArtWork]()
  
  var body: some View {
    VStack(alignment: .leading) {
      Text("")
      SearchField()
        .padding()
      ScrollView{
        LazyVGrid(columns: columns){
          ForEach(artworks, id: \.id){ artwork in
            NavigationLink {
              ArtworkDetail(artWork: artwork)
            } label: {
              SeachGridItem(artwork: artwork)
            }
          }
        }
      }
    }
    .navigationTitle(type.rawValue)
    .navigationBarTitleDisplayMode(.large)
    .onAppear {
      Task{
        await loadArtworks()
      }
    }
  }
  
  func loadArtworks() async{
    let networkManager = NetworkManager()
    do{
      artworks = try await networkManager.fetchArtworks(query: query)
    }catch{
      print(error)
    }
    
  }
}

struct SearchView_Previews: PreviewProvider {
  static var previews: some View {
    SearchView(type: .artwork)
  }
}

struct SeachGridItem: View {
  var artwork: ArtWork
  
  var body: some View {
    VStack{
      ImageLoader(imageId: artwork.imageId)
        .frame(height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
      Text(artwork.wrappedTitle)
        .font(.caption)
        .lineLimit(2)
        .minimumScaleFactor(0.7)
      Text(artwork.wrappedDateDisplay)
        .font(.caption)
        .minimumScaleFactor(0.7)
        .foregroundColor(Color(uiColor: .systemGray))
    }.frame(height: 290)
      .accentColor(.black)
  }
}
