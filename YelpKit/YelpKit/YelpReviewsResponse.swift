//
//  YelpReviewsResponse.swift
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpReviewsResponse: Decodable {
    public let reviews: [YelpReview]?
    public let total: Int?
}
