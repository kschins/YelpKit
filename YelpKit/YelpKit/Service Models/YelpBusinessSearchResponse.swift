//
//  YelpBusinessSearchResponse.swift
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpBusinessSearchResponse: Decodable {
    public let businesses: [YelpBusiness]
    public let total: Int
    public let region: YelpRegion?
}
