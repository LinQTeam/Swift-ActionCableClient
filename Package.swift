// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ActionCableClient",
    products: [
        .library(
            name: "ActionCableClient",
            targets: ["ActionCableClient"]),
    ],
    dependencies: [
        .package(url: "https://github.com/daltoniam/Starscream.git", from: "4.0.4")
    ],
    targets: [
        .target(
            name: "ActionCableClient",
            dependencies: ["Starscream"],
            path: "Source/Classes/",
            sources: ["ActionCableClient.swift"]),
    ]
)
