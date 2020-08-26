//
//  CacheManagerMidia.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 16/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

class CacheManagerMidia {
    
    static var cache = [String: Data]()
    
    static func setVideoCache(_ url:String, _ data: Data?) {
        
        // Set the image data and use the url as the key
        cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        // Try to get the data for the specified url
        return cache[url]
    }
}
