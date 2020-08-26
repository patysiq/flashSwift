//
//  CacheManagerQuestions.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 21/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

class CacheManagerQuestion {
    
    static var cacheQuestion = [String: Data]()
    
    static func setQuestionCache(_ url:String, _ data: Data?) {
        
        // Set the image data and use the url as the key
        cacheQuestion[url] = data
    }
    
    static func getQuestionCache(_ url:String) -> Data? {
        // Try to get the data for the specified url
        return cacheQuestion[url]
    }
}
