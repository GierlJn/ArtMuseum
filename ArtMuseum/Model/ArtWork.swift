//
//  ArtWork.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import UIKit

struct ArtWorkResponse: Codable{
  let data: [ArtWork]
}

struct ArtWork: Codable, Identifiable{
  let id: Int
  let title: String?
  let dateDisplay: String?
  let artistTitle: String?
  let imageId: String?
  //let categoryTitles: [String]
  //let thumbnail: Thumbnail
  let mediumDisplay: String?
  let dimensions: String?
  let placeOfOrigin: String?
  
  var wrappedTitle: String{
    title ?? "N/A"
  }
  
  var wrappedDateDisplay: String{
    dateDisplay ?? "N/A"
  }
  
  var wrappedArtistTitle: String{
    artistTitle ?? "N/A"
  }
  
  var wrappedMediumDisplay: String{
    mediumDisplay ?? "N/A"
  }
  
  var wrappedDimensions: String{
    dimensions ?? "N/A"
  }
  
  var wrappedPlaceOfOrigin: String{
    placeOfOrigin ?? "N/A"
  }
  
  var image: UIImage{
    PlaceholderImage.artworkFullSize
  }
  
}

struct Thumbnail: Codable{
  let altText: String
}
