<<<<<<< HEAD
require './app'

def main
  app = App.new
  app.start_console
end

def list_of_options
  puts
  puts 'Choose an option by entering a number: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def option(input)
  case input
  when '1'
    list_all_books
  when '2'
    list_all_persons
  when '3'
    create_person
  when '4'
    create_book
  when '5'
    create_rental
  when '6'
    list_all_rentals
  else
    puts 'Please enter a number between 1 and 7.'
  end
end

main
=======
require_relative './person'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
require_relative './book'
require_relative './rental'

person1 = Person.new(23, 'omar')
person2 = Person.new(85, 'Bob')
person1.add_rental(Book.new('Good Night', 'yep'), '2022-01-01')

book1 = Book.new('How to be sucess', 'omar salem')
book2 = Book.new('The 7 habits', 'John wick')
book2.add_rental(Person.new(25, 'wilson'), '2021-5-4')

Rental.new('2018-12-02', person1, book1)
Rental.new('2012-12-31', person2, book1)

p person1.rentals.count # 2
p person1.rentals.map(&:date) # ["2022-01-01", "2018-12-02"]
p book2.rentals.count # 1
p book1.rentals.count # 2
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
