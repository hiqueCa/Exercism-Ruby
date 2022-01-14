class Complement

  DNA_RNA_EQUIVALENCE = {
    '' => '',
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  def self.of_dna(nucleotides)
    rna_complement = ''

    nucleotides.each_char do |n|
      rna_complement += DNA_RNA_EQUIVALENCE[n]
    end

    rna_complement
  end
end