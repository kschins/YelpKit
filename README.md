# YelpKit
A framework around the [Yelp Fusion API](https://www.yelp.com/developers/documentation/v3/get_started) written in Swift.

See below for all of the endpoints this framework covers:
- Business Endpoints
    - [Business Search](https://www.yelp.com/developers/documentation/v3/business_search)
    - [Phone Search](https://www.yelp.com/developers/documentation/v3/business_search_phone)
    - [Transaction Search](https://www.yelp.com/developers/documentation/v3/transaction_search)
    - [Business Details](https://www.yelp.com/developers/documentation/v3/business)
    - [Business Match](https://www.yelp.com/developers/documentation/v3/business_match)
     - [Reviews](https://www.yelp.com/developers/documentation/v3/business_reviews)
     - [Autocomplete](https://www.yelp.com/developers/documentation/v3/autocomplete)
     
- Category Endpoints
    - [All Categories](https://www.yelp.com/developers/documentation/v3/all_categories)
    - [Category Details](https://www.yelp.com/developers/documentation/v3/category)
    
- Event Endpoints
    - [Event Lookup](https://www.yelp.com/developers/documentation/v3/event)
    - [Event Search](https://www.yelp.com/developers/documentation/v3/event_search)
    - [Featured Event](https://www.yelp.com/developers/documentation/v3/featured_event)
    
## Installation
    
### Swift Package Manager
If you do not have any additional dependencies then add the following lines to your Package.swift file:
```swift
dependencies: [
    .Package(url: "https://github.com/kschins/YelpKit.git", "1.0.0")
]
```
Otherwise just add the following line to the dependencies node:
```swift
.Package(url: "https://github.com/kschins/YelpKit.git", "1.0.0")
```
Then, run the following command in Terminal:
```ruby
swift package fetch
```

### CocoaPods
[CocoaPods](http://cocoapods.org) is a third-party dependency manager that allows you to easily integrate external frameworks.
You can install CocoaPods with the following command:

```ruby
gem install cocoapods
```

To add KSYelpKit to your project, add the following line to your Podfile:

```ruby
pod 'KSYelpKit', '1.0.0'
```

Then, run the following command in Terminal:

```ruby
pod install
```

## Usage

First, you will need to visit [Yelp](https://www.yelp.com/fusion) to create an account so you can generate an API key. An API key is required to use this framework.

Once you have obtained your API key, you can do the following:
```swift
import KSYelpKit

let client = YelpAPIClient(apiKey: "YOUR_API_KEY")
let request = YelpBusinessSearch(term: "sushi", location: "Denver")
client.request(request: request) {
    switch $0 {
    case .success(let response):
        // do something with the response
    case .failure(let error):
        // do something with the error
    }
}
```
