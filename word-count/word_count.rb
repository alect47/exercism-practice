class Phrase

  def initialize(phrase)
    @phrase = phrase.split(/[^\w-]+/)
  end

  def word_count
    word_hash = Hash.new(0)
    @phrase.each {|word| word_hash[word.downcase] += 1}
    word_hash
  end
end
