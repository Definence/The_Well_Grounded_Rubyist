puts



string = "David A. Black"
p string
p string.upcase
p string.downcase
p string.swapcase
p string.capitalize

puts

# розширює стрічку до 25 символів(добавляючи пробіли) з права
p string.rjust(25)
# з ліва
p string.ljust(25)
# вставляє певні символи замість пробілів
p string.rjust(25,'><')
# з обох боків
p string.center(20, "*")

puts

string = "       David A. Black      "
p string
# забирає пробіли з боків
p string.strip
# зліва
p string.lstrip
# зправа
p string.rstrip

puts

string = "David A. Black"
# The chop and chomp methods are both in the business of removing characters from the ends of strings
# chop removes a character unconditionally, whereas chomp removes a target substring if it finds that
# substring at the end of the
string
p string
# видаляє букву з кінця
p string.chop # "David A. Blac"
string = "David A. Black\n"
p string
# видаляє абзац з кінця
p string.chomp
string = "David A. Black"
# видаляє ск з кінця якщо є
p string.chomp('ck')
# видаляє всі символи
p string.clear
p string

puts

string = "(to be named later)"
p string
# замінює стрічку
string.replace("David A. Black")
p string

puts

string = "David A. Black"
# заберає вказані симвволи
p string.delete("abc")
p string
# показує що забрало
p string.delete("^abc")
p string
p string.delete("a-e","^c")

puts

string = "David A. Black"
# шифрування
p string.crypt("34")
p string



puts