import raindrops
import gleam/should

// Common test data version. 1.1.0 99de15d

pub fn test_the_sound_for_1_is_1_test() {
  raindrops.convert(1)
  |> should.equal(_, "1")
}

pub fn test_the_sound_for_3_is_pling_test() {
  raindrops.convert(3)
  |> should.equal(_, "Pling")
}

pub fn test_the_sound_for_5_is_plang_test() {
  raindrops.convert(5)
  |> should.equal(_, "Plang")
}

pub fn test_the_sound_for_7_is_plong_test() {
  raindrops.convert(7)
  |> should.equal(_, "Plong")
}

pub fn test_the_sound_for_6_is_pling_as_it_has_a_factor_3_test() {
  raindrops.convert(6)
  |> should.equal(_, "Pling")
}

pub fn test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base_test() {
  raindrops.convert(8)
  |> should.equal(_, "8")
}

pub fn test_the_sound_for_9_is_pling_as_it_has_a_factor_3_test() {
  raindrops.convert(9)
  |> should.equal(_, "Pling")
}

pub fn test_the_sound_for_10_is_plang_as_it_has_a_factor_5_test() {
  raindrops.convert(10)
  |> should.equal(_, "Plang")
}

pub fn test_the_sound_for_14_is_plong_as_it_has_a_factor_of_7_test() {
  raindrops.convert(14)
  |> should.equal(_, "Plong")
}

pub fn test_the_sound_for_15_is_plingplang_as_it_has_factors_3_and_5_test() {
  raindrops.convert(15)
  |> should.equal(_, "PlingPlang")
}

pub fn test_the_sound_for_21_is_plingplong_as_it_has_factors_3_and_7_test() {
  raindrops.convert(21)
  |> should.equal(_, "PlingPlong")
}

pub fn test_the_sound_for_25_is_plang_as_it_has_a_factor_5_test() {
  raindrops.convert(25)
  |> should.equal(_, "Plang")
}

pub fn test_the_sound_for_27_is_pling_as_it_has_a_factor_3_test() {
  raindrops.convert(27)
  |> should.equal(_, "Pling")
}

pub fn test_the_sound_for_35_is_plangplong_as_it_has_factors_5_and_7_test() {
  raindrops.convert(35)
  |> should.equal(_, "PlangPlong")
}

pub fn test_the_sound_for_49_is_plong_as_it_has_a_factor_7_test() {
  raindrops.convert(49)
  |> should.equal(_, "Plong")
}

pub fn test_the_sound_for_52_is_52_test() {
  raindrops.convert(52)
  |> should.equal(_, "52")
}

pub fn test_the_sound_for_105_is_plingplangplong_as_it_has_factors_3_5_and_7_test() {
  raindrops.convert(105)
  |> should.equal(_, "PlingPlangPlong")
}

pub fn test_the_sound_for_3125_is_plang_as_it_has_a_factor_5_test() {
  raindrops.convert(3125)
  |> should.equal(_, "Plang")
}
