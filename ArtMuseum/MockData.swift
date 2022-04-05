//
//  MockData.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import Foundation

struct MockData{
  static var mockArtWorks: [ArtWork] {
    var mocks = [ArtWork]()
    for i in 0..<10{
      mocks.append(MockData.mockArtWork(id: i))
    }
    return mocks
  }
  
  static func mockArtWork(id: Int)->ArtWork{
    ArtWork(id: id, title: "MockTitle", dateDisplay: "1930", artistTitle: "Johannes Mock", imageId: "0330a6dd-774e-eff1-0073-2be5f85b81d0", categoryTitles: ["Contemporary Art, Contemporary Art, Contemporary Art, Contemporary Art"], thumbnail: Thumbnail(altText: "A black-and-white perspective aerial photograph of city blocks, one section overlaid with drawings of building developments."), mediumDisplay: "Cardboard and wood pole", dimensions: "190.5 × 177.8 × 38.1 cm (75 × 70 × 15 in.)", placeOfOrigin: "Berlin")
  }
}
