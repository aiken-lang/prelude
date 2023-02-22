# Aiken Prelude

This repository contains a representation of the Aiken prelude. The prelude is composed of two modules:

#### `aiken`

This constitutes all the types and basic functions that are globally available in Aiken. **This module isn't meant to be imported** as a dependency (for it is already imported and available by default), but exists for documentation purpose.

#### `aiken/builtin`

This represents low-level builtins recognized by the Plutus virtual machine. Most builtins have an equivalent in Aiken's syntax, or are mapped to higher level functions in the [standard library](https://aiken-lang.github.io/stdlib/). This module exists mainly for documentation completeness but you shouldn't probably use it unless you know what you're doing. It is not imported by default but it globally available for import if needed.

---

If you found this by chance, we recommend looking only at the [rendered documentation 📘](https://aiken-lang.github.io/prelude) or jump right into [Aiken's user manual](https://aiken-lang.org/).
