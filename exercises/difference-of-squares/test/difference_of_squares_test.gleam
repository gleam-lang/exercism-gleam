import squares
import gleam/should

pub fn test_square_of_sum_1_test() {
  squares.square_of_sum(1)
  |> should.equal(1)
}

pub fn test_square_of_sum_5_test() {
  squares.square_of_sum(5)
  |> should.equal(225)
}

pub fn test_square_of_sum_100_test() {
  squares.square_of_sum(100)
  |> should.equal(25502500)
}

pub fn test_sum_of_squares_1_test() {
  squares.sum_of_squares(1)
  |> should.equal(1)
}

pub fn test_sum_of_squares_5_test() {
  squares.sum_of_squares(5)
  |> should.equal(55)
}

pub fn test_sum_of_squares_100_test() {
  squares.sum_of_squares(100)
  |> should.equal(338350)
}

pub fn test_difference_of_squares_1_test() {
  squares.difference(1)
  |> should.equal(0)
}

pub fn test_difference_of_squares_5_test() {
  squares.difference(5)
  |> should.equal(170)
}

pub fn test_difference_of_squares_100_test() {
  squares.difference(100)
  |> should.equal(25164150)
}
