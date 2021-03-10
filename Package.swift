// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UserDefaultsStorage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "UserDefaultsStorage",
            targets: ["UserDefaultsStorage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/dsay/SwiftRepository.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "UserDefaultsStorage",
            dependencies: ["SwiftRepository"]),
        .testTarget(
            name: "UserDefaultsStorageTests",
            dependencies: ["UserDefaultsStorage"]),
    ]
)
