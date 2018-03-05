# [1]>
p eval('2+2') #=> 4


# [2]>
# print 'Method name: '
# m = gets.chomp
# eval("def #{m}; puts 'Hi!'; end")
# eval(m) #=> Hi!


# [3]> Binding
def use_a_binding(b)
  eval('puts str', b)
end
str = "I'm a string in top-level binding!"
use_a_binding(binding) #=> I'm a string in top-level binding!


# [4]> The instance_eval method
class C
  def initialize
    @x = 1
  end
end

c = C.new
c.instance_eval { puts @x } #=> 1


# [5]> The instance_exec method (Can take arguments unlike instance_eval)
string = 'A sample string'
string.instance_exec('s') { |delim| p self.split(delim) } #=> ["A ", "ample ", "tring"]


# [6]>
class Person
  def initialize(&block)
    instance_eval(&block)
  end

  def name(name = nil)
    @name ||= name
  end

  def age(age = nil)
    @age ||= age
  end
end

michael = Person.new do
  name 'Michael'
  age 20
end

puts michael.name #=> Michael
puts michael.age  #=> 20


# [7]> Using class_eval (a.k.a. module_eval)
c = Class.new
c.class_eval do
  def some_method
    puts 'You are inside some method.'
  end
end

c_instance = c.new
c_instance.some_method #=> You are inside some method.


# [8]> Scope
var = 'initialized variable'
b = Class.new
b.class_eval { define_method('test') { puts var } }
b.new.test #=> initialized variable
