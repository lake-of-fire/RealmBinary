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
        .package(url: "https://github.com/realm/realm-swift.git", from: "20.0.3"),
    ],
    targets: [
//      .binaryTarget(
//        name: "Realm",
//       url: "https://github.com/realm/realm-swift/releases/download/v10.54.5/Realm.spm.zip",
//       checksum: "1afe6dd032bef623701201bc9c182cb0bb0400ea15d9859d0073a7e6f125f322"
//        // url: "https://github.com/realm/realm-swift/releases/download/v10.54.3/Realm.spm.zip",
//        // checksum: "f2d3ddc1b4f19f8b81dbd1ed40e0b19aeab3c5925b2dab06c749adb5c003e022"
//      ),
//      .binaryTarget(
//        name: "RealmSwift",
//       url: "https://github.com/realm/realm-swift/releases/download/v10.54.5/RealmSwift@16.2.spm.zip",
//       checksum: "a5d00e4a578e9e5cbf8ebb339bde4cd562e2af47c051fc6dc13b60b811ad50e9"
//        // url: "https://github.com/realm/realm-swift/releases/download/v10.54.3/RealmSwift@16.2.spm.zip",
//        // checksum: "b6b9d80f6bc091257f95aa4b22362ea737c22b139d8f408039e60c251bf7f97d"
//      ),
        .target(
//            name: "_RealmStub",
            name: "RealmSwift",
            dependencies: [
                .product(name: "RealmSwift", package: "realm-swift"),
            ]
        ),
    ]
)
