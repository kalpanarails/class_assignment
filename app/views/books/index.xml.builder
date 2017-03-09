xml.instruct!
xml.books do
	@books.each do |book|
		xml.book do
			xml.name book.name
		xml.author book.author
		xml.yop book.year_of_publication
		end
	end
	end 
		