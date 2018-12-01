//
//  FatalException.swift
//  XPKit
//

public class FatalException: RuntimeException {
	convenience init(_ file: String = #file, _ line: Int = #line) {
		self.init("FatalException thrown in \(file) line \(line)")
	}
}
