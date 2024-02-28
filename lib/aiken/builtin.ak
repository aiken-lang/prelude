//// This modules contains all the Plutus builtins recognized by Aiken.
////
//// It's important to note that many of those functions are partial and will halt the execution
//// of the Plutus virtual machine on failure. They also all rely on call-by-value, which means
//// that function arguments are eagerly evaluated.

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Adds two integers (+).
pub fn add_integer(left: Int, right: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Subtract two integers (-).
pub fn subtract_integer(left: Int, right: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Multiple two integers (*).
pub fn multiply_integer(left: Int, right: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer division truncated towards negative infinity (/).
pub fn divide_integer(numerator: Int, denominator: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer division truncated towards zero.
pub fn quotient_integer(numerator: Int, denominator: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer remainder, satisfying
///
/// ```aiken
/// quotient_integer(x, y) * y + remainder_integer(x, y) == x
/// ```
pub fn remainder_integer(numerator: Int, denominator: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer modulus (%), satisfying
///
/// ```aiken
/// divide_integer(x, y) * y + mod_integer(x, y) == x
/// ```
pub fn mod_integer(numerator: Int, denominator: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer equality.
pub fn equals_integer(left: Int, right: Int) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer strict inequality.
pub fn less_than_integer(left: Int, right: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Integer inequality.
pub fn less_than_equals_integer(left: Int, right: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Concatenate two bytearrays together.
pub fn append_bytearray(left: ByteArray, right: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Push a byte in front of a bytearray.
pub fn cons_bytearray(byte: Int, bytes: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Extract a sub-array from a bytearray given starting and length of the sub-array.
pub fn slice_bytearray(start: Int, len: Int, bytes: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Number of bytes in a bytearray.
pub fn length_of_bytearray(bytes: ByteArray) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Access the byte at the given index in the bytearray.
pub fn index_bytearray(bytes: ByteArray, index: Int) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Bytearray equality.
pub fn equals_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Bytearray strict inequality.
pub fn less_than_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Bytearray inequality.
pub fn less_than_equals_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Calculate the SHA2-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn sha2_256(preimage: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Calculate the SHA3-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn sha3_256(preimage: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Calculate the blake2b-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn blake2b_256(preimage: ByteArray) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Verify an Ed25519 signature from a associated verification key.
pub fn verify_ed25519_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>2</small>
/// ---                                   | ---
///
/// Verify an ECDSA-SECP256k1 signature from a associated verification key.
pub fn verify_ecdsa_secp256k1_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>2</small>
/// ---                                   | ---
///
/// Verify a SCHNORR-SECP256k1 signature from a associated verification key.
pub fn verify_schnorr_secp256k1_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Concatenate two strings.
pub fn append_string(left: String, right: String) -> String {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// String equality.
pub fn equals_string(left: String, right: String) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Convert a string into a UTF-8 encoded array of bytes.
pub fn encode_utf8(str: String) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a UTF-8 encoded array of bytes as a String. Fails if the bytes aren't UTF-8 encoded.
pub fn decode_utf8(bytes: ByteArray) -> String {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Return first computation when the condition is true, and the second otherwise.
pub fn if_then_else(condition: Bool, when_true: a, when_false: a) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// The head of a list. Fails if empty.
pub fn head_list(list: List<a>) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// The tail of a list. Fails if empty.
pub fn tail_list(list: List<a>) -> List<a> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// True when a list is empty.
pub fn null_list(list: List<a>) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a `Data` from a constructor index and a list of fields.
pub fn constr_data(index: Int, fields: List<Data>) -> Data {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a `Data` as a constructor. Fails if it's not a constructor.
pub fn un_constr_data(data: Data) -> (Int, List<Data>) {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a `Data` from a list of pairs.
pub fn map_data(items: List<(Data, Data)>) -> Data {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a `Data` as a map. Fails if it's not a map.
pub fn un_map_data(data: Data) -> List<(Data, Data)> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a `Data` from a list of elements.
pub fn list_data(items: List<Data>) -> Data {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a `Data` as a list. Fails if it's not a list.
pub fn un_list_data(data: Data) -> List<Data> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a `Data` from an integer.
pub fn i_data(i: Int) -> Data {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a `Data` as a integer. Fails if it's not an integer.
pub fn un_i_data(data: Data) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a `Data` from a ByteArray
pub fn b_data(bytes: ByteArray) -> Data {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Interpret a `Data` as a bytearray. Fails if it's not a bytearray.
pub fn un_b_data(data: Data) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Equality on Data.
pub fn equals_data(left: Data, right: Data) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>2</small>
/// ---                                   | ---
///
/// Serialise a Data to bytes, using CBOR.
pub fn serialise_data(data: Data) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Select a branch to continue with based on what the Data actually is.
pub fn choose_data(
  data: Data,
  when_constr: a,
  when_map: a,
  when_list: a,
  when_int: a,
  when_bytearray: a,
) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct a Data from a pair of elements.
pub fn mk_pair_data(left: Data, right: Data) -> (Data, Data) {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct an empty list of Data.
pub fn mk_nil_data() -> List<Data> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Construct an empty list of pairs of data.
pub fn mk_nil_pair_data() -> List<(Data, Data)> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Continue with the continuation when the given term is Void.
pub fn choose_void(void: Void, when_void: a) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Trace the provided message, and continue with the continuation.
pub fn debug(message: String, continuation: a) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Get the first element of a pair.
pub fn fst_pair(pair: (a, b)) -> a {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Get the second element of a pair.
pub fn snd_pair(pair: (a, b)) -> b {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Select a branch to continue with depending on whether the list is empty or not.
pub fn choose_list(list: List<a>, when_empty: b, when_non_empty: b) -> b {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>1</small>
/// ---                                   | ---
///
/// Push an element in front of a list.
pub fn cons_list(elem: a, list: List<a>) -> List<a> {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_add(a: G1Element, b: G1Element) -> G1Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_neg(self: G1Element) -> G1Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_scalar_mul(scalar: Int, self: G1Element) -> G1Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_equal(self: G1Element, other: G1Element) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_compress(self: G1Element) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_uncompress(self: ByteArray) -> G1Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g1_hash_to_group(
  group: ByteArray,
  domain_separation_tag: ByteArray,
) -> G1Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_add(a: G2Element, b: G2Element) -> G2Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_neg(self: G2Element) -> G2Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_scalar_mul(scalar: Int, self: G2Element) -> G2Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_equal(self: G2Element, other: G2Element) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_compress(self: G2Element) -> ByteArray {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_uncompress(self: ByteArray) -> G2Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_g2_hash_to_group(
  group: ByteArray,
  domain_separation_tag: ByteArray,
) -> G2Element {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_miller_loop(g1: G1Element, g2: G2Element) -> MillerLoopResult {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_mul_miller_loop_result(
  a: MillerLoopResult,
  b: MillerLoopResult,
) -> MillerLoopResult {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
pub fn bls12_381_final_verify(a: MillerLoopResult, b: MillerLoopResult) -> Bool {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
///
/// Convert a [ByteArray](../aiken.html#ByteArray) to an integer value. The first argument
/// specifies the endianness:
///
/// boolean value | endianness
/// ----          | ----
/// True          | Big endian
/// False         | Little endian
pub fn bytearray_to_integer(endianness: Bool, bytes: ByteArray) -> Int {
  fail
}

/// <small>Minimum Plutus Version</small> | <small>3</small>
/// ---                                   | ---
///
/// Convert an integer value into a [ByteArray](../aiken.html#ByteArray).
///
/// - The first arguments / specifies the endianness:
///
///   boolean value | endianness
///   ----          | ----
///   True          | Big endian
///   False         | Little endian
///
/// - The second argument indicates the target `size` (in bytes) of the final [ByteArray](../aiken.html#ByteArray). This allows to allocate a specific number of bytes in advance. The function fails if the given value cannot fit in the requested size or if the `value` is negative. However, a size of 0 will yield a [ByteArray](../aiken.html#ByteArray) that is precisely as large as necessary to fit the `value`.
pub fn integer_to_bytearray(
  endianness: Bool,
  size: Int,
  value: Int,
) -> ByteArray {
  fail
}
