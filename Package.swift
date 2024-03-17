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
            url: "https://github.com/realm/realm-swift/releases/download/v10.48.0/Realm.spm.zip",
            checksum: "bb63b20a9d0b6651777c16549006a11af6b7556db6e2991ed57eadda62974979"
//            url: "https://github.com/realm/realm-swift/releases/download/v10.46.0/Realm.spm.zip",
//            checksum: "a2d8978b65757e862af326846b550c2e314f821fb7485573b72ac18c2d20006c"
        ),
        .binaryTarget(
            name: "RealmSwift",
            url: "https://github.com/realm/realm-swift/releases/download/v10.48.0/RealmSwift@15.3.spm.zip",
            checksum: "36d860d326237b9950d2650f1bc9000b1af0540ce1a9967ae5d7f28be7956456"
//            url: "https://github.com/realm/realm-swift/releases/download/v10.46.0/RealmSwift@15.2.spm.zip",
//            checksum: "c429db7b2b6ea209a962930db7b28dea2134ccd7520daef9e79c6b8ca3d86a77"
        )
    ]
)
