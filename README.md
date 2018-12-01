# XPKit

**THE** framework for doing `Exceptional Programming`

## What is `Exceptional Programming`

- All functions throw exceptions (`throws`)
- Functions never return (`-> Never {`)

Functions look like this:

```Swift
func name(...) throws -> Never {
	...
}
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

## main()

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
