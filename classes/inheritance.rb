puts



class Publication
	attr_accessor :publisher
end

class Magazine < Publication
	attr_accessor :editor
end

class Newspaper < Magazine
	def title
		"Times"
	end
end

mag = Magazine.new
mag.publisher = "David A. Black"
mag.editor = "Joe Smith"
puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}."

news = Newspaper.new
puts "Mag is published by #{mag.publisher}, and edited by #{mag.editor}. Newspaper has a next title: '#{news.title}'"



puts