class Array

  def sum
    self.reduce(0) { |sum, num| sum += num }
  end

  def square
    self.map { |n| n * n }
  end

  def square!
    self.map! { |n| n * n }
  end

end
