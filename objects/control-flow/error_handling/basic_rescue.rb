puts



print "Enter a number: "
n = gets.to_i
begin
  result = 100 / n
rescue
# just for one kind of errors
# rescue ZeroDivisionError
  puts "Your number didn't work. Was it zero???"
  exit
end
puts "100/#{n} is #{result}."



puts