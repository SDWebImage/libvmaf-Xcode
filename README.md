# libvmaf + Xcode

[![CI Status](http://img.shields.io/travis/SDWebImage/libvmaf-Xcode.svg?style=flat)](https://travis-ci.com/SDWebImage/libvmaf-Xcode)
[![Version](https://img.shields.io/cocoapods/v/libvmaf.svg?style=flat)](http://cocoapods.org/pods/libvmaf)
[![License](https://img.shields.io/cocoapods/l/libvmaf.svg?style=flat)](http://cocoapods.org/pods/libvmaf)
[![Platform](https://img.shields.io/cocoapods/p/libvmaf.svg?style=flat)](http://cocoapods.org/pods/libvmaf)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/SDWebImage/libvmaf-Xcode)
[![SwiftPM compatible](https://img.shields.io/badge/SwiftPM-compatible-brightgreen.svg?style=flat)](https://swift.org/package-manager/)

A wrapper for [libvmaf](https://github.com/Netflix/vmaf) + Xcode project.
This enables Carthage support.

This repo also including the CocoaPods's spec file to use libvmaf.

## Requirements

+ iOS 8
+ macOS 10.10
+ tvOS 9.0
+ watchOS 2.0

## Note

This Carthage and CocoaPods support, disable the architecture specify assembly code, and use the pure C implementation instead. This because both the lack support for CocoaPods and Xcode NASM compiler.

If you want the best performance for specify architecture, try to read the [README](https://github.com/Netflix/vmaf/tree/master/libvmaf/README.md) from vmaf to build the pre-built with Meson and Ninja by your own.

## Installation

### Carthage

libvmaf is (via this repo) available through [Carthage](https://github.com/Carthage/Carthage).

```
github "SDWebImage/libvmaf-Xcode"
```

### CocoaPods

libvmaf is available through [CocoaPods](https://github.com/CocoaPods/CocoaPods).

```
pod 'libvmaf'
```

#### Swift Package Manager (Xcode 11+)

libvmaf is available through [Swift Package Manager](https://swift.org/package-manager).

```swift
let package = Package(
    dependencies: [
        .package(url: "https://github.com/SDWebImage/libvmaf-Xcode.git", from: "2.2.0")
    ]
)
```

## Usage

Use libvmaf as you would normally, this is just a repo that adds an Xcode proj.

## License

libvmaf is available under the [BSD-2-Clause-Patent License](https://github.com/Netflix/vmaf/blob/master/LICENSE).


