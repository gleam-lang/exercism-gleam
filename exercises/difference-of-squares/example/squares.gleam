import gleam/list

fn range(n) {
  case n > 0 {
    True -> [n,  ..range(n - 1)]
    False -> []
  }
}

fn square(n) {
  n * n
}

fn sum(xs) {
  list.fold(xs, 0, fn(x, y) { x + y })
}

pub fn square_of_sum(n) {
  n
  |> range
  |> sum
  |> square
}

pub fn sum_of_squares(n) {
  n
  |> range
  |> list.map(_, square)
  |> sum
}

pub fn difference(n) {
  square_of_sum(n) - sum_of_squares(n)
}
