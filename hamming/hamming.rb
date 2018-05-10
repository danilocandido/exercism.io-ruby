class Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError if dna1.size != dna2.size
    count = 0
    dna1.chars.each_with_index do |item, index|
      count += 1 unless item == dna2[index]
    end
    count
  end
end
