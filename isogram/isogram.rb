class Isogram
  attr_reader :verifier
  def self.isogram?(sentence)
    @verifier = Hash.new(0)
    verify_sentence(sentence)
    repeated?
  end

  class << self
    private

    def verify_sentence(sentence)
      sentence = sentence.gsub(/[^a-zA-Z]/, '')
      sentence.downcase.chars.each { |letter| @verifier[letter] += 1 }
      @verifier
    end

    def repeated?
      count = @verifier.values.select { |n| n > 1 }.count
      count.zero? ? true : false
    end
  end
end
