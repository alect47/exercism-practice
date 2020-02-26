class Array
  def keep
    arr = []
    self.each do |num|
      arr << num if yield(num)
    end
    arr
  end

  def discard
    arr = []
    self.each do |num|
      arr << num if !yield(num)
    end
    arr
  end
end
