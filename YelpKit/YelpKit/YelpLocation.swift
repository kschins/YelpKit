//
//  YelpLocation.swift
//
//  Created by Kasey Schindler on 9/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public struct YelpLocation: Decodable {
    public let address1: String?
    public let address2: String?
    public let address3: String?
    public let city: String?
    public let zipCode: String?
    public let country: String?
    public let state: String?
    public let displayAddress: [String]?
}
