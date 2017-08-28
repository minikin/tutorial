# Tutorial : an awesome onboarding for iOS
More info soon

## Features


## Requirements


## Installation

### CocoaPods

CocoaPods is a dependency manager for Cocoa projects. You can install it with the following command:

$ gem install cocoapods
CocoaPods 1.1.0+ is required to build Tutorial.
To integrate Tutorial into your Xcode project using CocoaPods, specify it in your Podfile:

source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'Tutorial',
end
Then, run the following command:

$ pod install


### Carthage
### Swift Package Manager
The Swift Package Manager is a tool for automating the distribution of Swift code and is integrated into the swift compiler. It is in early development, but Tutorial does support its use on supported platforms.

Once you have your Swift package set up, adding Tutorial as a dependency is as easy as adding it to the dependencies value of your Package.swift.

dependencies: [
    .Package(url: "https://github.com/minikin/tutorial.git")
]

### Manually
## Usage

## Credits
Tutorial is owned and maintained by Sasha Prokhorenko.
You can follow me on Twitter at  [@minikin](https://twitter.com/minikin) for project updates and releases.

## License
Tutorial is released under the MIT license. [See LICENSE](https://github.com/minikin/tutorial/blob/master/LICENSE.md) for details.
