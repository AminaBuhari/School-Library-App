require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  def student(age, name, classroom = nil, parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
    @classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
