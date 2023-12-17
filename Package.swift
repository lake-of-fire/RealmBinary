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
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.0/Realm.spm.zip",
            checksum: "5215a659194877250a3ace4037ff228e217a77cd56af566bcc5f55730654a896"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.45.0/RealmSwift@15.0.spm.zip",
            checksum: "b8c4f8d88c574420a0668cb46d6b0d3cf30c4d0076128540ae2e092c538c04e4"
        )
    ]
)
