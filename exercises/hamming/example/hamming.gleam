import gleam/string
import gleam/bit_builder
import gleam/bool

external fn graphemes(String) -> List(bit_builder.BitBuilder)
  = "string" "to_graphemes"

pub type Uneven {
  Uneven
}

fn count(xs, ys, current) {
  case tuple(xs, ys) {
    tuple([], []) ->
      Ok(current)

    tuple([x, ..xs], [y, ..ys]) ->
      { 
        let diff = bool.negate(x == y) |> bool.to_int 
        count(xs, ys, current + diff)
      }

    _ ->
      Error(Uneven)
  }
}

pub fn distance(x, y) {
  let xs = graphemes(x)
  let ys = graphemes(y)
  count(xs, ys, 0)
}
