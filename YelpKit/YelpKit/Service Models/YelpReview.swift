//
//  YelpReview.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

public struct YelpReview: Decodable {
    public let text: String?
    public let url: URL?
    public let rating: Int?
    public let timeCreated: String?
    public let user: YelpUser?
}
