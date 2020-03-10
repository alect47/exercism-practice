class Complement

  def self.of_dna(nuc)
    hash = {'C': 'G', 'G': 'C', 'T': 'A', 'A': 'U'}

    nuc.split('').map {|n| hash[n.to_sym]}.join
  end
end
