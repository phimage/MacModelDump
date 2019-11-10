// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AppleDump",
    products: [
        .executable(name: "appledump", targets: ["Main"]),
        .library(
            name: "AppleDump",
            targets: ["AppleDump"]),
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.2.2")
    ],
    targets: [
        .target(
            name: "AppleDump",
            dependencies: ["SwiftSoup"]),
        .target(
              name: "Main",
              dependencies: ["AppleDump"])
    ]
)
