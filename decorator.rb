<<<<<<< HEAD
class Nameable
  def correct_name
    raise NotImplementedError
  end
end

class Decorator < Nameable
  attr_accessor :nameable

  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @namable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    @nameable.correct_name.slice(0, 10) unless @nameable.correct_name.length <= 10
=======
require_relative './nameable'
class Decorator < Nameable
  def initialize(nameable)
    @nameable = nameable
    super()
  end

  def correct_name
    @nameable.correct_name
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
  end
end
