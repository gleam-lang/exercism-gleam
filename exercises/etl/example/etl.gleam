import gleam/map_dict
import gleam/list
import gleam/string

pub fn insert_for_score(tup, mapping) {
  let {score, letters} = tup
  let insert = fn(letter, m) {
    map_dict:put(m, string:lowercase(letter), score)
  }
  list:fold(letters, mapping, insert)
}

pub fn transform(scores) {
  scores
  |> map_dict:to_list
  |> list:fold(_, map_dict:new(), insert_for_score)
}
