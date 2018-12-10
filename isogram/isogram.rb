class Isogram
  def self.isogram?(sentence)
    valid_sentence?(sentence)
  end

  class << self
    private

    def valid_sentence?(sentence)
      verifier = Hash.new(0)
      sentence = sentence.scan(/\w+/).join.downcase
      sentence.chars.each do |letter|
        verifier[letter] += 1
        return false if verifier[letter] > 1
      end
      true
    end
  end
end
