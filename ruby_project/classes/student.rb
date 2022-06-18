require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  public

  def student(age, name, parent_permission)
    super(age, name, parent_permission)
    @classroom = classroom
    @classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
