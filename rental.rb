class Rental
<<<<<<< HEAD
  attr_accessor :date, :person, :book
=======
  attr_accessor :person, :book, :date
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe

  def initialize(date, person, book)
    @date = date
    @person = person
<<<<<<< HEAD
    @book = book
    person.rentals << self
=======
    person.rentals << self
    @book = book
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
    book.rentals << self
  end
end
