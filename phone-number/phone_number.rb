class PhoneNumber

  def self.clean(number)
    num = number.tr('^0-9', '')
    if num.length == 10 && num[0].to_i > 1 && num[3].to_i > 1
      num
    elsif num.length == 11 && num[0] == "1" && num[1].to_i > 1 && num[4].to_i > 1
      num[1..-1]
    end
  end
end
