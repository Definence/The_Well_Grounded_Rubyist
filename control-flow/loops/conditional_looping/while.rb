puts



# перший приклад перевіряє умову і робить код
# другий приклад спочатку робить код, а потім перевіряє умову

n = 1
while n < 11
  puts n
  n = n + 1
end

puts "Done!"

# do_something while some_condition

# the same result
n = 1
begin
  puts n = n + 1
end while n < 11

puts "Done!"



puts