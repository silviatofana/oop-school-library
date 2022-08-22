require './person'
require './student'
require './teacher'
require './classroom'
require './book'
require './rental'

person = Person.new(18, 'Julianaifionu', false)

first_student = Student.new(22, 'first_classroom', 'Rex')
second_student = Student.new(21, 'first_classroom', 'Prince')
third_student = Student.new(23, 'second_classroom', 'Rose')
p first_student

Teacher.new('Math', 'Muna')

# has-many relationship
first_classroom = Classroom.new('first_classroom')
second_classroom = Classroom.new('second_classroom')
first_classroom.students
second_classroom.students
first_classroom.add_student(first_student)
first_classroom.add_student(second_student)
second_classroom.add_student(third_student)

first_classroom.students
second_classroom.students
first_classroom.students.map(&:name)
first_classroom.students.last.classroom
first_classroom.students.count
second_classroom.students.count

# belongs-to relationship
first_student.classroom
first_student.classroom = first_classroom
second_student.classroom = first_classroom
third_student.classroom = second_classroom
first_student.classroom
first_student.classroom.label
third_student.classroom.label

# has-many relationship
alpha_book = Book.new('Game of thrones', 'George Martin')
alpha_book.rentals.count
alpha_book.add_rental('11-12-2021', person)
alpha_book.add_rental('10-12-2021', person)
alpha_book.rentals
alpha_book.rentals.map(&:date)

alpha_book.rentals.count

# belongs-to relationship
first_rental = Rental.new('5-11-2021', person, alpha_book)
first_rental.book
first_rental.book = alpha_book
first_rental.book
first_rental.book.author

alpha_book.rentals.count

# has-many reationship
second_rental = Rental.new('1-11-2021', person, alpha_book)
person.rentals
person.add_rental('3-11-2021', alpha_book)
person.add_rental('4-11-2021', alpha_book)
person.rentals.map(&:date)

person.rentals.count

# belongs-to relationship
second_rental.person
second_rental.person = person
second_rental.person
second_rental.person.name

person.rentals.first.date
