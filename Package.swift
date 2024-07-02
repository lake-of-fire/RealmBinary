// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v13), .macOS(.v11)],
    products: [
        .library(
            name: "Realm",
            targets: ["Realm"]),
        .library(
            name: "RealmSwift",
            targets: ["RealmSwift", "Realm"])
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(
            name: "Realm",
            url: "https://github.com/realm/realm-swift/releases/download/v10.52.1/Realm.spm.zip",
            checksum: "370d5da7128b9f0edfb3872926712276a9e9dcb9524ed6dddcbb6c664fb73408"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.52.1/RealmSwift@15.4.spm.zip",
            checksum: "179c18cf38b8bce2248e8cd3a6b56be413dea9b60fdbbee46bb4d32c91cf2500"
        )
    ]
)
