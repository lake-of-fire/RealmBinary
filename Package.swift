// swift-tools-version:5.6
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
            url: "https://github.com/realm/realm-swift/releases/download/v10.50.1/Realm.spm.zip",
            checksum: "942fc39917f4d572d5a2aae6a115c9f50a0954e61351aed3553c84d63ad3f2dc"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.50.1/RealmSwift@15.4.spm.zip",
            checksum: "208755d16d189372065e43901e5406e050197f98207142bc788487068f1a0843"
        )
    ]
)
