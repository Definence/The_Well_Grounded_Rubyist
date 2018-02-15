puts



class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  attr_reader :make

  def self.total_count
    @@total_count
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      @make = make
      @@cars[make] += 1
      @@total_count += 1
    else
      raise "No such make: #{make}!"
    end
  end

  def check_makes
    @@cars[make]
  end
end

class Hybrid < Car
  @@total_hybrid_count = 0

  def self.total_count
    @@total_hybrid_count
  end

  def initialize(make)
    if @@makes.include?(make)
      @@cars[make] += 1
      @@total_hybrid_count += 1
    else
      raise "No such make: #{make}!"
    end
  end
end

Car.add_make('Honda')
Car.add_make('Ford')

h_hybrid = Hybrid.new('Honda')
a_hybrid = Hybrid.new('Honda')
h = Car.new('Honda')
a = Car.new('Honda')
e = Car.new('Honda')
f = Car.new('Ford')
h2 = Car.new('Honda')
# will result an error
# x = Car.new("Brand X")

puts "Counting cars of same make as h2 (Honda)..."
puts "There are #{h2.check_makes}."

puts

puts "Counting total cars..."
puts "There are #{Car.total_count}."

puts

puts "Counting total hybrid cars..."
puts "There are #{Hybrid.total_count}."



puts