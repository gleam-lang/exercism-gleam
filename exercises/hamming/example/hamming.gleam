import gleam/string
import gleam/string_builder
import gleam/bool

external fn graphemes(String) -> List(string_builder.StringBuilder) =
  "string" "to_graphemes"

pub type Uneven {
  Uneven
}

fn count(xs, ys, current) {
  case tuple(xs, ys) {
    tuple([], []) -> Ok(current)

    tuple([x, ..xs], [y, ..ys]) -> {
      let diff = bool.negate(x == y)
        |> bool.to_int
      count(xs, ys, current + diff)
    }

    _ -> Error(Uneven)
  }
}

pub fn distance(x, y) {
  let xs = graphemes(x)
  let ys = graphemes(y)
  count(xs, ys, 0)
}
