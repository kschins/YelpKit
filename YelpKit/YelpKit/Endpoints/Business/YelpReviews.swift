//
//  YelpReviews.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpReviews: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = YelpReviewsResponse
    var endpoint: String { return "/businesses/\(id)/reviews" }
    
    // Parameters
    private let id: String
    private let locale: String
    
    // Request Initializer
    init(id: String, locale: YelpLocale = .english_unitedStates) {
        self.id = id
        self.locale = locale.rawValue
    }
}
