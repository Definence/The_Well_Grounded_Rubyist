puts


class C

  puts "1 Just inside class definition block. Here's self:"
  p "1 #{self}"
  @v = "1 I am an instance variable at the top level of a class body."
  puts "1 And here's the instance variable @v, belonging to #{self}:"
  p @v

  def show_var
    puts
    puts "2 Inside an instance method definition block. Here's self:"
    p "2 #{self}"
    puts "2 And here's the instance variable @v, belonging to #{self}:"
    p @v
    puts
  end

end

c = C.new
c.show_var


puts