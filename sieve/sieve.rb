class Sieve
  
  def initialize(number)
    @number = number
  end

  def primes 
    calc_sieve(2.upto(@number).to_a)
  end

  private
    def calc_sieve(range_numbers, init_num = 2)
      return range_numbers if range_numbers.empty?
      return range_numbers if init_num == @number

      range_numbers.reject! { |n| n != init_num && n % init_num == 0 }
      calc_sieve(range_numbers, init_num + 1)
    end
end

module BookKeeping
  VERSION = 1
end
