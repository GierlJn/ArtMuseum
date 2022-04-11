//
//  ImageLoader.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 08.04.22.
//

import SwiftUI

struct ImageLoader: View {
  
  var imageId: String!
  
    var body: some View {
      AsyncImage(url: urlBuilder()){ image in
        image.resizable()
      } placeholder: {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .black))
      }
    }
  
  func urlBuilder()->URL?{
    URL(string: "https://www.artic.edu/iiif/2/\(imageId!)/full/843,/0/default.jpg")
  }
}

struct ImageLoader_Previews: PreviewProvider {
    static var previews: some View {
      ImageLoader(imageId: "")
    }
}
