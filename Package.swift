// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import Foundation
import PackageDescription

let package = Package(
    name: "XCStringsToolPlugin",
    products: [
        .plugin(name: "XCStringsToolPlugin", targets: ["XCStringsToolPlugin"])
    ],
    targets: [
        .plugin(
            name: "XCStringsToolPlugin",
            capability: .buildTool(),
            dependencies: [
                .target(name: "xcstrings-tool")
            ],
            path: "XCStringsTool/Plugins/XCStringsToolPlugin"
        ),
        .binaryTarget(
            name: "xcstrings-tool",
            url: "https://github.com/liamnichols/xcstrings-tool/releases/download/1.2.0/xcstrings-tool.artifactbundle.zip",
            checksum: "6516a7d60181e222051c4ba925ec8d776390ffaa76789fd0a6f2f8a5fc364796"
        )
    ]
)
