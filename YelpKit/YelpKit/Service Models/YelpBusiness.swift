//
//  YelpBusiness.swift
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

struct YelpBusiness: Decodable {
    let id: String?
    let alias: String?
    let name: String?
    let isClosed: Bool?
    let url: URL?
    let reviewCount: Int?
    let categories: [YelpCategory]?
    let rating: Double?
    let coordinates: YelpCoordinates?
    let transactions: [String]?
    let price: String?
    let location: YelpLocation?
    let phone: String?
    let displayPhone: String?
    let distance: Double?
}
