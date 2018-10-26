//
//  YelpCategory.swift
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpCategory: Decodable {
    public let alias: String
    public let title: String
    public let parentAliases: [String]?
    public let countryWhitelist: [String]?
    public let countryBlacklist: [String]?
}
