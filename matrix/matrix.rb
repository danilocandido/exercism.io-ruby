class Matrix
  def initialize(string)
    @matrix = []
    fill_matrix(string)
  end

  def rows
    @matrix
  end

  def columns
    @matrix.transpose
  end

  private

  def fill_matrix(string)
    string.split(/\n/).each do |val|
      @matrix << srt_to_array_of_integers(val)
    end
  end

  def srt_to_array_of_integers(string)
    string.scan(/\d+/).map(&:to_i)
  end
end
