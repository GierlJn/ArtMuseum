//
//  NetworkworkManager.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 07.04.22.
//

import Foundation

enum AError: String, Error{
  case fetchError = "Error fetching"
  case errorResponse = "Return code is false"
}

struct NetworkManager{

  struct ArtworksAPI{
    static func buildUrl(query: String) -> URL?{
      guard let url = URL(string: "https://api.artic.edu/api/v1/artworks/search?q=" + query +  "&fields=id,title,artist_display,date_display,artist_title,image_id,category_titles,medium_display,dimensions,place_of_origin") else {
        return nil
      }
      return url
    }
  }
 
  
  
  func fetchArtworks(query: String) async throws -> [ArtWork] {
    guard let url = ArtworksAPI.buildUrl(query: query) else {
      fatalError()
    }
    
    do{
      let data = try await URLSession.shared.data(from: url)
      let decoder = JSONDecoder()
      decoder.keyDecodingStrategy = .convertFromSnakeCase
      guard let httpURLResponse = data.1 as? HTTPURLResponse, httpURLResponse.statusCode == 200 else{
        throw AError.errorResponse
      }
      print(data.0)
      let response = try decoder.decode(ArtWorkResponse.self, from: data.0)
      
      return response.data
    }catch{
      throw AError.fetchError
    }
  }
}
