//
//  ResponseApiMidia.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 15/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

struct ResponseApiMidia: Decodable {
    
    var items:[Video]?
    
    init(items: [Video]?) {
        self.items = items
    }
    
    enum CodingKeys:String, CodingKey {
        case items
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.items = try container.decode([Video].self, forKey: .items)
        
    }
}
