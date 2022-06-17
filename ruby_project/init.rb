# Decorators in action

require_relative "classes/capitalizeDecorator"
require_relative 'classes/nameable'
require_relative 'classes/trimmerDecorator'
require_relative 'classes/person'

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed.correct_name
