//
//  XPKit.swift
//  XPKit
//

/// Bridges the gap between XP and regular boring programming
///
/// Use is frowned upon unless you are extending legacy code
public func get<T>(from function: () throws -> Never) throws -> T {
	do {
		try function()
	} catch let error as ValueException<T> {
		return error.value
	} catch let error { throw error }
}
