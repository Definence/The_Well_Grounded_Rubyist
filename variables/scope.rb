puts



# scope of using
def say_goodbye
	x = 'goodbye'
	puts x
end

def say_hello
	x = 'hello'
	puts x
	say_goodbye
	puts 'Lets check if x remained the same'
	puts x
end

say_hello



puts