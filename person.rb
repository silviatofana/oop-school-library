<<<<<<< HEAD
require './decorator'
require './rental'
=======
require_relative './nameable'
require_relative('./rental')
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

<<<<<<< HEAD
  def initialize(age, name = 'unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
=======
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10_000)
    @name = name
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

<<<<<<< HEAD
  def add_rentals(date, book)
    Rental.new(date, self, book)
  end

  def of_age?
    @age >= 18
  end

  private :of_age?

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end
=======
  def can_use_services?
    @parent_permission || is_of_age?
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, self, book)
  end
  ############ private methods ############

  private

  def of_age?
    @age >= 18
  end
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
end
