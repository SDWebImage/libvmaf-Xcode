// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libvmaf",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v2)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "libvmaf",
            targets: ["libvmaf"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "libvmaf",
            dependencies: [],
            path: ".",
            exclude: ["vmaf/libvmaf/src/x86", "vmaf/libvmaf/src/ext", "vmaf/libvmaf/src/compat", "vmaf/libvmaf/src/feature/x86", "vmaf/libvmaf/src/feature/common/convolution_avx.c", "vmaf/libvmaf/src/libvmaf.cpp"],
            sources: ["vmaf/libvmaf/src", "vmaf/libvmaf/include", "generate"],
            publicHeadersPath: "include",
            cSettings: [.headerSearchPath("generate"), .headerSearchPath("vmaf/libvmaf/src"), .headerSearchPath("vmaf/libvmaf/src/feature"), .headerSearchPath("vmaf/libvmaf/include/libvmaf")]
        )
    ],
    cLanguageStandard: .gnu11,
    cxxLanguageStandard: .gnucxx14
)
