//
//  Navigation.swift
//  YelpKitExample
//
//  Created by Kasey Schindler on 10/25/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

enum Endpoints: Int {
    
    case business
    case category
    case event
    
    static func count() -> Int {
        return 3
    }
    
    func title() -> String {
        switch self {
        case .business: return "Business"
        case .category: return "Category"
        case .event: return "Event"
        }
    }
    
    enum Business: Int {
        case phone
        case details
        case autocomplete
        case transaction
        case search
        case match
        case reviews
        
        static func count() -> Int {
            return 7
        }
        
        func title() -> String {
            switch self {
            case .phone: return "Phone"
            case .details: return "Details"
            case .autocomplete: return "Autocomplete"
            case .transaction: return "Transactions"
            case .search: return "Search"
            case .match: return "Match"
            case .reviews: return "Reviews"
            }
        }
    }
    
    enum Category: Int {
        case search
        case details
        
        static func count() -> Int {
            return 2
        }
        
        func title() -> String {
            switch self {
            case .search: return "Search"
            case .details: return "Details"
            }
        }
    }
    
    enum Event: Int {
        case search
        case lookup
        case featured
        
        static func count() -> Int {
            return 3
        }
        
        func title() -> String {
            switch self {
            case .search: return "Search"
            case .lookup: return "Lookup"
            case .featured: return "Featured"
            }
        }
    }
}
