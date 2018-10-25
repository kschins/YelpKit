//
//  YelpTransactionSearch.swift
//  Eateries
//
//  Created by Kasey Schindler on 10/24/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

struct YelpTransactionSearch: YelpAPIRequest {
    
    // YelpAPIRequest Protocol
    typealias Response = YelpBusinessSearchResponse
    var endpoint: String { return "/transactions/\(transactionType.rawValue)/search" }
    
    // Parameters
    private let transactionType: YelpTransactionType
    private let latitude: Double
    private let longitude: Double
    private let location: String
    
    // Request Initializer
    init(transactionType: YelpTransactionType,
         latitude: Double,
         longitude: Double,
         location: String) {
        self.transactionType = transactionType
        self.latitude = latitude
        self.longitude = longitude
        self.location = location
    }
}
