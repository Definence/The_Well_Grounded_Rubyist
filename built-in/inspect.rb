puts



# generates and displays a string representation of an object?

class Person
  def initialize(name)
    @name = name
  end

  def inspect
    @name
  end
end

david = Person.new("David")
puts david.inspect
# Output: David



puts