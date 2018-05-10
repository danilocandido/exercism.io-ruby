class Pangram
  class << self
    def pangram?(phrase)
      ordered_string = phrase.gsub(/[^a-zA-Z]/, "").downcase.chars.uniq.sort.join
      ordered_string.eql?( [*'a'..'z'].join )
    end
  end
end

module BookKeeping
  VERSION = 6
end
