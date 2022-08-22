class Rental
  attr_accessor :date, :book, :person

  def initialize(date, book, person)
    @date = date

    @book = book
    book.rentals << self unless book.rentals.include?(self)

    @person = person
    person.rentals << self unless person.rentals.include?(self)
  end
end
