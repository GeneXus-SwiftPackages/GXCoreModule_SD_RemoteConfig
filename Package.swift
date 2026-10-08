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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "5.0.0-beta.8")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_SD_RemoteConfig-5.0.0-beta.8.xcframework.zip",
			checksum: "9ffe233e7f43780d7dc26336944e59e9f17b04146ca7c0e14eaff01eda898a73"
		)
	]
)