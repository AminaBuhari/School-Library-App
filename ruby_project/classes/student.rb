require_relative './person'
require_relative './classroom'

class Student < Person
  attr_reader :classroom

  def student(age, _name, classroom = nil)
    super(age, { name: 'unknown', parent_permission: true })
    @classroom = classroom
    @classroom.add_student(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯\(ツ)/¯'
  end
end
