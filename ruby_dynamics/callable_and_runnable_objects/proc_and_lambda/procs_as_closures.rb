puts



# [1]>
def multiply_by(m)
  Proc.new {|x| x * m }
end

mult = multiply_by(10)
p mult.call(12) #=> 120


# [2]>
def call_some_proc(pr)
  a = "irrelevant 'a' method scope"
  puts a
  pr.call
end

a = "'a' to be used to Proc block"
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)


# [3]> counter
def make_counter
  n = 0
  Proc.new { n += 1 }
end

c = make_counter
p c.call #=> 1
p c.call #=> 2

d = make_counter
p d.call #=> 1
p c.call #=> 3



puts