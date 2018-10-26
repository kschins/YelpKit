Pod::Spec.new do |s|

s.name         = "YelpKit"
s.version      = "1.0.0"
s.summary      = "A wrapper around the Yelp Fusion API written in Swift."
s.description  = <<-DESC
A wrapper around the Yelp Fusion API that contains all valid endpoints and responses.
                   DESC
s.homepage     = "https://github.com/kschins/YelpKit"
s.license      = { :type => 'MIT', :file => 'LICENSE' }

s.author    = "Kasey Schindler"
s.social_media_url   = "http://twitter.com/kschins"

s.platform     = :ios, "12.0"

s.source       = { :git => "YelpKit", :tag => "1.0.0" }
s.source_files  = 'YelpKit/YelpKit/*.swift'
s.resources = ['YelpKit/YelpKit/*.xcassets']
s.swift_version = "4.2"

end
