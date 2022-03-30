//
//  ArtworkFullScreen.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 30.03.22.
//

import SwiftUI

struct ArtworkFullScreen: View {
  var artWork = MockData.mockArtWork(id: 1)
    var body: some View {
      Image(uiImage: artWork.image)
        .resizable()
        .aspectRatio(contentMode: .fill)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ArtworkFullScreen_Previews: PreviewProvider {
    static var previews: some View {
        ArtworkFullScreen()
    }
}
