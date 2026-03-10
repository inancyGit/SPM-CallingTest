// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
let package = Package(
    name: "AzureCommunicationCalling",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        // Expose Calling as its own product
        .library(
            name: "AzureCommunicationCalling",
            targets: ["AzureCommunicationCalling"]
        ),
        // Expose Common as its own product
        .library(
            name: "AzureCommunicationCommon",
            targets: ["AzureCommunicationCommon"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "AzureCommunicationCalling",
            url: "https://github.com/Azure/Communication/releases/download/v2.18.2-beta.2/AzureCommunicationCalling-2.18.2-beta.2.zip",
            checksum: "3f91ce00e49f2b459a4e2c0284ec1259f1b1198003aaa7fa90e180530063667d"//"106ea901edfc49e18dd96440f3913e05a971b908d3b1017eceee652505846d09"
        ),
        .binaryTarget(
            name: "AzureCommunicationCommon",
            url:"https://github.com/Azure/azure-sdk-for-ios/releases/download/AzureCommunicationCommon_1.3.3/AzureCommunicationCommon_1.3.3.xcframework.zip",
            checksum: "4694c77d1ef30178197c458195474b78b4e28098c821e0392c420cf5f0762568"
        )
    ]

)
