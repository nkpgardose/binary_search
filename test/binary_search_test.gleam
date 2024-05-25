import binary_search
import gleeunit
import gleeunit/should

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn binary_search_success_test() {
  binary_search.perform([1, 2, 3, 4, 5], 3)
  |> should.equal(2)

  binary_search.perform([1, 4, 6, 7, 8, 10, 14, 21, 25, 33], 25)
  |> should.equal(8)
}

pub fn binary_search_failure_test() {
  binary_search.perform([1, 2, 3, 4, 5], 6)
  |> should.equal(-1)

  binary_search.perform([], 22)
  |> should.equal(-1)

  binary_search.perform([1, 2, 3, 4, 5], 0)
}
