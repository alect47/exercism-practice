class Alphametics
  def self.solve(puzzle)
    # puzzle.gsub(/[^0-9a-z ]/i, '').split('')
    # puzzle.scan(/[\da-z\s]/i).join
    # puzzle.gsub!(/\W+/, '').split('').uniq
    puzzle.gsub!('+', '')
    a = puzzle.split('==')
    b = a[0].split
    # puzzle[0]
  end
end
