import etl
import gleam/map
import gleam/should

pub fn test_a_single_letter_test() {
  [
    tuple(1, ["A"]),
  ]
  |> map.from_list
  |> etl.transform
  |> should.equal(_, map.from_list([
      tuple("a", 1),
    ]))
}

pub fn test_single_score_with_multiple_letters_test() {
  [
    tuple(1, ["A", "E", "I", "O", "U"]),
  ]
  |> map.from_list
  |> etl.transform
  |> should.equal(_, map.from_list([
      tuple("a", 1),
      tuple("e", 1),
      tuple("i", 1),
      tuple("o", 1),
      tuple("u", 1),
    ]))
}

pub fn test_multiple_scores_with_multiple_letters_test() {
  [
    tuple(1, ["A", "E"]),
    tuple(2, ["D", "G"]),
  ]
  |> map.from_list
  |> etl.transform
  |> should.equal(_, map.from_list([
      tuple("a", 1),
      tuple("d", 2),
      tuple("e", 1),
      tuple("g", 2),
    ]))
}

pub fn test_multiple_scores_with_differing_numbers_of_letters_test() {
  [
    tuple(1, ["A", "E", "I", "O", "U", "L", "N", "R", "S", "T"]),
    tuple(2, ["D", "G"]),
    tuple(3, ["B", "C", "M", "P"]),
    tuple(4, ["F", "H", "V", "W", "Y"]),
    tuple(5, ["K"]),
    tuple(8, ["J", "X"]),
    tuple(10, ["Q", "Z"]),
  ]
  |> map.from_list
  |> etl.transform
  |> should.equal(_, map.from_list([
      tuple("a", 1),
      tuple("b", 3),
      tuple("c", 3),
      tuple("d", 2),
      tuple("e", 1),
      tuple("f", 4),
      tuple("g", 2),
      tuple("h", 4),
      tuple("i", 1),
      tuple("j", 8),
      tuple("k", 5),
      tuple("l", 1),
      tuple("m", 3),
      tuple("n", 1),
      tuple("o", 1),
      tuple("p", 3),
      tuple("q", 10),
      tuple("r", 1),
      tuple("s", 1),
      tuple("t", 1),
      tuple("u", 1),
      tuple("v", 4),
      tuple("w", 4),
      tuple("x", 8),
      tuple("y", 4),
      tuple("z", 10),
    ]))
}
