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
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.1/Realm.spm.zip",
        checksum: "5be6d10b5829dd7f20bd4e4cf8dab29f3985ca815de3105c9e1866aa82eda431"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.1/RealmSwift@16.1.spm.zip",
        checksum: "e9089f8080f6fd82f74cc155987921e1ce8f7f2b79622482f7a3533e4686912d"
      ),
      .target(name: "_RealmStub"),
    ]
)
