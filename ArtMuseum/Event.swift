//
//  Event.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 06.04.22.
//

import Foundation

struct Event: Codable{
  let id: Int
  let title: String
  let imageUrl: String
  let shortDescription: String
  let description: String
  let startDate: Date
  let endDate: Date
  let location: String
}
