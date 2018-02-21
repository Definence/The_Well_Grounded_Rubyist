puts



# When you call methods like to_s , to_i , and to_f , the result is a new object

# to string
a = "I am already a string!".to_s

# to symbol
# to_sym

# to array
# to_a
def combine_names(firstname, lastname)
  firstname + " " + lastname
end
names = ["David", "Black"]
puts combine_names(*names)

# to integer
# to_i

# to float
# to_f

#to str ?
class Person
  attr_accessor :name
  def to_str
    name
  end
end

david = Person.new
david.name = David
puts "david is named " + david + "."



puts