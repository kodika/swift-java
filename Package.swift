// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "Java",
    products:[
        .library(
            name: "Java", 
            targets:["Java"]
        )
    ],
    dependencies: [
        // TODO: remove coder and java_swift dependencies
        .package(url: "https://github.com/kodika/swift-java-coder.git", .branch("master")),
        .package(url: "https://github.com/kodika/java_swift.git", .branch("master")),
    ],
    targets: [
        .target(
            name: "Java",
            dependencies: ["JavaCoder", "java_swift"],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
