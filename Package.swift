// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12), .macOS(.v10_14)],
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
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.3/Realm.spm.zip",
            checksum: "db7ed7e71a7d2b17ebb504cf05de1e31b5d7c9a4eee9e908fc88080564f56c25"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.3/RealmSwift@15.2.spm.zip",
            checksum: "4baa92fbe999a0240b11bab3246fe16112faa4e42cfe2d9583258ec364ec1340"
        )
    ]
)
