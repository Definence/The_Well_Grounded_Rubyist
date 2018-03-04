puts



class Regexp
  alias __old_match__ match

  def match(string)
    __old_match__(string) || []
  end
end

# will result an undefined method []. to avoid this error we should write smth like above
string = "A test string"
re = /A (sample) string/

substring = re.match(string)[1]
/abc/.match("X")[1]

if re.match(string)
  puts "MATCH"
else
  puts "NOT MATCH"
end



puts