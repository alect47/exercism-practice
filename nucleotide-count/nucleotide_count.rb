class Nucleotide
  attr_reader :nucleotides

  def initialize(nucleotides)
    @nucleotides = nucleotides
  end

  def self.from_dna(string)
    raise ArgumentError unless string.chars.all? {|char| ['A', 'T', 'C', 'G'].include?(char)}
    new(string)
  end

  def count(letter)
    @nucleotides.count(letter)
  end

  def histogram
    hash = { 'A' => 0, 'T' => 0, 'C' => 0, 'G' => 0 }
    @nucleotides.chars.each do |char|
      hash[char] += 1
    end
    hash
  end

end
