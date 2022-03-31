//
//  ArtWork.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import UIKit

struct ArtWork: Codable, Identifiable{
  let id: Int
  let title: String
  let dateDisplay: String
  let artistTitle: String
  let imageId: String
  let categoryTitles: [String]
  let thumbnail: Thumbnail
  let mediumDisplay: String
  let dimensions: String
  let placeOfOrigin: String
  
  var image: UIImage{
    PlaceholderImage.artworkFullSize
  }
  
}

struct Thumbnail: Codable{
  let altText: String
}
