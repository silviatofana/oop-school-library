<<<<<<< HEAD
require('./person')

class Teacher < Person
  def initialize(specialization, age, name = 'unknown', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
=======
require_relative './person'

class Teacher < Person
  def initialize(specialization, age, name, parent_permission)
    super(age, name, parent_permission)
>>>>>>> 0fda538e61cc50c8ed32ddcba5033deef5408afe
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
