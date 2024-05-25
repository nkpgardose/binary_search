import gleam/int
import gleam/list

/// Perform a binary search on a list of sorted numbers(Int).
/// Returns the index of the value in the list if it is found, otherwise -1, indicating not found..
///
/// ## Example
///
/// ```gleam
/// > binary_search.perform([1, 2, 3, 4, 5], 3) # returns 2
/// ```
pub fn perform(list_of_sorted_numbers: List(Int), value_to_search: Int) {
  recursive_binary_search(list_of_sorted_numbers, value_to_search, 0, list.length(list_of_sorted_numbers) - 1)
}

/// Recursive binary search function.
/// list_of_sorted_numbers: List of sorted numbers to find index of the value.
/// value_to_search: Value to search in the list.
/// left_index: Left index for moving the search window.
/// right_index: Right index for moving the search window.
///
/// returns the index of the value in the list if it is found, otherwise -1, indicating not found.
fn recursive_binary_search(
  list_of_sorted_numbers: List(Int),
  value_to_search: Int,
  left_index: Int,
  right_index: Int
) {
  let is_still_in_range = left_index > right_index

  case is_still_in_range {
    True -> -1
    False -> {
      let assert Ok(mid_index) = int.floor_divide(left_index + right_index, 2)
      let assert Ok(mid_value) =
        list_of_sorted_numbers
        |> list.take(mid_index + 1)
        |> list.last()

      case mid_value == value_to_search, mid_value > value_to_search {
        True, _ -> mid_index
        False, True -> recursive_binary_search(list_of_sorted_numbers, value_to_search, left_index, mid_index - 1)
        False, False -> recursive_binary_search(list_of_sorted_numbers, value_to_search, mid_index + 1, right_index)
      }
    }
  }
}
