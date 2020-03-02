class Luhn

  def self.valid?(num)
    total = 0
    string = num.downcase.gsub(/\s+/, "")
    return false if string.length < 2 || !(/\A[+-]?\d+\z/.match?(string))
    dig = string.split('').reverse
    dig.each_with_index do |val, i|
      new_val = val.to_i
      if i.odd?
        new_val *= 2
        new_val -= 9 if new_val > 9
        total += (new_val)
      else
        total += new_val
      end
    end
    total % 10 == 0
  end
end
