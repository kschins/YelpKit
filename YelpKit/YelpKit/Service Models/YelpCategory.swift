//
//  YelpCategory.swift
//  Eateries
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpCategory: Decodable {
    let alias: String
    let title: String
    let parentAliases: [String]?
    let countryWhitelist: [String]?
    let countryBlacklist: [String]?
}
