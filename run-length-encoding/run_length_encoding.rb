class RunLengthEncoding

  def self.encode(input)
    input.chars
      .slice_when {|a, b| a != b}
      .map {|piece| piece.length == 1 ? piece : "#{piece.length}#{piece[0]}"}
      .flatten
      .join
  end

  def self.decode(input)
    input.scan(/(\d*)([^0-9])/)
      .map {|a, b| a == '' ? b : b * a.to_i}.join
    end
end
