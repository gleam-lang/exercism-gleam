import gleam/string
import gleam/iodata
import gleam/bool

external fn graphemes(String) -> List(iodata:Iodata)
  = "string" "to_graphemes"

pub enum Uneven =
  | Uneven

fn count(xs, ys, current) {
  case {xs, ys} {
  | {[], []} ->
      Ok(current)

  | {[x | xs], [y | ys]} ->
      let diff = bool:negate(x == y) |> bool:to_int
      count(xs, ys, current + diff)

  | _ ->
      Error(Uneven)
  }
}

pub fn distance(x, y) {
  let xs = graphemes(x)
  let ys = graphemes(y)
  count(xs, ys, 0)
}
