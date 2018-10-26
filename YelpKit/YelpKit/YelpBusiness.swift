//
//  YelpBusiness.swift
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

public struct YelpBusiness: Decodable {
    public let id: String?
    public let alias: String?
    public let name: String?
    public let isClosed: Bool?
    public let url: URL?
    public let reviewCount: Int?
    public let categories: [YelpCategory]?
    public let rating: Double?
    public let coordinates: YelpCoordinates?
    public let transactions: [String]?
    public let price: String?
    public let location: YelpLocation?
    public let phone: String?
    public let displayPhone: String?
    public let distance: Double?
}
