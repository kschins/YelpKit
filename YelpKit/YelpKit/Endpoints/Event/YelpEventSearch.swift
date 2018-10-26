//
//  YelpEventSearch.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpEventSearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    public typealias Response = YelpEventsResponse
    public var endpoint: String { return "/events" }
    
    // Parameters
    private let locale: String
    private let offset: Int?
    private let limit: Int?
    private let sortBy: String? // EventSortByFilter
    private let sortOn: String? // EventSortOnFilter
    private let startDate: Int? // Unix timestamp
    private let endDate: Int? // Unix timestamp
    private let categories: Int? // EventCategoryFilter
    private let isFree: Bool?
    private let location: String? // YelpLocation
    private let latitude: Double?
    private let longitude: Double?
    private let radius: Int?
    private let excludedEvents: [String]?
    
    // Request Initializer
    public init(locale: YelpLocale = .english_unitedStates,
                offset: Int? = nil,
                limit: Int? = nil,
                sortBy: YelpEventSortByType? = nil,
                sortOn: YelpEventSortOnType? = nil,
                startDate: Int? = nil,
                endDate: Int? = nil,
                categories: Int? = nil,
                isFree: Bool? = nil,
                location: String? = nil,
                latitude: Double? = nil,
                longitude: Double? = nil,
                radius: Int? = nil,
                excludedEvents: [String]? = nil) {
        self.locale = locale.rawValue
        self.offset = offset
        self.limit = limit
        self.sortBy = sortBy?.rawValue
        self.sortOn = sortOn?.rawValue
        self.startDate = startDate
        self.endDate = endDate
        self.categories = categories
        self.isFree = isFree
        self.location = location
        self.latitude = latitude
        self.longitude = longitude
        self.radius = radius
        self.excludedEvents = excludedEvents
    }
}
