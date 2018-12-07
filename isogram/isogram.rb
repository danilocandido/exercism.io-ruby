class Isogram
  attr_reader :verifier

  def self.isogram?(sentence)
    @verifier = Hash.new(0)
    valid_sentence?(sentence)
  end

  class << self
    private

    def valid_sentence?(sentence)
      sentence = sentence.gsub(/[^a-zA-Z]/, '').downcase
      sentence.chars.each do |letter|
        @verifier[letter] += 1
        return false && break if @verifier[letter] > 1
      end
      true
    end
  end
end
