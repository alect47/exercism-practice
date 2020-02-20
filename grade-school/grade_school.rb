class School
  attr_reader :everyone

  def initialize()
    @everyone = Hash.new {|h,k| h[k] = [] }
  end

  def students(grade)
    @everyone[grade].sort
  end

  def add(name, grade)
    @everyone[grade] << name
  end

  def students_by_grade
    @everyone.sort.map {|grade, students| {grade: grade, students:students.sort}}
  end
end
