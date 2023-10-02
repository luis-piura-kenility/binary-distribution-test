// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "truvideoSdkMedia",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "truvideoSdkMedia",
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
            url: "https://github.com/luis-piura-kenility/binary-distribution-test/releases/download/0.0.10/TruvideoSdkMedia.xcframework.zip",
            checksum: "ca2bfae5dcc96431eb216ada2fc239d2f6090fc9972ba46f2d94f1487ac30ac0"
        ),
        .binaryTarget(
            name: "Shared",
            url: "https://github.com/Truvideo/truvideo-sdk-ios-core/releases/download/0.0.18/shared.xcframework.zip",
            checksum: "4445be410f9722f25088b0ff1b43af28788a19a286ab18b51e856ac25d92b6a6"
        ),
        .target(
            name: "TruvideoSdkMediaTargets",
            dependencies: [
                .target(name: "TruvideoSdkMedia"),
                .target(name: "Shared"),
                .product(name: "AWSS3", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCore", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProvider", package: "aws-sdk-ios-spm"),
                .product(name: "AWSCognitoIdentityProviderASF", package: "aws-sdk-ios-spm")
            ],
            path: "Sources"
        ),
    ]
)
