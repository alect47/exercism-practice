class Phrase

  def initialize(phrase)
    @phrase = phrase.downcase.scan(/\w+'?\w|\w/)
  end

  def word_count
    word_hash = Hash.new(0)
    @phrase.each {|word| word_hash[word] += 1}
    word_hash
  end
end
