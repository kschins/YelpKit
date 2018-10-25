//
//  YelpCategorySearch.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpCategorySearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = YelpCategoryResponse
    var endpoint: String { return "/categories" }

    // Parameters
    private let locale: String

    // Request Initializer
    init(locale: YelpLocale = .english_unitedStates) {
        self.locale = locale.rawValue
    }
}
