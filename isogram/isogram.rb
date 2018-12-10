class Isogram
  def self.isogram?(sentence)
    valid_sentence?(sentence)
  end

  class << self
    private

    def valid_sentence?(sentence)
      sentence = sentence.scan(/\w+/).join.downcase
      sentence.chars == sentence.chars.uniq
    end
  end
end
