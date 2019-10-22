# JailbreakDetector

A jailbreak detection package in Swift

## Installation

### Swift Package Manager

Add the dependency
```swift
dependencies: [
    .package(url: "https://github.com/jjjjaren/JailbreakDetector.git", from: "0.1.1")
]
```

Then import the package
```swift
import JailbreakDetector
```

## Usage

Usage is simple:
```swift
print(JailbreakDetector.isDeviceJailBroken()) // Prints true/false
```


