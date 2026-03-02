// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "piper-objc-sample",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/IhorShevchuk/piper-objc",
                 from: "0.2.1")
    ],
    targets: [
        .executableTarget(
            name: "piper-sample",
            dependencies: [
                .product(name: "piper-player", package: "piper-objc"),
            ],
            resources: [
                .copy("resources/model.onnx"),
                .copy("resources/model.onnx.json"),
            ]
        ),
    ],
    cxxLanguageStandard: .cxx17
)
