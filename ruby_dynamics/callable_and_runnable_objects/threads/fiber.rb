f = Fiber.new do
  puts 'Hi!'
  Fiber.yield
  puts 'Nice day.'
  Fiber.yield
  puts 'Bye!'
end

f.resume
puts 'Back to the Fiber: '
f.resume
puts 'One last message from the fiber: '
f.resume
puts 'That is all!'
# Hi!
# Back to the Fiber:
# Nice day.
# One last message from the fiber:
# Bye!
# That is all!
