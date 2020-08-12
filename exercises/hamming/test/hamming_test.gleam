import hamming
import gleam/should

pub fn empty_strands_test() {
  hamming.distance("", "")
  |> should.equal(Ok(0))
}

pub fn identical_strands_test() {
  hamming.distance("A", "A")
  |> should.equal(Ok(0))
}

pub fn long_identical_strands_test() {
  hamming.distance("GGACTGA", "GGACTGA")
  |> should.equal(Ok(0))
}

pub fn complete_distance_in_single_nucleotide_strands_test() {
  hamming.distance("A", "G")
  |> should.equal(Ok(1))
}

pub fn complete_distance_in_small_strands_test() {
  hamming.distance("AG", "CT")
  |> should.equal(Ok(2))
}

pub fn small_distance_in_small_strands_test() {
  hamming.distance("AT", "CT")
  |> should.equal(Ok(1))
}

pub fn small_distance_test() {
  hamming.distance("GGACG", "GGTCG")
  |> should.equal(Ok(1))
}

pub fn small_distance_in_long_strands_test() {
  hamming.distance("ACCAGGG", "ACTATGG")
  |> should.equal(Ok(2))
}

pub fn non_unique_character_in_first_strand_test() {
  hamming.distance("AAG", "AAA")
  |> should.equal(Ok(1))
}

pub fn non_unique_character_in_second_strand_test() {
  hamming.distance("AAA", "AAG")
  |> should.equal(Ok(1))
}

pub fn same_nucleotides_in_different_positions_test() {
  hamming.distance("TAG", "GAT")
  |> should.equal(Ok(2))
}

pub fn large_distance_test() {
  hamming.distance("GATACA", "GCATAA")
  |> should.equal(Ok(4))
}

pub fn large_distance_in_off_by_one_strand_test() {
  hamming.distance("GGACGGATTCTG", "AGGACGGATTCT")
  |> should.equal(Ok(9))
}

pub fn disallow_first_strand_longer_test() {
  hamming.distance("AATG", "AAA")
  |> should.equal(Error(hamming.Uneven))
}

pub fn disallow_second_strand_longer_test() {
  hamming.distance("ATA", "AGTG")
  |> should.equal(Error(hamming.Uneven))
}
