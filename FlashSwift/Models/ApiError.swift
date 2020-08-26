//
//  ApiError.swift
//  FlashSwift
//
//  Created by PATRICIA S SIQUEIRA on 15/08/20.
//  Copyright © 2020 PATRICIA S SIQUEIRA. All rights reserved.
//

import Foundation

enum ApiError: Error {
    case invalidUrl
    case couldNotDecode
    case failedRequest
    case unknowEroor (statuscode: Int)
}
