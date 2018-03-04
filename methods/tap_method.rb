puts



p "Hello there!".tap {|string| puts string.upcase }.reverse

string = "Hello there!"
string.gsub!(/zzz/, "xxx")
p string.reverse!



puts