//
//  YelpEventsResponse.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpEventsResponse: Decodable {
    public let total: Int?
    public let events: [YelpEvent]?
}
