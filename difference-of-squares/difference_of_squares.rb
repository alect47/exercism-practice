class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (0..@number).to_a.sum ** 2
  end
end
