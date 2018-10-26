//
//  YelpResult.swift
//  YelpKit
//
//  Created by Kasey Schindler on 10/26/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

/// A wrapper around the response determining a success or failure
/// - success returns the expected type defined by the request
/// - failure returns an error
public enum YelpResult<T: Decodable> {
    case success(T)
    case failure(Error)
}
