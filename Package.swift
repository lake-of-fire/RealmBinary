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
            url: "https://github.com/realm/realm-swift/releases/download/v10.51.0/Realm.spm.zip",
            checksum: "52c24b44863f83433592590035ba7cf55478cb076b659a68218e8d98648ef115"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.51.0/RealmSwift@15.4.spm.zip",
            checksum: "b39f8b7ed1d432f3bc5c65649997d00676062a9e73e3fcda07d5146744c79736"
        )
    ]
)
