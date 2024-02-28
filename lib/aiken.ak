/// A type for booleans values. See [Primitive Types :: Bool](https://aiken-lang.org/language-tour/primitive-types#bool) for details.
pub type Bool {
  False
  True
}

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

/// A type for representing bytes. See [Primitive Types :: ByteArray](https://aiken-lang.org/language-tour/primitive-types#bytearray) for details.
pub opaque type ByteArray {
  ByteArray
}

/// A type for opaque Plutus data. See [Primitive Types :: Data](https://aiken-lang.org/language-tour/primitive-types#data) for details.
pub opaque type Data {
  Data
}

/// A type for signed integers. See [Primitive Types :: Int](https://aiken-lang.org/language-tour/primitive-types#int) for details.
///
/// Note: there's no floating numbers in Aiken.
pub opaque type Int {
  Int
}

/// A type for text strings. See [Primitive Types :: String](https://aiken-lang.org/language-tour/primitive-types#string) for details.
pub opaque type String {
  String
}

/// A type for nullary constructors. See [Primitive Types :: Void](https://aiken-lang.org/language-tour/primitive-types#void) for details.
pub opaque type Void {
  Void
}

/// A type for generic lists. See [Primitive Types :: List](https://aiken-lang.org/language-tour/primitive-types#list) for details.
pub opaque type List<a> {
  List
}

/// A type for representing G1 element of BLS12_381 curves.
pub opaque type G1Element {
  G1Element
}

/// A type for representing G2 element of BLS12_381 curves.
pub opaque type G2Element {
  G2Element
}

/// A type for representing Miller-loop results.
pub opaque type MillerLoopResult {
  MillerLoopResult
}

/// A type for returning optional results. See also [stdlib/option](https://aiken-lang.github.io/stdlib/aiken/option.html).
pub type Option<a> {
  Some(a)
  None
}

/// Like `!`, but as a function. Handy for chaining using the pipe operator `|>` or to pass as a function.
pub fn not(self: Bool) -> Bool {
  when self is {
    True -> False
    False -> True
  }
}

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

/// A function that returns its argument. Handy as a default behavior sometimes.
pub fn identity(a: a) -> a {
  a
}

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
