puts



class Dog
  attr_reader :age, :dog_years

  def dog_years=(years)
    @dog_years = years
  end

  def age(years)
    @age = years
    self.dog_years = years * 7
  end

  #   If you declare
  # dog_years= private, you can call it with a receiver—as long as the receiver is self
  private :dog_years=
end

rover = Dog.new
rover.age(10)

puts "Rover is #{rover.dog_years} in dog years"



puts