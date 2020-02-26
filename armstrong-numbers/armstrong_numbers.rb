class ArmstrongNumbers

  def self.include?(num)
    len = num.digits.length
    num.digits.sum {|x| x**len} == num
  end
end
