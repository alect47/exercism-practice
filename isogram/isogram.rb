class Isogram
  def initialize(argument)
    @argument = argument
  end

  def self.isogram?(input)
    split_word(input).uniq.length == split_word(input).length
  end

  def self.split_word(input)
    remove_char(input).gsub(/\s+/, "").downcase.split('')
  end

  def self.remove_char(input)
    input.gsub(/[^0-9a-z]/i, '')
  end

end
