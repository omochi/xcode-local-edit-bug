// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZooModule",
    products: [
        .library(
            name: "ZooModule",
            targets: ["ZooModule"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/omochi/xcode-local-edit-bug-deps", branch: "main")
    ],
    targets: [
        .target(
            name: "ZooModule",
            dependencies: [
                .product(name: "AnimalModule", package: "xcode-local-edit-bug-deps")
            ]
        ),
    ]
)
