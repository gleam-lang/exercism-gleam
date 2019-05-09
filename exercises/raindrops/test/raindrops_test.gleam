import raindrops
import expect

// Common test data version: 1.1.0 99de15d

pub fn test_the_sound_for_1_is_1_test() {
  expect:equal(
    raindrops:convert(1),
    "1",
  )
}

pub fn test_the_sound_for_3_is_pling_test() {
  expect:equal(
    raindrops:convert(3),
    "Pling",
  )
}

pub fn test_the_sound_for_5_is_plang_test() {
  expect:equal(
    raindrops:convert(5),
    "Plang",
  )
}

pub fn test_the_sound_for_7_is_plong_test() {
  expect:equal(
    raindrops:convert(7),
    "Plong",
  )
}

pub fn test_the_sound_for_6_is_pling_as_it_has_a_factor_3_test() {
  expect:equal(
    raindrops:convert(6),
    "Pling",
  )
}

pub fn test_2_to_the_power_3_does_not_make_a_raindrop_sound_as_3_is_the_exponent_not_the_base_test() {
  expect:equal(
    raindrops:convert(8),
    "8",
  )
}

pub fn test_the_sound_for_9_is_pling_as_it_has_a_factor_3_test() {
  expect:equal(
    raindrops:convert(9),
    "Pling",
  )
}

pub fn test_the_sound_for_10_is_plang_as_it_has_a_factor_5_test() {
  expect:equal(
    raindrops:convert(10),
    "Plang",
  )
}

pub fn test_the_sound_for_14_is_plong_as_it_has_a_factor_of_7_test() {
  expect:equal(
    raindrops:convert(14),
    "Plong",
  )
}

pub fn test_the_sound_for_15_is_plingplang_as_it_has_factors_3_and_5_test() {
  expect:equal(
    raindrops:convert(15),
    "PlingPlang",
  )
}

pub fn test_the_sound_for_21_is_plingplong_as_it_has_factors_3_and_7_test() {
  expect:equal(
    raindrops:convert(21),
    "PlingPlong",
  )
}

pub fn test_the_sound_for_25_is_plang_as_it_has_a_factor_5_test() {
  expect:equal(
    raindrops:convert(25),
    "Plang",
  )
}

pub fn test_the_sound_for_27_is_pling_as_it_has_a_factor_3_test() {
  expect:equal(
    raindrops:convert(27),
    "Pling",
  )
}

pub fn test_the_sound_for_35_is_plangplong_as_it_has_factors_5_and_7_test() {
  expect:equal(
    raindrops:convert(35),
    "PlangPlong",
  )
}

pub fn test_the_sound_for_49_is_plong_as_it_has_a_factor_7_test() {
  expect:equal(
    raindrops:convert(49),
    "Plong",
  )
}

pub fn test_the_sound_for_52_is_52_test() {
  expect:equal(
    raindrops:convert(52),
    "52",
  )
}

pub fn test_the_sound_for_105_is_plingplangplong_as_it_has_factors_3_5_and_7_test() {
  expect:equal(
    raindrops:convert(105),
    "PlingPlangPlong",
  )
}

pub fn test_the_sound_for_3125_is_plang_as_it_has_a_factor_5_test() {
  expect:equal(
    raindrops:convert(3125),
    "Plang",
  )
}
