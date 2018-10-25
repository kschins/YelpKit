//
//  YelpEvent.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

struct YelpEvent: Decodable {
    let attendingCount: Int?
    let category: YelpEventCategoryFilter?
    let cost: Int?
    let costMax: Int?
    let description: String?
    let eventSiteUrl: URL?
    let id: String?
    let imageUrl: URL?
    let interestedCount: Int?
    let isCanceled: Bool?
    let isFree: Bool?
    let isOfficial: Bool?
    let latitude: Double?
    let longitude: Double?
    let name: String?
    let ticketsUrl: URL?
    let timeStart: String?
    let timeEnd: String?
    let location: YelpLocation?
    let businessId: String?
}
