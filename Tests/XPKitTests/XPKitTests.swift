//
//  XPKitTests.swift
//  XPKitTests
//

import XCTest
import XPKit

final class XPKitTests: XCTestCase {
	func testExample() throws {
		func fibonacci(_ x: Int) throws -> Never {
			if x <= 0 { throw ValueException<Int>(1) }
			if x == 1 { throw ValueException<Int>(1) }
			try XPKit.add(type: Int.self,
				{ try fibonacci(x - 1) },
				{ try fibonacci(x - 2) }
			)
		}
		
		XCTAssertEqual(try get(from: { try fibonacci(10) }), 89)
	}
}
