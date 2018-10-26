//
//  YelpCategoryResponse.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpCategoryResponse: Decodable {
    public let categories: [YelpCategory]?
}
