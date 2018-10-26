//
//  YelpReviewsResponse.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpReviewsResponse: Decodable {
    let reviews: [YelpReview]?
    let total: Int?
    let error: YelpError?
}
