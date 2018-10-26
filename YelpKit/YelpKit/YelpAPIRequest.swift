//
//  YelpAPIRequest.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/19/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public protocol YelpAPIRequest: Encodable {
    /// The response type of the request that must adhere to the Decodable protocol
    associatedtype Response: Decodable
    
    /// The specific endpoint the request defines to communicate with
    var endpoint: String { get }
}
