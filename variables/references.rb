puts



def say_goodbye
	str = "Hello"
	abc = str
	str.replace("Goodbye")
	puts str
	puts abc
end

str = "Hello"
abc = str

puts 'Begin:'
puts str
puts abc
puts

str.replace("Goodbye")

puts "After replacing 'Goodbye':"
puts str
puts abc
puts

puts 'Def method:'
say_goodbye
puts



puts