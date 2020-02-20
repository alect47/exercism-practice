class Grains

  def self.square(num)
    if num < 1 || num > 64
      raise ArgumentError
    elsif num == 1
      num
    else
      expo = (num - 1)
      2 ** expo
    end
  end

  def self.total
    (2 ** 64) + 1
  end
end
