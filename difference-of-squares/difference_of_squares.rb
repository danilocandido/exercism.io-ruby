class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    value = 1.upto(@number).reduce(:+)
    value ** 2
  end

  def sum_of_squares
    value = 1.upto(@number).map {|n| n ** 2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 4
end
