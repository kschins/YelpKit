//
//  YelpError.swift
//
//  Created by Kasey Schindler on 10/23/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

struct YelpError: Decodable {
    enum ErrorType: Error {
        case encoding
        case decoding
        case network
        case error(String)
    }

    let code: String?
    let field: String?
    let description: String?
}
