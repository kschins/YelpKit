//
//  YelpAPIClient.swift
//
//  Created by Kasey Schindler on 10/19/18.
//  Copyright © 2018 Curiously Creative, LLC. All rights reserved.
//

import Foundation

public final class YelpAPIClient {
    /// A wrapper around the response determining a success or failure
    /// - success returns the expected type defined by the request
    /// - failure returns an error
    public enum YelpResult<T: Decodable> {
        case success(T)
        case failure(Error)
    }
    
    private let yelpBaseUrl = URL(string: "https://api.yelp.com/v3")!
    private let apiKey = "YOUR_API_KEY_HERE"
    
    lazy private var session: URLSession = {
        let configuration = URLSessionConfiguration.default
        configuration.httpAdditionalHeaders = ["Authorization" : "Bearer \(apiKey)", "Content-Type" : "application/json", "Accept" : "application/json"]
        
        return URLSession(configuration: configuration)
    }()
    
    public init() {}
    
    public func request<T: YelpAPIRequest>(request: T, completion: @escaping (YelpResult<T.Response>) -> ()) {
        var urlRequest = URLRequest(url: endpoint(for: request))
        urlRequest.httpMethod = "GET"
        
        let task = session.dataTask(with: urlRequest) { data, response, error in
            if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.keyDecodingStrategy = .convertFromSnakeCase
                    let decodedResponse = try decoder.decode(T.Response.self, from: data)
                    
                    DispatchQueue.main.async {
                        completion(.success(decodedResponse))
                    }
                } catch let error {
                    DispatchQueue.main.async {
                        print(error.localizedDescription)
                        completion(.failure(error))
                    }
                }
            } else if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            }
        }
        task.resume()
    }
    
    private func endpoint<T: YelpAPIRequest>(for request: T) -> URL {
        guard let requestUrl = URL(string: "\(yelpBaseUrl)\(request.endpoint)") else {
            fatalError("Invalid endpoint: \(request.endpoint)")
        }
        
        guard let parameters = try? URLQueryItemEncoder.encode(request) else {
            fatalError("Invalid parameter encoding: \(request.endpoint)")
        }
        
        guard var components = URLComponents(url: requestUrl, resolvingAgainstBaseURL: true) else {
            fatalError("Invalid components: \(request.endpoint)")
        }
        
        components.queryItems = parameters
        
        return components.url!
    }
    
    /// Encodes any encodable to a URLQueryItem list
    private enum URLQueryItemEncoder {
        static func encode<T: Encodable>(_ encodable: T) throws -> [URLQueryItem] {
            let encoder = JSONEncoder()
            encoder.keyEncodingStrategy = .convertToSnakeCase
            let data = try encoder.encode(encodable)
            let parameters = try JSONDecoder().decode([String : HTTPParameter].self, from: data)
            
            return parameters.map { URLQueryItem(name: $0, value: $1.description) }
        }
    }
    
    private enum HTTPParameter: CustomStringConvertible, Decodable {
        case string(String)
        case bool(Bool)
        case int(Int)
        case double(Double)
        
        enum HTTPParameterError: Error {
            case encoding
        }
        
        init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            
            if let string = try? container.decode(String.self) {
                self = .string(string)
            } else if let bool = try? container.decode(Bool.self) {
                self = .bool(bool)
            } else if let int = try? container.decode(Int.self) {
                self = .int(int)
            } else if let double = try? container.decode(Double.self) {
                self = .double(double)
            } else {
                throw HTTPParameterError.encoding
            }
        }
        
        var description: String {
            switch self {
            case .string(let string):
                return string
            case .bool(let bool):
                return String(describing: bool)
            case .int(let int):
                return String(describing: int)
            case .double(let double):
                return String(describing: double)
            }
        }
    }
}
