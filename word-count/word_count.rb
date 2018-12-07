class Phrase
  attr_reader :words

  def initialize(phrase)
    @words = phrase.downcase.scan(/\b[\w']+\b/)
  end

  def word_count
    verifier = Hash.new(0)
    @words.each { |word| verifier[word] += 1 }
    verifier
  end
end
