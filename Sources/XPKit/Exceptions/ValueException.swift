//
//  ValueException.swift
//  XPKit
//

public class ValueException<T>: Exception {
	public let value: T
	
	public init(_ value: T) {
		self.value = value
	}
}
