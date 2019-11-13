// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ModelAppleDump",
    products: [
        .executable(name: "modelappledump", targets: ["Main"]),
        .library(
            name: "ModelAppleDump",
            targets: ["ModelAppleDump"])
    ],
    dependencies: [
        .package(url: "https://github.com/scinfu/SwiftSoup.git", from: "2.2.2")
    ],
    targets: [
        .target(
            name: "ModelAppleDump",
            dependencies: ["SwiftSoup"]
        ),
        .target(
              name: "Main",
              dependencies: ["ModelAppleDump"])
    ]
)
