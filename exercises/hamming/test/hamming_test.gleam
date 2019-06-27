import hamming
import gleam/expect

pub fn empty_strands_test() {
  hamming:distance("", "")
  |> expect:equal(_, Ok(0))
}

pub fn identical_strands_test() {
  hamming:distance("A", "A")
  |> expect:equal(_, Ok(0))
}

pub fn long_identical_strands_test() {
  hamming:distance("GGACTGA", "GGACTGA")
  |> expect:equal(_, Ok(0))
}

pub fn complete_distance_in_single_nucleotide_strands_test() {
  hamming:distance("A", "G")
  |> expect:equal(_, Ok(1))
}

pub fn complete_distance_in_small_strands_test() {
  hamming:distance("AG", "CT")
  |> expect:equal(_, Ok(2))
}

pub fn small_distance_in_small_strands_test() {
  hamming:distance("AT", "CT")
  |> expect:equal(_, Ok(1))
}

pub fn small_distance_test() {
  hamming:distance("GGACG", "GGTCG")
  |> expect:equal(_, Ok(1))
}

pub fn small_distance_in_long_strands_test() {
  hamming:distance("ACCAGGG", "ACTATGG")
  |> expect:equal(_, Ok(2))
}

pub fn non_unique_character_in_first_strand_test() {
  hamming:distance("AAG", "AAA")
  |> expect:equal(_, Ok(1))
}

pub fn non_unique_character_in_second_strand_test() {
  hamming:distance("AAA", "AAG")
  |> expect:equal(_, Ok(1))
}

pub fn same_nucleotides_in_different_positions_test() {
  hamming:distance("TAG", "GAT")
  |> expect:equal(_, Ok(2))
}

pub fn large_distance_test() {
  hamming:distance("GATACA", "GCATAA")
  |> expect:equal(_, Ok(4))
}

pub fn large_distance_in_off_by_one_strand_test() {
  hamming:distance("GGACGGATTCTG", "AGGACGGATTCT")
  |> expect:equal(_, Ok(9))
}

pub fn disallow_first_strand_longer_test() {
  hamming:distance("AATG", "AAA")
  |> expect:equal(_, Error(hamming:Uneven))
}

pub fn disallow_second_strand_longer_test() {
  hamming:distance("ATA", "AGTG")
  |> expect:equal(_, Error(hamming:Uneven))
}
