// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "CalvinckhoCapacitorContactPicker",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "CalvinckhoCapacitorContactPicker",
            targets: ["CalvinckhoCapacitorContactPicker"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "8.0.0")
    ],
    targets: [
        .target(
            name: "CalvinckhoCapacitorContactPicker",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/CalvinckhoCapacitorContactPicker",
            exclude: ["Info.plist"]
        ),
        .testTarget(
            name: "CalvinckhoCapacitorContactPickerTests",
            dependencies: ["CalvinckhoCapacitorContactPicker"],
            path: "ios/Tests/CalvinckhoCapacitorContactPickerTests"
        )
    ]
)
