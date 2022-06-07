// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "WeatherSensorService",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(
            name: "WeatherSensorService",
            targets: ["WeatherSensorService"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WeatherSensorService",
            dependencies: []),
        .testTarget(
            name: "WeatherSensorServiceTests",
            dependencies: ["WeatherSensorService"]),
    ]
)
