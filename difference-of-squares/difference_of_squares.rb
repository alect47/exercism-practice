class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (0..@number).sum ** 2
  end

  def sum_of_squares
    (0..@number).sum {|n| n ** 2}
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
