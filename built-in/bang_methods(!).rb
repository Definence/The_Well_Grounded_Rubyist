puts



# Don’t use ! except in m/m! method pairs
# Don’t equate ! notation with destructive behavior, or vice versa

#safe
foo = "A STRING"    # a string called foo
bar = foo.downcase  # doesn't modify foo; returns a modified string
puts bar            # prints newly created bar
puts foo            # prints unchanged foo

puts

#danger
foo = "A STRING"  # a string called foo
foo.downcase!     # modifies foo itself
puts foo          # prints modified foo



puts