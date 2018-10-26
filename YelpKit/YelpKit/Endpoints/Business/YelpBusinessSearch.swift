//
//  YelpBusinessSearch.swift
//
//  Created by Kasey Schindler on 10/18/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpBusinessSearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpBusinessSearchResponse
    public var endpoint: String { return "/businesses/search" }
    
    // Parameters
    private let term: String?
    private let location: String?
    private let latitude: Double?
    private let longitude: Double?
    private let radius: Int?
    private let categories: [String]? // TODO: make this an enum of the supported categories
    private let locale: String? // TODO: make this an enum of the supported locales
    private let limit: Int?
    private let offset: Int?
    private let sortBy: String? // TODO: make this an enum of the supported sort by types
    private let priceTiers: [String]? // TODO: make this an enum of the supported price tiers
    private let openNow: Bool?
    private let openAt: Int?
    private let attributes: [String]? // TODO: make this an enum of filter types
    
    // Request Initializer
    public init(term: String? = nil,
                location: String? = nil,
                latitude: Double? = nil,
                longitude: Double? = nil,
                radius: Int? = nil,
                categories: [String]? = nil,
                locale: String? = nil,
                limit: Int? = nil,
                offset: Int? = nil,
                sortBy: String? = nil,
                priceTiers: [String]? = nil,
                openNow: Bool? = nil,
                openAt: Int? = nil,
                attributes: [String]? = nil) {
        self.term = term
        self.location = location
        self.latitude = latitude
        self.longitude = longitude
        self.radius = radius
        self.categories = categories
        self.locale = locale
        self.limit = limit
        self.offset = offset
        self.sortBy = sortBy
        self.priceTiers = priceTiers
        self.openNow = openNow
        self.openAt = openAt
        self.attributes = attributes
    }
}
