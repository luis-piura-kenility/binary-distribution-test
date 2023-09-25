// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TruvideoSdkMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TruvideoSdkMedia",
            targets: ["TruvideoSdkMediaTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TruvideoSdkMedia",
            url: "https://github.com/luis-piura-kenility/binary-distribution-test/releases/tag/0.0.1/TruvideoSdkMedia.xcframework.zip",
            checksum: "bc2609256bac097a9955c3b29c6a8a81c31804811a6505491ed57c4617c7fafa"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: ["TruvideoSdkMedia"],
            path: "Sources"
        ),
    ]
)
