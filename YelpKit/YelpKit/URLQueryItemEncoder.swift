//
//  URLQueryItemEncoder.swift
//  YelpKit
//
//  Created by Kasey Schindler on 10/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

/// Encodes any encodable to a URLQueryItem list
enum URLQueryItemEncoder {
    static func encode<T: Encodable>(_ encodable: T) throws -> [URLQueryItem] {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        let data = try encoder.encode(encodable)
        let parameters = try JSONDecoder().decode([String : HTTPParameter].self, from: data)
        
        return parameters.map { URLQueryItem(name: $0, value: $1.description) }
    }
}
