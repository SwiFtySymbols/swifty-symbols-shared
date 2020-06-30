// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiFtySymbolsShared",
	products: [
        .library(
            name: "SwiFtySymbolsShared",
            targets: ["SwiFtySymbolsShared"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "SwiFtySymbolsShared",
            dependencies: []),
        .testTarget(
            name: "SwiFtySymbolsSharedTests",
            dependencies: ["SwiFtySymbolsShared"]),
    ]
)
