//
//  YelpError.swift
//
//  Created by Kasey Schindler on 10/23/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

public enum YelpError: Error {
    case encoding
    case decoding
    case network
    case error(String)
}
