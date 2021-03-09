// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RPC",
    products: [
        .library(name: "RPC", targets: ["RPC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git", from: "1.0.0")
    ],
    targets: [
        .target(name: "RPC", dependencies: [.product(name: "GRPC", package: "grpc-swift")], path: "Sources")
    ]
)
