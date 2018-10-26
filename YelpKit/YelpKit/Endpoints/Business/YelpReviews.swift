//
//  YelpReviews.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpReviews: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpReviewsResponse
    public var endpoint: String { return "/businesses/\(id)/reviews" }
    
    // Parameters
    private let id: String
    private let locale: String
    
    // Request Initializer
    public init(id: String, locale: YelpLocale = .english_unitedStates) {
        self.id = id
        self.locale = locale.rawValue
    }
}
