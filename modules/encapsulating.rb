puts



# When you’re designing a program and you identify a behavior or set
# of behaviors that may be exhibited by more than one kind of entity or object, you’ve found a good
# candidate for a module
module Stacklike

	def stack
		# The effect of this operator is to set the variable to the specified value—which in
		# this case is a new, empty array—if and only if the variable isn’t already set to something other than
		# nil or false .
		@stack ||= []
	end

	def add_to_stack(obj)
		stack.push(obj)
	end

	def take_from_stack
		stack.pop
	end

end

# As you’ve seen, modules don’t have instances, so you can’t do this
# s.Stacklike.new



puts