class Series

  def initialize(nums)
    @nums = nums.chars
  end

  def slices(num)
    if num > @nums.count
      raise ArgumentError
    else
      @nums.each_cons(num).map {|n| n.join}
    end
  end
end
