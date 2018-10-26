//
//  YelpBusinessAutocomplete.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpBusinessAutocomplete: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpBusinessAutocompleteResponse
    public var endpoint: String { return "/autocomplete" }
    
    // Parameters
    private let text: String
    private let latitude: Double
    private let longitude: Double
    private let locale: String
    
    // Request Initializer
    public init(text: String,
                latitude: Double,
                longitude: Double,
                locale: YelpLocale = .english_unitedStates) {
        self.text = text
        self.latitude = latitude
        self.longitude = longitude
        self.locale = locale.rawValue
    }
}
