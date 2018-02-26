puts



t = Time.now
p t
p t.strftime("%m-%d-%y")

# %Y Year (four digits)
# %y Year (last two digits)
# %b, %B Short month, full month
# %m Month (number)
# %d Day of month (left-padded with zeros)
# %e Day of month (left-padded with blanks)
# %a, %A Short day name, full day name
# %H, %I Hour (24-hour clock), hour (12-hour clock)
# %M Minute
# %S Second
# %c Equivalent to "%a %b %d %H:%M:%S %Y"
# %x Equivalent to "%m/%d/%y"

puts

p t.strftime("Today is %x")
p t.strftime("Otherwise known as %d-%b-%y")
p t.strftime("Or even day %e of %B, %Y.")
p t.strftime("The time is %H:%m.")

puts

# p require 'date'
p require 'time'

p Date.today.rfc2822
p DateTime.now.httpdate



puts