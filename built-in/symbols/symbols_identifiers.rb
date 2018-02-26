puts



s = :x
p s

# will result a long list of symbols(more than 3,000 symbols)
# p Symbol.all_symbols
p Symbol.all_symbols.size
abc = 1
p Symbol.all_symbols.size
# search
p Symbol.all_symbols.grep(/abc/)
p Symbol.all_symbols.include?(:abc)

abc = :my_symbol
p Symbol.all_symbols.size
p Symbol.all_symbols.grep(/my_symbol/)

qazqaz = 1 # will add a symbol to its list




puts