puts



# [1]>
module Secretive
  def name
    '[not available]'
  end
end

module WithTestMethod
  def test_method
    'You are inside :test_method!'
  end
end

class Person
  attr_accessor :name
end

leo = Person.new
leo.name = 'Leonardo'
pavel = Person.new
pavel.name = 'Pavel'

pavel.extend(Secretive)

puts leo.name   #=> Leonardo
puts pavel.name #=> [not available]

Person.extend(WithTestMethod)
puts Person::test_method #=> 'You are inside :test_method!'

# [2]>
module Makers
  def makes
    %w{ Honda Ford Toyota Chevrolet Volvo }
  end
end

class Car
  # extend Makers
end

Car.extend(Makers)

p Car.makes #=> ["Honda", "Ford", "Toyota", "Chevrolet", "Volvo"]



puts