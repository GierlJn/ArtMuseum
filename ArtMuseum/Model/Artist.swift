//
//  Artist.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 07.04.22.
//

import Foundation


struct Artist: Codable, Identifiable{
  let id: Int
  let title: String?
  let sortTitle: String?
  let artworkIds: String?
  let birthDate: String?
  let deathDate: String?
  
  var wrappedTitle: String{
    title ?? "N/A"
  }
  
  var wrappedSortTitle: String{
    sortTitle ?? "N/A"
  }
  
  var wrappedArtworkIds: String{
    artworkIds ?? "N/A"
  }
  
  var wrappedBirthDate: String{
    birthDate ?? "N/A"
  }
  
  var wrappedDeathDate: String{
    deathDate ?? "N/A"
  }
}
