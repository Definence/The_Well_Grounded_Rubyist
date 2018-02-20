puts



# def args_unleashed(a,b=1,*c,d,e)
#   puts "Arguments:"
#   p a,b,c,d,e
# end

# the same
def block_args_unleashed
  yield(1,2,3,4,5,6,7)
end

block_args_unleashed do |a,b=1,*c,d,e|
  puts "Arguments:"
  p a,b,c,d,e
end



puts