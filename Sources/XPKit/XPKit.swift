//
//  XPKit.swift
//  XPKit
//

func get<T>(from function: () throws -> Never) throws -> T {
	do {
		try function()
	} catch let error as ValueException<T> {
		return error.value
	} catch let error { throw error }
}
