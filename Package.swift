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
        .package(url: "https://github.com/aws-amplify/aws-sdk-ios-spm", exact: "2.33.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "TruvideoSdkMedia",
            url: "https://github.com/luis-piura-kenility/binary-distribution-test/releases/download/0.0.13/TruvideoSdkMedia.xcframework.zip",
            checksum: "cf9f1d07425646c6c6d79796a117d0a2d15ef5b01a00de90eb7993db08119525"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: [
                .target(name: "TruvideoSdkMedia"),
                .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProviderASF", package: "aws-sdk-ios-spm")
            ],
            path: "Sources"
        ),
    ]
)
