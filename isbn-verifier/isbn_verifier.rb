class IsbnVerifier
  def self.valid?(string)
    return false if string&.empty?

    @digit = string[-1]
    @numbers = string[0..-2].scan(/\d/)

    verified?
  end

  class << self
    private

    def verified?
      return false if numbers.size != 9
  
      x10 = digit
      x1, x2, x3, x4, x5, x6, x7, x8, x9 = numbers
  
      (x1 * 10 + x2 * 9 + x3 * 8 + x4 * 7 + x5 * 6 + x6 * 5 + x7 * 4 + x8 * 3 + x9 * 2 + x10 * 1) % 11 == 0
    end

    def digit
      @digit == 'X' ? 10 : @digit.to_i
    end

    def numbers
      @numbers.map(&:to_i)
    end
  end
end
