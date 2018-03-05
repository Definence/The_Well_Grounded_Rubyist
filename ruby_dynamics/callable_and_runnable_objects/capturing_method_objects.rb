# [1]> [object].method
class C
  def talk
    puts "Method-grabbing test! self is #{self}."
  end
end

c = C.new
meth = c.method(:talk)
meth.call            #=> Method-grabbing test! self is #<C:0x0055bae6582d60>.
c.talk               #=> Method-grabbing test! self is #<C:0x0055bae6582d60>.


# [2]> unbind
class D < C
end

d = D.new
unbound = meth.unbind
unbound.bind(d).call #=> Method-grabbing test! self is #<D:0x00560795a16100>.


# [3]> instance_method
unbound = C.instance_method(:talk)
unbound.bind(d).call #=> Method-grabbing test! self is #<D:0x00562b1882b6f0>.


# [4]> The rationale for methods as objects
class A
  def a_method
    puts 'Definition in class A'
  end
end

class B < A
  def a_method
    puts 'Definition in class B (subclass of A)'
  end
end

class C < B
  def call_original
    A.instance_method(:a_method).bind(self).call
  end
end

c = C.new
c.a_method                                #=> Definition in class B (subclass of A)
A.instance_method(:a_method).bind(c).call #=> Definition in class A
c.call_original                          #=> Definition in class A
