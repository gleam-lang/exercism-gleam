import str
import iodata
import bool

external fn graphemes(String) -> List(iodata:Iodata)
  = "string" "to_graphemes"

pub enum Uneven =
  | Uneven

fn count(as, bs, current) {
  case {as, bs} {
  | {[], []} ->
      Ok(current)

  | {[a | as], [b | bs]} ->
      let diff = bool:negate(a == b) |> bool:to_int
      count(as, bs, current + diff)

  | _ ->
      Error(Uneven)
  }
}

pub fn distance(a, b) {
  let as = graphemes(a)
  let bs = graphemes(b)
  count(as, bs, 0)
}
