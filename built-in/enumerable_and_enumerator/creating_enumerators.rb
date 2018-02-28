puts



e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end

p e.to_a
p e.map { |x| x * 10 }
p e.select { |x| x > 1 }
p e.take(2)

puts

# e = Enumerator.new do |y|
#   (1..3).each {|i| y << i }
# end

e = Enumerator.new do |y|
  puts "Starting up the block!"
  (1..3).each {|i| y << i }
  puts "Exiting the block!"
end
p e.to_a
p e.select {|x| x > 2 }

puts

a = [1,2,3,4,5]
e = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end
p e.take(2)
p a
p e.to_a
p a



puts