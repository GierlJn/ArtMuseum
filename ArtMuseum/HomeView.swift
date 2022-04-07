//
//  ContentView.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import SwiftUI

struct HomeView: View {
  
  @State var showSearchResults = false
  @State var searchType = SearchType.artwork
  @EnvironmentObject var appState: AppState
  
    var body: some View {
      NavigationView{
        VStack(alignment: .leading) {
          HStack{
            Spacer()
            VStack(spacing: 1){
              Text("Current location")
                .foregroundColor(.gray)
              HStack{
                Image(systemName: "mappin.and.ellipse")
                  .resizable()
                  .frame(width: 12, height: 12)
                  .foregroundColor(.red)
                Text("Birningham, UK")
                  .bold()
              }
            }
            Spacer()
          }
          VStack(alignment: .leading){
            Text("Good Morning")
              .font(.largeTitle)
              .bold()
            Text("Julian")
              .font(.largeTitle)
              .bold()
          }.padding(.horizontal)
            
          SearchField().environmentObject(appState)
            .padding(.horizontal)
            .padding(.bottom)
          CategorySearchItems().environmentObject(appState)
          ExhibitionList()
        }
        
        .navigationBarHidden(true)
      }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
      HomeView()
    }
}
