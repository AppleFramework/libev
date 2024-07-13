// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "libev",
    platforms: [
        .macOS(.v10_13),
        .iOS(.v12),
        .tvOS(.v12),
        .visionOS(.v1)
    ],
    products: [
        .library(
            name: "ev",
            targets: ["ev"]
        ),
        .library(
            name: "libev",
            targets: ["libev"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "ev",
            url: "https://github.com/AppleFramework/libev/releases/download/4.33/ev.xcframework.zip",
            checksum: "edb87770ad390a4dff24b85f2ab567f6c3a13e30adf8f722d957b120e2b51e42"
        ),
        .binaryTarget(
            name: "libev",
            url: "https://github.com/AppleFramework/libev/releases/download/4.33/libev.xcframework.zip",
            checksum: "a4ab5be3c9303a6aac7849c7f5dda32d53fc45bebe516786ac46ade6d40c9405"
        )
    ]
)
