require_relative 'app'

def navigation
  puts 'Please choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def menu # rubocop:disable Metrics/CyclomaticComplexity
  app = App.new
  loop do
    navigation

    option = gets.chomp.to_i

    case option
    when 1 then app.list_of_book
    when 2 then app.list_people
    when 3 then app.add_person
    when 4 then app.add_book
    when 5 then app.rent_book
    when 6 then app.list_rental
    when 7
      puts "Thank you for using this app \n\n"
      abort
    else
      puts "Invalid selection \n\n"
    end
  end
end

def main
  puts
  puts 'Welcome to the School Library App!'
  menu
  puts 'Thank you for using this app ;)'
end

main
