class Series
  attr_reader :numbers_as_string

  def initialize(numbers_as_string)
    @numbers_as_string = numbers_as_string
    @numbers = numbers_as_string.scan(/\d/)
  end

  def slices(size)
    raise ArgumentError if size > @numbers_as_string.size

    result = []
    @numbers.each_with_index do |_, i|
      value = numbers_as_string[i...(i+size)]
      result << value if value.size == size
    end
    result
  end
end
