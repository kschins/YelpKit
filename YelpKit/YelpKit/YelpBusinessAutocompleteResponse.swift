//
//  YelpBusinessAutocompleteResponse.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpBusinessAutocompleteResponse: Decodable {
    public let terms: [YelpTerm]?
    public let businesses: [YelpBusiness]?
    public let categories: [YelpCategory]?
}
