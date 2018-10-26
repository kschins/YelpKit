//
//  YelpEvent.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

public struct YelpEvent: Decodable {
    public let attendingCount: Int?
    public let category: YelpEventCategoryFilter?
    public let cost: Int?
    public let costMax: Int?
    public let description: String?
    public let eventSiteUrl: URL?
    public let id: String?
    public let imageUrl: URL?
    public let interestedCount: Int?
    public let isCanceled: Bool?
    public let isFree: Bool?
    public let isOfficial: Bool?
    public let latitude: Double?
    public let longitude: Double?
    public let name: String?
    public let ticketsUrl: URL?
    public let timeStart: String?
    public let timeEnd: String?
    public let location: YelpLocation?
    public let businessId: String?
}
