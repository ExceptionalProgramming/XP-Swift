# XPKit

[![](https://img.shields.io/badge/Swift-5.0-orange.svg)][1]
[![](https://img.shields.io/badge/os-macOS%20|%20Linux-lightgray.svg)][1]
[![](https://travis-ci.com/ExceptionalProgramming/XP-Swift.svg?branch=master)][2]

[1]: https://swift.org/download/#releases
[2]: https://travis-ci.com/ExceptionalProgramming/XP-Swift

**THE** framework for doing `Exceptional Programming` in Swift

## What is `Exceptional Programming`

- All functions throw exceptions (`throws`)
- Functions never return (`-> Never {`)

Functions look like this:

```Swift
func name(...) throws -> Never {
	...
}
```

## Importing

```Swift
import XPKit
```

```Swift
dependencies: [
	.package(url: "https://github.com/ExceptionalProgramming/XP-Swift",
	         from: "1.0.0")
],
targets: [
	.target(
		name: "",
		dependencies: [
			"XPKit"
		]),
]
```

## Exceptions

Exceptions are a `class` that should be `thrown`

- `Exception`
	- `ProgramTerminated`
	- `RuntimeException`
		- `FatalException`
	- `ValueException`

All `do/catch` blocks should rethrow any unhandled exceptions

```Swift
...
} catch let error { throw error }
```

## `main()`

```Swift
do {
	try ...
} catch _ as ProgramTerminated {
} catch let error { throw error }
```

## Getting values

We understand that not all code is *exceptional* so we provide `get<T>(from:) -> T` which will extract the value from the thrown `ValueException<T>`

## Addition

There is a provided `add<T: Addable>` function which `throws` the sum of all values.  The `Int` and `UInt` families both conform to `Addable`
