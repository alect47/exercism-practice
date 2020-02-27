class SumOfMultiples

  def initialize(*multiples)
    @multiples = multiples
  end

  def to(num)
    arr = []
    (1..num-1).each do |n|
      @multiples.each do |multiple|
        arr << n if n % multiple == 0
      end
    end
    arr.uniq.sum
  end
end
