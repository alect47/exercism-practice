class Hamming

  def self.compute(strand_1, strand_2)
    arr_1 = strand_1.split('')
    arr_2 = strand_2.split('')
    total = 0

    raise ArgumentError if arr_1.count != arr_2.count

    arr_1.zip(arr_2).each do |ele|
      total += 1 if ele[0] != ele[1]
    end
    total
  end
end
