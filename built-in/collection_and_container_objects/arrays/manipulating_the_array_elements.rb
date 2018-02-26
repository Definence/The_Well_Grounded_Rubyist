puts



a = []
a[0] = "first"
p a

a = ['fdsf', 'aaa', 'ggg', 'bbb', 'iii']
p a[3,2]

array = ['the', 'dog', 'ate', 'the', 'cat']
articles = array.values_at(0, 3)
p articles

puts

p "Unshift 0"
a = [1,2,3,4]
p a
a.unshift(0)
p a

puts

p "Push 5"
a = [1,2,3,4]
p a
a.push(5)
p a

p "<<"
a = [1,2,3,4]
a << 5
p a

p "push 6,7,8"
a = [1,2,3,4,5]
a.push(6,7,8)
p a

puts

# erasing array elements
a = [1,2,3,4,5]
print "The original array: "
p a
popped = a.pop
print "The popped item: "
puts popped
print "The new state of the array: "
p a
shifted = a.shift
print "The shifted item: "
puts shifted
print "The new state of the array: "
p a



puts