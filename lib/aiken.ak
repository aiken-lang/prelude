/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for booleans values. See [Primitive Types :: Bool](https://aiken-lang.org/language-tour/primitive-types#bool) for details.
pub type Bool {
  False
  True
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type to compare values.
///
/// ```aiken
/// pub fn compare(left: Int, right: Int) -> Ordering {
///   if left < right {
///     Less
///   } else if less > right {
///     Greater
///   } else {
///     Equal
///   }
/// }
/// ```
pub type Ordering {
  Less
  Equal
  Greater
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for representing bytes. See [Primitive Types :: ByteArray](https://aiken-lang.org/language-tour/primitive-types#bytearray) for details.
pub opaque type ByteArray {
  ByteArray
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for opaque Plutus data. See [Primitive Types :: Data](https://aiken-lang.org/language-tour/primitive-types#data) for details.
pub opaque type Data {
  Data
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for signed integers. See [Primitive Types :: Int](https://aiken-lang.org/language-tour/primitive-types#int) for details.
///
/// Note: there's no floating numbers in Aiken.
pub opaque type Int {
  Int
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for text strings. See [Primitive Types :: String](https://aiken-lang.org/language-tour/primitive-types#string) for details.
pub opaque type String {
  String
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for nullary constructors. See [Primitive Types :: Void](https://aiken-lang.org/language-tour/primitive-types#void) for details.
pub opaque type Void {
  Void
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for generic lists. See [Primitive Types :: List](https://aiken-lang.org/language-tour/primitive-types#list) for details.
pub opaque type List<a> {
  List
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// An pair of 2 elements.
pub opaque type Pair<k, v> {
  Pair
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A associative list as a list of pairs of 2 elements.
pub type Pairs<k, v> =
  List<Pair<k, v>>

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
///
/// A type for representing G1 element of BLS12_381 curves.
pub opaque type G1Element {
  G1Element
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
///
/// A type for representing G2 element of BLS12_381 curves.
pub opaque type G2Element {
  G2Element
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
///
/// A type for representing Miller-loop results.
pub opaque type MillerLoopResult {
  MillerLoopResult
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type for returning optional results. See also [stdlib/option](https://aiken-lang.github.io/stdlib/aiken/option.html).
pub type Option<a> {
  Some(a)
  None
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type that like [`Option`](#Option) but that is always `None`. Fundamentally, we have:
///
/// ```aiken
/// let never: Data = Never
/// let none: Data = None
/// never == none
/// ```
pub type Never {
  Never
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type that represent Pseudo-random generated values.
pub type PRNG {
  Seeded { seed: ByteArray, choices: ByteArray }
  Replayed { cursor: Int, choices: ByteArray }
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type to capture random computation that may depend on one another. Useful
/// for constructing (pseudo-)random values for property-based test.
pub type Fuzzer<a> =
  fn(PRNG) -> Option<(PRNG, a)>

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A type to capture scaled fuzzers. Useful for constructing (pseudo-)random 
/// for benchmarks from a controlled monotically increasing size.
pub type Sampler<a> =
  fn(Int) -> Fuzzer<a>

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Like `!`, but as a function. Handy for chaining using the pipe operator `|>` or to pass as a function.
pub fn not(self: Bool) -> Bool {
  when self is {
    True -> False
    False -> True
  }
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A function that always return its first argument. Handy in folds and maps.
///
/// ```aiken
/// let always_14 = always(14, _)
/// always_14(42) == 14
/// always_14(1337) == 14
/// always_14(0) == 14
/// ```
pub fn always(a: a, b _b: b) -> a {
  a
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A function that returns its argument. Handy as a default behavior sometimes.
pub fn identity(a: a) -> a {
  a
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// A function that flips the arguments of a function.
///
/// ```aiken
/// pub fn titleize(left: String, right: String) {}
///
/// titleize("Hello", "World") // "Hello, World!"
///
/// flip(titleize)("Hello", "World") // "World, Hello!"
/// ```
pub fn flip(f: fn(a, b) -> c) -> fn(b, a) -> c {
  fn(b, a) { f(a, b) }
}
