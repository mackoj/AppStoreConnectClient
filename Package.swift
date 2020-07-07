// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "AppStoreConnect",
    products: [
        .library(name: "AppStoreConnect", targets: ["AppStoreConnectClient"]),
        .library(name: "AppStoreConnectDynamic", type: .dynamic, targets: ["AppStoreConnectClient"]),
        .library(name: "AppStoreConnectRequests", targets: ["AppStoreConnectRequests"]),
        .library(name: "AppStoreConnectDynamicRequests", type: .dynamic, targets: ["AppStoreConnectRequests"]),
        .library(name: "AppStoreConnectModels", targets: ["AppStoreConnectModels"]),
        .library(name: "AppStoreConnectDynamicModels", type: .dynamic, targets: ["AppStoreConnectModels"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.9.0")),
    ],
    targets: [
        .target(name: "AppStoreConnectSharedCode", path: "Sources/SharedCode"),
        .target(name: "AppStoreConnectModels", path: "Sources/Models"),
        .target(name: "AppStoreConnectRequests", dependencies: [ "AppStoreConnectModels", "AppStoreConnectSharedCode"], path: "Sources/Requests"),
        .target(name: "AppStoreConnectClient", dependencies: [
          "AppStoreConnectRequests",
          "Alamofire",
        ], path: "Sources/Client")
    ]
)
