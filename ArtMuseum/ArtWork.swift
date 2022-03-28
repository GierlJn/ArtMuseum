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
  let artistDisplay: String
  let artistTitle: String
  let imageId: String
  let altText: String
  
  var image: UIImage{
    PlaceholderImage.artworkFullSize
  }
}
