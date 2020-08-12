import gleam/map
import gleam/list
import gleam/string

pub fn insert_for_score(tup, mapping) {
  let tuple(score, letters) = tup
  let insert = fn(letter, m) {
    map.insert(m, string.lowercase(letter), score)
  }
  list.fold(letters, mapping, insert)
}

pub fn transform(scores) {
  scores
  |> map.to_list
  |> list.fold(_, map.new(), insert_for_score)
}
