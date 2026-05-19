// swift-tools-version: 6.3.2

import PackageDescription

let package = Package(
    name: "FancyAlgos",
    products: [
        .library(name: "FancyAlgos", targets: ["FancyAlgos"])
    ],
    targets: [
        .target(name: "FancyAlgos"),
        .testTarget(name: "FancyAlgosTests", dependencies: ["FancyAlgos"])
    ]
)
