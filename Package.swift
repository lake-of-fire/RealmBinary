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
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.4/Realm.spm.zip",
        checksum: "41afcac96c88e860fe145e31cd15cc28f517afe7bc4c0f6b7de00303c1843c15"
      ),
      .binaryTarget(
        name: "RealmSwift",
        url: "https://github.com/realm/realm-swift/releases/download/v10.54.4/RealmSwift@16.3.spm.zip",
        checksum: "547ddf37e40ba16144604f000cbe6e835db936710aa4dc2db01feeb194b24c8f"
      ),
      .target(name: "_RealmStub"),
    ]
)
