//
//  MidiaModel.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 14/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

struct Video: Decodable {
    
    var videoId: String = ""
    var title: String = ""
    var description: String = ""
    var thumbnail: String = ""
    var publishedAt = Date()
    var channelTitle: String = ""
    
    enum CodingKeys : String, CodingKey {
        case snippet
        case thumbnails
        case high
        case videoContainerId = "id"
        case channelTitle

        case publishedAt
        case title
        case description 
        case thumbnail = "url"
        case videoId
    }

     init (from decoder: Decoder) throws {

        let container = try decoder.container(keyedBy: CodingKeys.self)

        let snippetContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .snippet)
        let idContainer = try container.nestedContainer(keyedBy: CodingKeys.self, forKey: .videoContainerId)

        //Parse title
        self.title = try snippetContainer.decode(String.self, forKey: .title)
        //Parse description
        self.description = try snippetContainer.decode(String.self, forKey: .description)
        //Parse publish date
        self.publishedAt = try snippetContainer.decode(Date.self, forKey: .publishedAt)
        //Parse channel Title
        self.channelTitle = try snippetContainer.decode(String.self, forKey: .channelTitle)
        //Parse thumbnails
        let thumbnailContainer = try snippetContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .thumbnails)
        let highContainer = try thumbnailContainer.nestedContainer(keyedBy: CodingKeys.self, forKey: .high)
        self.thumbnail = try highContainer.decode(String.self, forKey: .thumbnail)
        //Parse Video Id
        self.videoId = try idContainer.decode(String.self, forKey: .videoId)

    }
}
