class Matrix
  attr_reader :rows, :columns

  def initialize(string)
    @nums = string.split("\n").map do |nums|
      nums.split
    end
    @rows = @nums.map do |row|
      row.map do |num|
        num.to_i
      end
    end
    @columns = @rows.transpose
  end


end
