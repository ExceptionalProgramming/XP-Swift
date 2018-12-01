// swift-tools-version:4.2
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
			type: .static,
			targets: ["XPKit"]),
		.library(
			name: "dXPKit",
			type: .dynamic,
			targets: ["XPKit"])
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
