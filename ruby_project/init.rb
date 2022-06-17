# Decorators in action

require_relative "classes/capitalizeDecorator"
require_relative 'classes/nameable'
require_relative 'classes/trimmerDecorator'
require_relative 'classes/person'

person = Person.new(22, 'maximilianus')
puts person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
puts capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
puts capitalizedTrimmedPerson.correct_name
