//
//  YelpError.swift
//
//  Created by Kasey Schindler on 10/23/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

public struct YelpError: Decodable {
    
    public enum ErrorType: Error {
        case encoding
        case decoding
        case network
        case error(String)
    }

    public let code: String?
    public let field: String?
    public let description: String?
}
