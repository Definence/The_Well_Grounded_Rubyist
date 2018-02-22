puts



string = "Ruby is a cool language."

p string.include?("Ruby")

p string.include?("English")

p string.start_with?("Ruby")

p string.end_with?("!!!")

p string.empty?

p "".empty?

p string.size

p string.count("a")

p string.count("g-m")

p string.count("A-Z")

p string.count("aey. ")

p string.count("^g-m")

p string.index("cool")

p string.index("l")

# остання зустрічаюча
p string.rindex("l")

# показує цифровий код букви
p "a".ord

# you will get a code of first char
p "abc".ord

# ord reverse
p 97.chr # => a



puts