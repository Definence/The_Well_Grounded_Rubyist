puts



# Instance variables are only visible to the object to which they belong

class Person

	def set_name(string)
		puts "Setting person's name..."
		@name = string
	end

	def get_name
		puts "Returning the persons name"
		@name
	end

end

joe = Person.new
joe.set_name("Joe")
puts joe.get_name



puts