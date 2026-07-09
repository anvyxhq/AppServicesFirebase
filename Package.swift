// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "AppServicesFirebase",
    platforms: [
        .iOS(.v17)
    ],
    products: [
        .library(name: "AnvyxServiceFirebaseKit", targets: ["AnvyxServiceFirebaseKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/anvyxhq/AppServices.git", branch: "main"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", from: "11.0.0"),
    ],
    targets: [
        .target(
            name: "AnvyxServiceFirebaseKit",
            dependencies: [
                .product(name: "AnvyxServiceKit", package: "AppServices"),
                .product(name: "FirebaseAnalytics", package: "firebase-ios-sdk"),
                .product(name: "FirebaseRemoteConfig", package: "firebase-ios-sdk"),
            ]
        ),
    ]
)
