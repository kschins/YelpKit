//
//  YelpPhoneSearch.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpPhoneSearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = YelpBusinessSearchResponse
    var endpoint: String { return "/businesses/search/phone" }
    
    // Parameters
    private let phone: String
    
    // Request Initializer
    init(phone: String) {
        self.phone = phone
    }
}
