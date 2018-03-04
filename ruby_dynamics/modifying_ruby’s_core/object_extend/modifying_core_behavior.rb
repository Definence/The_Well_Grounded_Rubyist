puts



module GsubBangModifier
  def gsub!(*args, &block)
    super || self
  end
end

str = 'Hello there!'
str.extend(GsubBangModifier)
str.gsub!(/zzz/, 'abc').reverse!
puts str #=> !ereht olleH



puts