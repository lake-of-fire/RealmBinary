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
        checksum: "8777f6629b2dccdeb6bc02cc10680fcedea46f3b3ff855b8c594b8c8d32300b9"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.2/RealmSwift@16.2.spm.zip",
        checksum: "5edb2fccdb6997de33ba1193e7091435e6881d288e0194e09146653f0e5ae902"
      ),
      .target(name: "_RealmStub"),
    ]
)
