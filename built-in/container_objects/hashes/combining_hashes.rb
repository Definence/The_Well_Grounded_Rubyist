puts



h1 = {"Smith" => "John",
      "Jones" => "Jane"}
h2 = {"Smith" => "Jim",
      "Marley" => "Bob"}

# won't update h1
h3 = h1.merge(h2)
puts h1, h3

# will update h1
h1.update(h2)
puts h1



puts