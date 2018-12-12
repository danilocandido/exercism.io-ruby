class Matrix
  attr_reader :rows

  def initialize(string)
    @rows = fill_matrix(string)
  end

  def columns
    @rows.transpose
  end

  private

  def fill_matrix(string)
    string.each_line.map { |line| matrix_collum(line) }
  end

  def matrix_collum(string)
    string.split.map(&:to_i)
  end
end
