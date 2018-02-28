puts



# first
p [1,2,3,4].first
p (1..10).first
a = {1 => 2, "one" => "two"}.first
p a

puts

class Die
  include Enumerable
  def each
    loop do
      yield rand(6) + 1
    end
  end
end

puts "Welcome to 'You Win If You Roll a 6'!"
d = Die.new
d.each do |roll|
  puts "You rolled a #{roll}."
  if roll == 6
    puts "You win!"
    break
  end
end



puts