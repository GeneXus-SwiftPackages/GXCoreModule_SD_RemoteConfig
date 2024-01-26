// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_SD_RemoteConfig",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_SD_RemoteConfig",
			targets: ["GXCoreModule_SD_RemoteConfigWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.4.0-beta.19")
	],
	targets: [
		.target(name: "GXCoreModule_SD_RemoteConfigWrapper",
				dependencies: [
					"GXCoreModule_SD_RemoteConfig",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_SD_RemoteConfig",
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_RemoteConfig-1.4.0-beta.19.xcframework.zip",
			checksum: "65cee760097fcc5cd5426b20acac7dbc7a39bdf5baa7f380bfead5c8231d94e0"
		)
	]
)