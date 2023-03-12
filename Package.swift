// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "lemon-wm",
    platforms: [
        .macOS(.v11)
    ],
    dependencies: [
        .package(
          url: "https://github.com/shpakovski/MASShortcut",
          .branch("master")
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .executableTarget(
            name: "lemon-wm",
            dependencies: ["MASShortcut"]),
        .testTarget(
            name: "lemon-wmTests",
            dependencies: ["lemon-wm"])
    ]
)
