//
//  YelpPhoneSearch.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpPhoneSearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpBusinessSearchResponse
    public var endpoint: String { return "/businesses/search/phone" }
    
    // Parameters
    private let phone: String
    
    // Request Initializer
    public init(phone: String) {
        self.phone = phone
    }
}
