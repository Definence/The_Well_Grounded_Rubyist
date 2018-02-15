puts



class C
  def x
    puts "Class C, method x:"
    puts self
  end
  puts "Just started class C:"
  puts self
  module M
    puts "Nested module C::M:"
    puts self
  end
  puts "Back in the outer level of C:"
  puts self
end

c = C.new
c.x

puts
puts "That was a call to x by: #{c}"
#<C:0x00000101b381a0> - instance of C
puts

obj = Object.new

def obj.show_me
  puts "Inside singleton method show_me of #{self}"
end

obj.show_me
puts "Back from call to show_me by #{obj}"



puts