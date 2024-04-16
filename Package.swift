// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TruvideoSdkNoiseCancelling",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TruvideoSdkNoiseCancelling",
            targets: ["TruvideoSdkNoiseCancellingTargets"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TruvideoSdkNoiseCancelling",
            url: "https://github.com/luis-piura-kenility/binary-distribution-test/releases/download/0.0.34-beta/TruvideoSdkVideo.xcframework.zip",
            checksum: "03fd83065f44f4e2d401b84f6a2d89cc37e701841cf0a4f06afebe8728f91ddf"
        ),
        .target(
            name: "TruvideoSdkNoiseCancellingTargets",
            dependencies: [
                .target(name: "TruvideoSdkNoiseCancelling"),
            ],
            path: "Sources"
        ),
    ]
)
