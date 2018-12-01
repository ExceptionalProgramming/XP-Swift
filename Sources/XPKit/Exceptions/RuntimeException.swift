//
//  RuntimeException.swift
//  XPKit
//

open class RuntimeException: Exception {
	public let message: String
	
	public init(_ message: String) {
		self.message = message
	}
}
