puts



# [1]>
up = Proc.new {|x| puts x.upcase }
%w{ Michael Pavel Leonardo }.each(&up)
# MICHAEL
# PAVEL
# LEONARDO



puts