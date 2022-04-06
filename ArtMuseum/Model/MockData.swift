//
//  MockData.swift
//  ArtMuseum
//
//  Created by Julian Gierl on 28.03.22.
//

import Foundation


#if DEBUG

extension ArtWork{
  static var mockedData: [ArtWork] {
    var mocks = [ArtWork]()
    for i in 0..<10{
      mocks.append(mockArtWork(id: i))
    }
    return mocks
  }
  
  static func mockArtWork(id: Int)->ArtWork{
    ArtWork(id: id, title: "MockTitle", dateDisplay: "1930", artistTitle: "Johannes Mock", imageId: "0330a6dd-774e-eff1-0073-2be5f85b81d0", categoryTitles: ["Contemporary Art, Contemporary Art, Contemporary Art, Contemporary Art"], thumbnail: Thumbnail(altText: "A black-and-white perspective aerial photograph of city blocks, one section overlaid with drawings of building developments."), mediumDisplay: "Cardboard and wood pole", dimensions: "190.5 × 177.8 × 38.1 cm (75 × 70 × 15 in.)", placeOfOrigin: "Berlin")
  }
}

extension Event {
  static var mockedData: [Event]{
    var events = [Event]()
    for i in 0..<10{
      events.append(mockEvent(id: i))
    }
    return events
  }
  
  static func mockEvent(id: Int)->Event{
    Event(id: id, title: "Hugh Edwards Lecture: Thomas Struth and Janice Guy in Conversation", imageUrl: "https://artic-web.imgix.net/nulla7980b2b-202c-4739-a21a-2af57afb8572/Struth%2CThomas%2CArtInstituteofChicagoII%2CChicago1990.jpg?rect=0%2C352%2C2852%2C1600&auto=format%2Ccompress&q=80&fit=crop&crop=faces%2Cedges%2Centropy&w=1200&h=673", shortDescription: "<p>Join curator and chair of Photography and Media Matthew Witkovsky in conversation with Thomas&nbsp;Struth, renowned German photographer, and Janice Guy, British-born photographer turned pioneering New York gallerist, for a discussion of their life and work. </p>", description: "<p>Join curator and chair of Photography and Media Matthew Witkovsky in conversation with Thomas&nbsp;Struth, renowned German photographer, and Janice Guy, British-born photographer turned pioneering New York gallerist, for a discussion of their life and work.</p><p>Janice Guy and Thomas Struth's professional and creative paths have been intertwined since the 1970s. Struth helped preserve Guy’s photographs when she turned from art studies in Düsseldorf to gallery work in Naples; Guy in turn introduced Struth to museums, people, and places that would prompt important work. The two close friends will discuss aspects of art arising from these personal intersections together with curator Matthew Witkovsky, a long-standing acquaintance of both artists.&nbsp;</p><p>The annual Hugh Edwards Lecture in Photography honors the memory of Hugh Edwards, curator of photography from 1959 to 1970. A tribute to Edwards’s tremendous dedication and achievements during his time at the Art Institute, this annual lecture has been established to bring internationally renowned practitioners in photography to as broad an audience as possible. The lecture is free and open to the public.</p><p>The Hugh Edward Lecture series is supported by the Crossed Purposes Foundation Fund.</p>", startDate: Date.now, endDate: Date.now, location: "Fullerton Hall")
  }
}

#endif
