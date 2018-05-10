class Complement

  def self.of_dna(dna)
    rna = dna.chars.map{ |item| dna_to_rna[item.to_sym] }.join
    rna.size == dna.size ? rna : ''
  end

  private
    def self.dna_to_rna
      { 'G': 'C', 'C': 'G', 'T': 'A', 'A': 'U' }
    end
end
