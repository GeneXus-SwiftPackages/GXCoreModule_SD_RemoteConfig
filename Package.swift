// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_RemoteConfig",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_RemoteConfig",
			targets: ["GXCoreModule_SD_RemoteConfigWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "4.1.0-beta.24")
	],
	targets: [
		.target(name: "GXCoreModule_SD_RemoteConfigWrapper",
				dependencies: [
					"GXCoreModule_SD_RemoteConfig",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_RemoteConfig",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_RemoteConfig-4.1.0-beta.24.xcframework.zip",
			checksum: "f1bb215d5e69357adc802ea65146863bf2db161b103599c3f8109479b3488823"
		)
	]
)