//
//  YelpEventsResponse.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpEventsResponse: Decodable {
    let total: Int?
    let events: [YelpEvent]?
}
