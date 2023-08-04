// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_RemoteConfig",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_RemoteConfig",
			targets: ["GXCoreModule_SD_RemoteConfigWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.1.0-rc.4")
	],
	targets: [
		.target(name: "GXCoreModule_SD_RemoteConfigWrapper",
				dependencies: [
					"GXCoreModule_SD_RemoteConfig",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS, .tvOS, .iOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_RemoteConfig",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_SD_RemoteConfig-1.1.0-rc.4.xcframework.zip",
			checksum: "942e44c3f66cdc20428383a752cd35004b5e5f29e625beb2dccc0c536757a387"
		)
	]
)