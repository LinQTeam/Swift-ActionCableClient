// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Swift-ActionCableClient",
    products: [
        .library(
            name: "Swift-ActionCableClient",
            targets: ["Swift-ActionCableClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "3.1.1"),
        .package(url: "https://github.com/Quick/Nimble.git", from: "11.2.1"),
        .package(url: "https://github.com/Quick/Quick.git", from: "6.1.0")
    ],
    targets: [
        .target(
            name: "Swift-ActionCableClient",
            dependencies: ["Starscream", "Nimble", "Quick"],
            path: "Source/Classes/**/*",
            sources: ["ActionCableClient.swift"]),
    ]
)
