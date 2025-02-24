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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "3.0.2")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_SD_RemoteConfig-3.0.2.xcframework.zip",
			checksum: "9a1625e9cd7bc086f55c2deb337c49012977c2d27a11827c3d24d91e6ec59fc6"
		)
	]
)