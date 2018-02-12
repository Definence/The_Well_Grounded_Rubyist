puts



# Classes as objects and message receivers
c = Class.new do
	def say_hello
		puts "Hello!"
	end
end

c = c.new
c.say_hello



puts