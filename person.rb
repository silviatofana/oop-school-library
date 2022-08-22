require_relative 'corrector'

class Person
  attr_accessor :name, :age, :rentals
  attr_reader :id

  def initialize(age:, name: 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def validate_name
    correct = Corrector.new
    @name = correct.correct_name @name
  end

  private

  def of_age?
    @age >= 18
  end
end
