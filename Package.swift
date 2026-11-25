// swift-tools-version: 6.3

import PackageDescription

let package = Package(
    name: "Guidelines",
    products: [
        .library(
            name: "Guidelines",
            targets: ["Guidelines"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/swift-lco/Primitives.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-dsl/DSL.git",
            branch: "master"
        ),
        .package(
            url: "https://github.com/swift-lco/Schema.git",
            branch: "master"
        ),
    ],
    targets: [
        .target(
            name: "Guidelines",
            dependencies: [
                .product(
                    name: "Primitives",
                    package: "Primitives"
                ),
                .product(
                    name: "DSL",
                    package: "DSL"
                ),
                .product(
                    name: "Schema",
                    package: "Schema"
                ),
            ]
        ),
    ],
    swiftLanguageModes: [.v6]
)
