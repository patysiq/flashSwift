//
//  ResponseApiQuestion.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 20/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

struct ResponseApiQuestion: Codable {
    var items: [Question]?
    
}

struct Question: Codable {
    let owner: Owner?
    let answerCount: Int?
    let score: Int?
    let link: String? // question link
    let title: String?
    
}

struct Owner: Codable {
    let reputation: Int?
    let userId: Int?
    let userType: String?
    let profileImage: String?
    let displayName: String?
    let link: String? // owner link
}
