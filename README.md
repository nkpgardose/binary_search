# binary_search

[![Package Version](https://img.shields.io/hexpm/v/binary_search)](https://hex.pm/packages/binary_search)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/binary_search/)

> Recursive Binary Search in Gleam, implementation with O(log N) complexity.

```sh
gleam add binary_search
```
```gleam
import binary_search

pub fn main() {
  binary_search.perform([1, 2, 6, 8, 10], 6) // => 2
  binary_search.perform([1, 2, 3, 4, 5], 1) // => 0
  binary_search.perform([], 6) // => -1 # indicating not found.
  binary_search.perform([1, 2, 6, 8, 10], 7) // => -1
}
```

Further documentation can be found at <https://hexdocs.pm/binary_search>.

## Development

```sh
gleam test  # Run the tests
gleam shell # Run an Erlang shell
```
