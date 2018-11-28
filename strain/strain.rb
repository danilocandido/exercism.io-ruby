class Array
  def keep
    values = []
    self.each do |val|
      values << val if yield(val)
    end
    values
  end

  def discard
    values = []
    self.each do |val|
      values << val unless yield(val)
    end
    values
  end
end
