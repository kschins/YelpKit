//
//  YelpBusinessMatch.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpBusinessMatch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = [YelpBusiness]
    var endpoint: String { return "/businesses/matches" }
    
    // Parameters
    private let name: String
    private let address1: String
    private let address2: String?
    private let address3: String?
    private let city: String
    private let state: String
    private let country: String
    private let latitude: Double?
    private let longitude: Double?
    private let phone: String?
    private let zipCode: String?
    private let yelpBusinessId: String?
    private let limit: Int?
    private let matchThreshold: String?
    
    // Request Initializer
    init(name: String,
         address1: String,
         address2: String? = nil,
         address3: String? = nil,
         city: String,
         state: String,
         country: String,
         latitude: Double? = nil,
         longitude: Double? = nil,
         phone: String? = nil,
         zipCode: String? = nil,
         yelpBusinessId: String? = nil,
         limit: Int? = nil,
         matchThreshold: String? = nil) {
        self.name = name
        self.address1 = address1
        self.address2 = address2
        self.address3 = address3
        self.city = city
        self.state = state
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
        self.phone = phone
        self.zipCode = zipCode
        self.yelpBusinessId = yelpBusinessId
        self.limit = limit
        self.matchThreshold = matchThreshold
    }
}
