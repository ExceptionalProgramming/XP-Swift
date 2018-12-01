//
//  XCTestManifest.swift
//  XPKitTests
//

import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
	return [
		testCase(XPKitTests.allTests.shuffled()),
	]
}
#endif
