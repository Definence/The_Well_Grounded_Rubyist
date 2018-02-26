puts



def foo(regular, hash={})
    puts "regular: #{regular}"
    puts "hash: #{hash}"
    puts "a: #{hash[:a]}"
    puts "b: #{hash[:b]}"
end

foo("regular argument", a: 12, :b => 13)



puts