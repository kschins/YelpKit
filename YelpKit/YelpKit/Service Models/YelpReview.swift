//
//  YelpReview.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

struct YelpReview: Decodable {
    let text: String?
    let url: URL?
    let rating: Int?
    let timeCreated: String?
    //let user: YelpUser?
}
