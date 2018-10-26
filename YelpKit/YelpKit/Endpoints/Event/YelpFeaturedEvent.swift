//
//  YelpFeaturedEvent.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpFeaturedEvent: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpEvent?
    public var endpoint: String { return "/events/featured" }
    
    // Parameters
    private let locale: String
    private let location: String?
    private let latitude: Double?
    private let longitude: Double?
    
    // Request Initializer
    public init(locale: YelpLocale = .english_unitedStates,
                location: String? = nil,
                latitude: Double? = nil,
                longitude: Double? = nil) {
        self.locale = locale.rawValue
        self.location = location
        self.latitude = latitude
        self.longitude = longitude
    }
}
