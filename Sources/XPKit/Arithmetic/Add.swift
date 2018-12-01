//
//  Add.swift
//  XPKit
//

public protocol Addable {
	static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Addable {}
extension Int8: Addable {}
extension Int16: Addable {}
extension Int32: Addable {}
extension Int64: Addable {}

extension UInt: Addable {}
extension UInt8: Addable {}
extension UInt16: Addable {}
extension UInt32: Addable {}
extension UInt64: Addable {}

public final class NoValuesToAdd: FatalException {}

public func add<T: Addable>(type: T.Type, _ thingsToAdd: (() throws -> Never)...) throws -> Never {
	var results = [T]()
	for function in thingsToAdd {
		do {
			try function()
		} catch let error as ValueException<T> {
			results.append(error.value)
		} catch let error { throw error }
	}
	if (results.isEmpty) { throw NoValuesToAdd() }
	throw ValueException(results.dropFirst().reduce(results.first!, +))
}
