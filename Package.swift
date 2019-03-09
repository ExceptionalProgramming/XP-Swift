// swift-tools-version:5.0
//
//  Package.swift
//  XPKit
//

import PackageDescription

let package = Package(
	name: "XPKit",
	products: [
		.library(
			name: "XPKit",
			targets: ["XPKit"]),
	],
	targets: [
		.target(
			name: "XPKit",
			dependencies: []),
		.testTarget(
			name: "XPKitTests",
			dependencies: ["XPKit"])
	]
)
