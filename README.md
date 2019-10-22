# JailbreakDetector

A jailbreak detection package in Swift

## Installation

### Swift Package Manager

Add the dependency
```
dependencies: [
    .package(url: "https://github.com/jjjjaren/JailbreakDetector.git", from: "0.1.1")
]
```

Then import the package
```
import JailbreakDetector
```

## Usage

Usage is simple:
```
print(JailbreakDetector.isDeviceJailBroken()) // Prints true/false
```


