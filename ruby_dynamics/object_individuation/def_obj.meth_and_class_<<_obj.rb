puts



# [1]>
str = 'I am a string'
class << str
  def twice
    self + ' ' + self
  end
end
p str.twice #=> "I am a string I am a string"


# [2]>
class Person
  class << self
    def say_somethind
      puts 'ha ha, classic'
    end
  end
end

Person.say_somethind  #=> ha ha, classic
Person::say_somethind #=> ha ha, classic


# [3]> Constants resolved differently
N = 1
obj = Object.new
class << obj
  N = 2
end

def obj.a_method
  puts N
end

class << obj
  def another_method
    puts N
  end
end

obj.a_method       #=> 1
obj.another_method #=> 2



puts