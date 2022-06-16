#!/usr/bin/env ruby 

require_relative 'Classes/Person'
require_relative 'Classes/Student'
require_relative 'Classes/Teacher'

student = Student.new(12, "Berry", true, "Agatha")


puts student.classroom
puts student.name
puts student.id

puts student.age


