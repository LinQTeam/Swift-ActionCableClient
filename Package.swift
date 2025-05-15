// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftActionCableClient",
    products: [
        .library(
            name: "SwiftActionCableClient",
            targets: ["SwiftActionCableClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4"),
        .package(url: "https://github.com/Quick/Nimble", from: "13.7.1"),
        .package(url: "https://github.com/Quick/Quick", from: "7.6.2")
    ],
    targets: [
        .target(
            name: "SwiftActionCableClient",
            dependencies: [
                "Starscream"
            ],
            path: "Source/Classes",
            sources: [
                "ActionCableClient.swift",
                "Channel.swift",
                "Constants.swift",
                "Error.swift",
                "JSONSerializer.swift",
                "RetryHandler.swift"
            ]
        ),
        .testTarget(
            name: "ActionCableClientTests",
            dependencies: [
                "SwiftActionCableClient",
                "Nimble",
                "Quick"
            ]
        ),
    ]
)
