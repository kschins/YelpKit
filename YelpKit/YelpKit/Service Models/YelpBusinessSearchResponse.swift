//
//  YelpBusinessSearchResponse.swift
//  Eateries
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpBusinessSearchResponse: Decodable {
    let businesses: [YelpBusiness]
    let total: Int
    let region: YelpRegion?
}
