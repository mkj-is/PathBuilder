// swift-tools-version:5.4

import PackageDescription

let package = Package(
    name: "PathBuilder",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6),
        .tvOS(.v13)
    ],
    products: [
        .library(
            name: "PathBuilder",
            targets: ["PathBuilder"])
    ],
    targets: [
        .target(
            name: "PathBuilder",
            dependencies: []),
        .testTarget(
            name: "PathBuilderTests",
            dependencies: ["PathBuilder"])
    ]
)
