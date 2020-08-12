import rna
import dna
import gleam/should

pub fn guanine_to_cytosine_test() {
  [dna.Guanine]
  |> dna.to_rna
  |> should.equal(_, [rna.Cytosine])
}

pub fn cytosine_to_guanine_test() {
  [dna.Cytosine]
  |> dna.to_rna
  |> should.equal(_, [rna.Guanine])
}

pub fn thymidine_to_adenine_test() {
  [dna.Thymine]
  |> dna.to_rna
  |> should.equal(_, [rna.Adenine])
}

pub fn adenine_to_uracil_test() {
  [dna.Adenine]
  |> dna.to_rna
  |> should.equal(_, [rna.Uracil])
}

pub fn strand_test() {
  let dna_strand = [
    dna.Adenine,
    dna.Cytosine,
    dna.Guanine,
    dna.Thymine,
    dna.Guanine,
    dna.Guanine,
    dna.Thymine,
    dna.Cytosine,
    dna.Thymine,
    dna.Thymine,
    dna.Adenine,
    dna.Adenine,
  ]

  let rna_strand = [
    rna.Uracil,
    rna.Guanine,
    rna.Cytosine,
    rna.Adenine,
    rna.Cytosine,
    rna.Cytosine,
    rna.Adenine,
    rna.Guanine,
    rna.Adenine,
    rna.Adenine,
    rna.Uracil,
    rna.Uracil,
  ]

  dna_strand
  |> dna.to_rna
  |> should.equal(_, rna_strand)
}
