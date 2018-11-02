// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "test server",
    dependencies: [
        .package(url: "https://github.com/Maxatma/TPerfectHTTPServer.git", from: "2.0.0"),
        .package(url: "https://github.com/apocolipse/Thrift-Swift.git", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "test server",
            dependencies: [
                "TPerfectHTTPServer",
                "Thrift",
                ]),
        .testTarget(
            name: "test serverTests",
            dependencies: [
                "test server",
                "Thrift"
            ]),
        ],
    swiftLanguageVersions: [.v4_2]
)

