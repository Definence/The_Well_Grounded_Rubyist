puts



obj = Object.new

def obj.one_arg(x)
	puts "I require one and only one argument!"
end

def obj.multi_args(*x)
	puts "I can take zero or more arguments!"
end

def two_or_more(a,b,*c)
	puts "I require two or more arguments!"
	puts "And sure enough, I got: "
	puts
	p a, b, c
	puts
	print a, b, c
	puts
	puts
	puts a, b, c
end

# if c isnt assigned it takes a default value
def default_args(a,b,c=1)
	puts "Values of variables: ",a,b,c
end

def mixed_args(a,b,*c,d)
	puts "Arguments:"
	p a,b,c,d
end

def args_unleashed(a,b=1,*c,d,e)
	puts "Arguments:"
	p a,b,c,d,e
end

# not valid method
# def broken_args(x,*y,z=1)
# end

# will result in error(wrong arguments number)
# obj.one_arg(1,2,3)

# valid methods
# obj.multi_args(1,2,3)
# two_or_more(1,2,3,4,5)
# default_args(3,2)
# mixed_args(1,2,3,4,5)



puts