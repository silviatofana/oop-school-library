require_relative './nameable'
require_relative('./rental')

class Person < Nameable
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..10_000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
    super()
  end

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
end

