// swift-tools-version:5.5.0
import PackageDescription

let package = Package(
    name: "RealmBinary",
    platforms: [.iOS(.v12)],
    products: [
      .library(
        name: "Realm",
        targets: ["Realm", "_RealmStub"]
      ),
      .library(
        name: "RealmSwift",
        targets: ["RealmSwift", "Realm", "_RealmStub"]
      )
    ],
    dependencies: [
    ],
    targets: [
      .binaryTarget(
        name: "Realm",
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.2/Realm.spm.zip",
        checksum: "82605f28998c711dc8e74b43001dba7f95a2eab41b134e969a628d61b96f6adf"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.2/RealmSwift@16.1.spm.zip",
        checksum: "ae4aa7adb13dabd4a33e95c6c0b6fe51236d6773c4684f46a51be35e4183f068"
      ),
      .target(name: "_RealmStub"),
    ]
)
