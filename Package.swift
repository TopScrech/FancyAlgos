// swift-tools-version: 6.2.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FancyAlgos",
    products: [
        .library(name: "FancyAlgos", targets: ["FancyAlgos"]),
    ],
    targets: [
        .target(name: "FancyAlgos"),
        .testTarget(name: "FancyAlgosTests", dependencies: ["FancyAlgos"])
    ]
)
