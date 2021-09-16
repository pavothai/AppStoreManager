// swift-tools-version:5.3
import PackageDescription
 
let package = Package(
    name: "AppStoreManager",
    platforms: [
        .iOS(.v8)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "AppStoreManager",
            targets: ["AppStoreManager"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "AppStoreManager",
            dependencies: []),
        .testTarget(
            name: "AppStoreManagerTests",
            dependencies: ["AppStoreManager"]),
    ]
)