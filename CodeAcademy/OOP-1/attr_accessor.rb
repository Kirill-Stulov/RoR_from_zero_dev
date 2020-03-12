# attr_accessor/reader/writer  what and how to use
# https://www.youtube.com/watch?v=C4O7bcbItw4  best!

#Example of attr use
class Book
	attr_reader :title, :author

	def initialize(title, author)
		@title = title
		@author = author
	end
end

book = Book.new("Ruby Deep Dive", "Jesus Castello")

p book.title
p book.author



# https://www.youtube.com/watch?v=QX8LYOJyfvg    
# https://www.youtube.com/watch?v=PBqNK_G_asQ
# https://www.youtube.com/watch?v=1jZzuJm9nuc