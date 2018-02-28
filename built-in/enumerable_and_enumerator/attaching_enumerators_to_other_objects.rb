puts



names = %w{ David Black Yukihiro Matsumoto }
e = names.enum_for(:select)

e.each { |n| p n.include?('a') }

e = names.enum_for(:inject, "Names: ")



puts