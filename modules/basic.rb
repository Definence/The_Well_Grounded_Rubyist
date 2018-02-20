puts



# Like classes, modules are bundles of methods and constants. Unlike classes, modules don’t have
# instances; instead, you specify that you want to add the functionality of a particular module to that of a
# class or of a specific object.

# class is a subclass of
# the Module class, so every class object is also a module object

module MyFirstModule

	def say_hello
		puts "Hello"
	end

end

# The ModuleTester object calls the appropriate method ( say_hello ) and outputs Hello . Notice that
# say_hello isn’t defined in the class of which the object is an instance. Instead, it’s defined in a
# module that the class mixes in.

class ModuleTester
	include MyFirstModule
end

mt = ModuleTester.new
mt.say_hello



puts