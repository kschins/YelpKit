//
//  YelpAPIRequest.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/19/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

protocol YelpAPIRequest: Encodable {
    /// The response type of the request that must adhere to the Decodable protocol
    associatedtype Response: Decodable
    
    /// The specific endpoint the request defines to communicate with
    var endpoint: String { get }
    
    /// TODO: Add something that allows parameters that should be encoded
    /// to be defined because, even though it works today, we don't
    /// want to encode the id for businesses or events when requesting details
}
