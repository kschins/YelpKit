//
//  YelpEventLookup.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpEventLookup: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = YelpEvent?
    var endpoint: String { return "/events/\(id)" }
    
    // Parameters
    private let id: String
    private let locale: String
    
    // Request Initializer
    init(id: String, locale: YelpLocale = .english_unitedStates) {
        self.id = id
        self.locale = locale.rawValue
    }
}
