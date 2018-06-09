class Grains

  def self.total
    (1..64).reduce { |sum, num| sum += square(num) }
  end

  def self.square(number)
    unless invalid_number? number
      last_number = 2
      result = 0
  
      3.upto(number).each do |num|
        result = last_number * 2
        last_number = result
      end
      result
    else
      number
    end
  end

  def self.invalid_number?(number)
    raise ArgumentError if number <= 0
    raise ArgumentError if number > 64
    [1, 2].include? number
  end
end

module BookKeeping
  VERSION = 1
end
