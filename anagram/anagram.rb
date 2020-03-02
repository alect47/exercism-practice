class Anagram

  def initialize(word)
    @word = word
  end


  def match(arr)
    new_arr = []
    arr.each do |n|
      if @word.downcase.chars.sort.join == n.downcase.chars.sort.join && @word.downcase != n.downcase
        new_arr << n
      end
    end
    new_arr
  end
end
