//// This modules contains all the Plutus builtins recognized by Aiken.
////
//// It's important to note that many of those functions are partial and will halt the execution
//// of the Plutus virtual machine on failure. They also all rely on call-by-value, which means
//// that function arguments are eagerly evaluated.

/// Adds two integers (+).
pub fn add_integer(left: Int, right: Int) -> Int {
  error
}

/// Subtract two integers (-).
pub fn subtract_integer(left: Int, right: Int) -> Int {
  error
}

/// Multiple two integers (*).
pub fn multiply_integer(left: Int, right: Int) -> Int {
  error
}

/// Integer division truncated towards negative infinity (/).
pub fn divide_integer(numerator: Int, denominator: Int) -> Int {
  error
}

/// Integer division truncated towards zero.
pub fn quotient_integer(numerator: Int, denominator: Int) -> Int {
  error
}

/// Integer remainder, satisfying
///
/// ```aiken
/// quotient_integer(x, y) * y + remainder_integer(x, y) == x
/// ```
pub fn remainder_integer(numerator: Int, denominator: Int) -> Int {
  error
}

/// Integer modulus (%), satisfying
///
/// ```aiken
/// divide_integer(x, y) * y + mod_integer(x, y) == x
/// ```
pub fn mod_integer(numerator: Int, denominator: Int) -> Int {
  error
}

/// Integer equality.
pub fn equals_integer(left: Int, right: Int) -> Bool {
  error
}

/// Integer strict inequality.
pub fn less_than_integer(left: Int, right: Int) -> Int {
  error
}

/// Integer inequality.
pub fn less_than_equals_integer(left: Int, right: Int) -> Int {
  error
}

/// Concatenate two bytearrays together.
pub fn append_bytearray(left: ByteArray, right: ByteArray) -> ByteArray {
  error
}

/// Push a byte in front of a bytearray.
pub fn cons_bytearray(byte: Int, bytes: ByteArray) -> ByteArray {
  error
}

/// Extract a sub-array from a bytearray given starting and ending indexes.
pub fn slice_bytearray(start: Int, end: Int, bytes: ByteArray) -> ByteArray {
  error
}

/// Number of bytes in a bytearray.
pub fn length_of_bytearray(bytes: ByteArray) -> Int {
  error
}

/// Access the byte at the given index in the bytearray.
pub fn index_bytearray(bytes: ByteArray, index: Int) -> Int {
  error
}

/// Bytearray equality.
pub fn equals_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  error
}

/// Bytearray strict inequality.
pub fn less_than_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  error
}

/// Bytearray inequality.
pub fn less_than_equals_bytearray(left: ByteArray, right: ByteArray) -> Bool {
  error
}

/// Calculate the SHA2-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn sha2_256(preimage: ByteArray) -> ByteArray {
  error
}

/// Calculate the SHA3-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn sha3_256(preimage: ByteArray) -> ByteArray {
  error
}

/// Calculate the blake2b-256 hash digest value of a given bytearray. Output is always 32-byte long.
pub fn blake2b_256(preimage: ByteArray) -> ByteArray {
  error
}

/// Verify an Ed25519 signature from a associated verification key.
pub fn verify_ed25519_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  error
}

/// Verify an ECDSA-SECP256k1 signature from a associated verification key.
pub fn verify_ecdsa_secp256k1_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  error
}

/// Verify a SCHNORR-SECP256k1 signature from a associated verification key.
pub fn verify_schnorr_secp256k1_signature(
  verification_key: ByteArray,
  message: ByteArray,
  signature: ByteArray,
) -> ByteArray {
  error
}

/// Concatenate two strings.
pub fn append_string(left: String, right: String) -> String {
  error
}

/// String equality.
pub fn equals_string(left: String, right: String) -> Bool {
  error
}

/// Convert a string into a UTF-8 encoded array of bytes.
pub fn encode_utf8(str: String) -> ByteArray {
  error
}

/// Interpret a UTF-8 encoded array of bytes as a String. Fails if the bytes aren't UTF-8 encoded.
pub fn decode_utf8(bytes: ByteArray) -> String {
  error
}

/// Return first computation when the condition is true, and the second otherwise.
pub fn if_then_else(condition: Bool, when_true: a, when_false: a) -> a {
  error
}

/// The head of a list. Fails if empty.
pub fn head_list(list: List<a>) -> a {
  error
}

/// The tail of a list. Fails if empty.
pub fn tail_list(list: List<a>) -> List<a> {
  error
}

/// True when a list is empty.
pub fn null_list(list: List<a>) -> Bool {
  error
}

/// Construct a `Data` from a constructor index and a list of fields.
pub fn constr_data(index: Int, fields: List<Data>) -> Data {
  error
}

/// Interpret a `Data` as a constructor. Fails if it's not a constructor.
pub fn un_constr_data(data: Data) -> (Int, List<Data>) {
  error
}

/// Construct a `Data` from a list of pairs.
pub fn map_data(items: List<(Data, Data)>) -> Data {
  error
}

/// Interpret a `Data` as a map. Fails if it's not a map.
pub fn un_map_data(data: Data) -> List<(Data, Data)> {
  error
}

/// Construct a `Data` from a list of elements.
pub fn list_data(items: List<Data>) -> Data {
  error
}

/// Interpret a `Data` as a list. Fails if it's not a list.
pub fn un_list_data(data: Data) -> List<Data> {
  error
}

/// Construct a `Data` from an integer.
pub fn i_data(i: Int) -> Data {
  error
}

/// Interpret a `Data` as a integer. Fails if it's not an integer.
pub fn un_i_data(data: Data) -> Int {
  error
}

/// Construct a `Data` from a ByteArray
pub fn b_data(bytes: ByteArray) -> Data {
  error
}

/// Interpret a `Data` as a bytearray. Fails if it's not a bytearray.
pub fn un_b_data(data: Data) -> ByteArray {
  error
}

/// Equality on Data.
pub fn equals_data(left: Data, right: Data) -> ByteArray {
  error
}

/// Serialise a Data to bytes, using CBOR.
pub fn serialise_data(data: Data) -> ByteArray {
  error
}

/// Select a branch to continue with based on what the Data actually is.
pub fn choose_data(
  data: Data,
  when_constr: a,
  when_map: a,
  when_list: a,
  when_int: a,
  when_bytearray: a,
) -> a {
  error
}

/// Construct a Data from a pair of elements.
pub fn mk_pair_data(left: Data, right: Data) -> (Data, Data) {
  error
}

/// Construct an empty list of Data.
pub fn mk_nil_data() -> List<Data> {
  error
}

/// Construct an empty list of pairs of data.
pub fn mk_nil_pair_data() -> List<(Data, Data)> {
  error
}

/// Continue with the continuation when the given term is Void.
pub fn choose_void(void: Void, when_void: a) -> a {
  error
}

/// Trace the provided message, and continue with the continuation.
pub fn debug(message: String, continuation: a) -> a {
  error
}

/// Get the first element of a pair.
pub fn fst_pair(pair: (a, b)) -> a {
  error
}

/// Get the second element of a pair.
pub fn snd_pair(pair: (a, b)) -> b {
  error
}

/// Select a branch to continue with depending on whether the list is empty or not.
pub fn choose_list(list: List<a>, when_empty: b, when_non_empty: b) -> b {
  error
}

/// Push an element in front of a list.
pub fn cons_list(elem: a, list: List<a>) -> List<a> {
  error
}
