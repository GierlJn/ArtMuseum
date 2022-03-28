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
    for i in 0..<5{
      mocks.append(MockData.mockArtWork(id: i))
    }
    return mocks
  }
  
  static func mockArtWork(id: Int)->ArtWork{
    ArtWork(id: id, title: "MockTitle", artistDisplay: "Johannes Mock", artistTitle: "1930", imageId: "0330a6dd-774e-eff1-0073-2be5f85b81d0", altText: "Abstract painting composed of small vertical dabs of multiple shades of blue with a small area of similar strokes of red, orange, and yellow in the upper right.")
  }
}
