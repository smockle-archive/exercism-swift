//Solution goes in Sources

let dnaNucleotides: [String] = [ "A", "C", "G", "T" ]
let rnaNucleotides: [String] = [ "U", "G", "C", "A" ]
let validNucleotides = Set(dnaNucleotides).union(Set(rnaNucleotides))

class SingleNucleotide {
    var nucleotide: String
    init?(_ nucleotide: String) {
        guard validNucleotides.contains(nucleotide) else {
            return nil
        }
        self.nucleotide = nucleotide
    }
    func complementOfDNA() -> String? { // TODO: If Swift supports string literal types, narrow this return type
        guard let index = dnaNucleotides.firstIndex(of: self.nucleotide) else {
            return nil
        }
        guard rnaNucleotides.indices.contains(index) else {
            return nil
        }
        return rnaNucleotides[index]
    }
}

enum NucleotideError: Error {
    case invalidCharacter
}

class Nucleotide {
    var nucleotides: [SingleNucleotide]
    init(_ nucleotides: String) throws {
        self.nucleotides = try nucleotides.map { nucleotide in
            guard let singleNucleotide = SingleNucleotide(String(nucleotide)) else {
                throw NucleotideError.invalidCharacter
            }
            return singleNucleotide
        }
    }
    func complementOfDNA() throws -> String {
        return try self.nucleotides.map { singleNucleotide in
            guard let complementOfDNA = singleNucleotide.complementOfDNA() else {
                throw NucleotideError.invalidCharacter
            }
            return complementOfDNA
        }.joined()
    }
}
