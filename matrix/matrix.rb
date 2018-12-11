class Matrix
  def initialize(string)
    @matrix = fill_matrix(string)
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

  private

  def fill_matrix(string)
    string.each_line.map { |line| srt_to_array_of_integers(line) }
  end

  def srt_to_array_of_integers(string)
    string.scan(/\d+/).map(&:to_i)
  end
end
