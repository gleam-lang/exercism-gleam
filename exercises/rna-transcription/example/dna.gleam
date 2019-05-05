import rna
import list

pub enum Nucleotide =
  | Adenine
  | Cytosine
  | Guanine
  | Thymine

pub fn to_rna(dna_strand) {
  list:map(dna_strand, fn(base) {
    case base {
    | Guanine -> rna:Cytosine
    | Cytosine -> rna:Guanine
    | Thymine -> rna:Adenine
    | Adenine -> rna:Uracil
    }
  })
}
